//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/5/17.
//  Copyright © 2017 MacroHard. All rights reserved.
//

import Foundation

func add(args:[String]) -> Double {
    var sum:Double = 0.0
    for arg in args {
        sum += Double(arg)!
    }
    return sum
}

func sub(args:[String]) -> Double {
    var sum:Double = Double(args[0])!
    for ind in 1...args.count - 1 {
        sum -= Double(args[ind])!
    }
    return sum
}

func mult(args:[String]) -> Double {
    var sum:Double = Double(args[0])!
    for ind in 1...args.count - 1 {
        sum = sum * Double(args[ind])!
    }
    return sum
}

func div(args:[String]) -> Double {
    var sum:Double = Double(args[0])!
    for ind in 1...args.count - 1 {
        sum = sum / Double(args[ind])!
    }
    return sum
}

func mod(args:[String]) -> Double {
    var sum:Double = Double(args[0])!
    for ind in 1...args.count - 1 {
        let i = Double(args[ind])!
        while i < sum {
            sum = sum - i
        }
    }
    return sum
}

func fact(arg:Int) -> Int {
    var sum:Int = 1
    for i in 1...arg {
        sum = sum * i
    }
    return sum
}

func avg(args:[String]) -> Double {
    var sum:Double = 0;
    for arg in args {
        sum = sum + Double(arg)!
    }
    return sum / Double(args.count)
}

var args:[String] = CommandLine.arguments
let op:String = args[args.count - 1]
args.remove(at: CommandLine.arguments.count - 1)
args.remove(at: 0)
var res:Double = 0.0
switch op {
    case "count": res = Double(args.count)
        break;
    case "avg":   res = avg(args:args)
        break;
    case "fact":  res = Double(fact(arg:Int(args[0])!))
        break;
    case "add":   res = add(args:args)
        break;
    case "sub":   print("Sub");res = sub(args:args)
        break;
    case "mult":  res = mult(args:args)
        break;
    case "div":   res = div(args:args)
        break;
    case "mod":   res = mod(args:args)
        break;
    default: res = -1
}
print("Result: \(res)")
