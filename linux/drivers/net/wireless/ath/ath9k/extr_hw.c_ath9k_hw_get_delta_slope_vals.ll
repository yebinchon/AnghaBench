; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_delta_slope_vals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_get_delta_slope_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@COEF_SCALE_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_get_delta_slope_vals(%struct.ath_hw* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 31, i32* %9, align 4
  br label %11

11:                                               ; preds = %22, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = ashr i32 %15, %16
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %25

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  br label %11

25:                                               ; preds = %20, %11
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @COEF_SCALE_S, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 14, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @COEF_SCALE_S, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = shl i32 1, %34
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @COEF_SCALE_S, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %37, %40
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 16
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
