; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_testio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_mac8390_testio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACCESS_32 = common dso_local global i32 0, align 4
@ACCESS_16 = common dso_local global i32 0, align 4
@ACCESS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @mac8390_testio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac8390_testio(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 -1516194384, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @nubus_writel(i32 %6, i64 %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @nubus_readl(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ACCESS_32, align 4
  store i32 %15, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  store i32 -977218096, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @word_memcpy_tocard(i64 %17, i32* %4, i32 4)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @word_memcpy_fromcard(i32* %5, i64 %19, i32 4)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ACCESS_16, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @ACCESS_UNKNOWN, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %24, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @nubus_writel(i32, i64) #1

declare dso_local i32 @nubus_readl(i64) #1

declare dso_local i32 @word_memcpy_tocard(i64, i32*, i32) #1

declare dso_local i32 @word_memcpy_fromcard(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
