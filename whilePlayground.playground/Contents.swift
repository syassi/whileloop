//: Playground - noun: a place where people can play
// 参照：https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158


import UIKit

//ループ文の練習

var n = 0

while n < 3 { // 変数『n』が『3』未満の場合にループ処理を行います。
    print(n)
    n = n + 1
}



while false {
    // trueにすると無限ループになるので、クラッシュします。
    print("実行！")
}

repeat {
    print("実行！")
} while false

print("- repeat -")
var i = 0
repeat {
    print(i)
    i += 1
} while i < 0

print("- while -")
i = 0
while i < 0 {
    print(i)
    i += 1
}

print("-------")
// ちょっと前のSwiftではこう書いてました。
/*
do {
    print("実行されました！")
} while false
*/


/////////////////////////////

//参照渡し、値渡し

func fNormal(_ a: Int) ->Int {
    var f = a
    f = 20
    return f
}
var a = 5
fNormal(a)
print(a)

func fAddress(_ a: inout Int) ->Int {
    a = 20
    return a
}
a = 5
fAddress(&a)
print(a)

