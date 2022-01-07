; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_mt9v011_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v011.c_calc_mt9v011_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calc_mt9v011_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_mt9v011_gain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 2047
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 2047, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 1023
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  store i32 3, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sdiv i32 %19, 16
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 511
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %5, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load i32, i32* %2, align 4
  %29 = icmp sgt i32 %28, 255
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  store i32 3, i32* %4, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %5, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %2, align 4
  %35 = icmp sgt i32 %34, 127
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 7
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %3, align 4
  %50 = shl i32 %49, 9
  %51 = add nsw i32 %48, %50
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
