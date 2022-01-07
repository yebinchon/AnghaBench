; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_hash_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_hash_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @hash_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %2, align 8
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 2
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 4
  %17 = xor i32 %14, %16
  %18 = load i32, i32* %3, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %2, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 2
  %27 = xor i32 %24, %26
  %28 = load i32, i32* %3, align 4
  %29 = xor i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %2, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 6
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %34, %35
  %37 = load i32, i32* %3, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %9
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %6

42:                                               ; preds = %6
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 63
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
