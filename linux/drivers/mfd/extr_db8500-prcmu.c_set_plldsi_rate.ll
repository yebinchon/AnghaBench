; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_plldsi_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_set_plldsi_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_HDMICLK = common dso_local global i32 0, align 4
@MIN_PLL_VCO_RATE = common dso_local global i64 0, align 8
@MAX_PLL_VCO_RATE = common dso_local global i64 0, align 8
@PRCM_PLL_FREQ_D_SHIFT = common dso_local global i64 0, align 8
@PRCM_PLL_FREQ_R_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PRCM_PLL_FREQ_N_SHIFT = common dso_local global i32 0, align 4
@PRCM_PLLDSI_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @set_plldsi_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_plldsi_rate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @PRCMU_HDMICLK, align 4
  %11 = call i64 @clock_rate(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %5, align 8
  store i64 7, i64* %7, align 8
  br label %13

13:                                               ; preds = %101, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  br i1 %20, label %21, label %104

21:                                               ; preds = %19
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %3, align 8
  %24 = mul i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @do_div(i32 %26, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 6
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 6, i32* %8, align 4
  br label %37

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 255, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %32
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = mul i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @MIN_PLL_VCO_RATE, align 8
  %48 = mul i64 %46, %47
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %37
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @MAX_PLL_VCO_RATE, align 8
  %53 = mul i64 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %37
  br label %101

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @do_div(i32 %60, i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load i64, i64* %6, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @PRCM_PLL_FREQ_D_SHIFT, align 8
  %74 = shl i64 %72, %73
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @PRCM_PLL_FREQ_R_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = or i64 %74, %77
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %70, %67
  br label %104

80:                                               ; preds = %59
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 %81, %83
  %85 = load i64, i64* %5, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load i64, i64* %3, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %88, %90
  store i64 %91, i64* %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @PRCM_PLL_FREQ_D_SHIFT, align 8
  %95 = shl i64 %93, %94
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @PRCM_PLL_FREQ_R_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = or i64 %95, %98
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %87, %80
  br label %101

101:                                              ; preds = %100, %58
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %7, align 8
  br label %13

104:                                              ; preds = %79, %19
  %105 = load i64, i64* %6, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %119

110:                                              ; preds = %104
  %111 = load i32, i32* @PRCM_PLL_FREQ_N_SHIFT, align 4
  %112 = shl i32 1, %111
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %6, align 8
  %115 = or i64 %114, %113
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i32, i32* @PRCM_PLLDSI_FREQ, align 4
  %118 = call i32 @writel(i64 %116, i32 %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i64 @clock_rate(i32) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
