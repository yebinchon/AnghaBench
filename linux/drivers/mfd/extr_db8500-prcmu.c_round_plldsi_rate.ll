; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_round_plldsi_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_round_plldsi_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_HDMICLK = common dso_local global i32 0, align 4
@MIN_PLL_VCO_RATE = common dso_local global i64 0, align 8
@MAX_PLL_VCO_RATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @round_plldsi_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @round_plldsi_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load i32, i32* @PRCMU_HDMICLK, align 4
  %9 = call i64 @clock_rate(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* %5, align 8
  store i64 7, i64* %6, align 8
  br label %11

11:                                               ; preds = %87, %1
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %90

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %2, align 8
  %22 = mul i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @do_div(i32 %24, i64 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 6, i32* %7, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 255, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MIN_PLL_VCO_RATE, align 8
  %46 = mul i64 %44, %45
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @MAX_PLL_VCO_RATE, align 8
  %51 = mul i64 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %35
  br label %87

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @do_div(i32 %58, i64 %59)
  %61 = load i64, i64* %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i64, i64* %3, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %90

72:                                               ; preds = %57
  %73 = load i64, i64* %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  %77 = load i64, i64* %5, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load i64, i64* %2, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %80, %82
  store i64 %83, i64* %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %6, align 8
  br label %11

90:                                               ; preds = %71, %17
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i64 @clock_rate(i32) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
