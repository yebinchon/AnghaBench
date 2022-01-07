; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_prcmu_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_NUM_REG_CLOCKS = common dso_local global i64 0, align 8
@PRCMU_TIMCLK = common dso_local global i64 0, align 8
@ROOT_CLOCK_RATE = common dso_local global i32 0, align 4
@PRCMU_SYSCLK = common dso_local global i64 0, align 8
@PRCMU_PLLSOC0 = common dso_local global i64 0, align 8
@PRCM_PLLSOC0_FREQ = common dso_local global i32 0, align 4
@PLL_RAW = common dso_local global i32 0, align 4
@PRCMU_PLLSOC1 = common dso_local global i64 0, align 8
@PRCM_PLLSOC1_FREQ = common dso_local global i32 0, align 4
@PRCMU_ARMSS = common dso_local global i64 0, align 8
@PRCMU_PLLDDR = common dso_local global i64 0, align 8
@PRCM_PLLDDR_FREQ = common dso_local global i32 0, align 4
@PRCMU_PLLDSI = common dso_local global i64 0, align 8
@PRCM_PLLDSI_FREQ = common dso_local global i32 0, align 4
@PRCMU_HDMICLK = common dso_local global i64 0, align 8
@PRCMU_DSI0CLK = common dso_local global i64 0, align 8
@PRCMU_DSI1CLK = common dso_local global i64 0, align 8
@PRCMU_DSI0ESCCLK = common dso_local global i64 0, align 8
@PRCMU_DSI2ESCCLK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @prcmu_clock_rate(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @PRCMU_NUM_REG_CLOCKS, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @clock_rate(i64 %8)
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  br label %96

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @PRCMU_TIMCLK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %17 = sdiv i32 %16, 16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %2, align 8
  br label %96

19:                                               ; preds = %11
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @PRCMU_SYSCLK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %2, align 8
  br label %96

26:                                               ; preds = %19
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @PRCMU_PLLSOC0, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @PRCM_PLLSOC0_FREQ, align 4
  %32 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %33 = load i32, i32* @PLL_RAW, align 4
  %34 = call i64 @pll_rate(i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %2, align 8
  br label %96

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @PRCMU_PLLSOC1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @PRCM_PLLSOC1_FREQ, align 4
  %41 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %42 = load i32, i32* @PLL_RAW, align 4
  %43 = call i64 @pll_rate(i32 %40, i32 %41, i32 %42)
  store i64 %43, i64* %2, align 8
  br label %96

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @PRCMU_ARMSS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i64 (...) @armss_rate()
  store i64 %49, i64* %2, align 8
  br label %96

50:                                               ; preds = %44
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @PRCMU_PLLDDR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @PRCM_PLLDDR_FREQ, align 4
  %56 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %57 = load i32, i32* @PLL_RAW, align 4
  %58 = call i64 @pll_rate(i32 %55, i32 %56, i32 %57)
  store i64 %58, i64* %2, align 8
  br label %96

59:                                               ; preds = %50
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* @PRCMU_PLLDSI, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @PRCM_PLLDSI_FREQ, align 4
  %65 = load i64, i64* @PRCMU_HDMICLK, align 8
  %66 = call i32 @clock_rate(i64 %65)
  %67 = load i32, i32* @PLL_RAW, align 4
  %68 = call i64 @pll_rate(i32 %64, i32 %66, i32 %67)
  store i64 %68, i64* %2, align 8
  br label %96

69:                                               ; preds = %59
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @PRCMU_DSI1CLK, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73, %69
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @PRCMU_DSI0CLK, align 8
  %80 = sub nsw i64 %78, %79
  %81 = call i64 @dsiclk_rate(i64 %80)
  store i64 %81, i64* %2, align 8
  br label %96

82:                                               ; preds = %73
  %83 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %84 = load i64, i64* %3, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @PRCMU_DSI2ESCCLK, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @PRCMU_DSI0ESCCLK, align 8
  %93 = sub nsw i64 %91, %92
  %94 = call i64 @dsiescclk_rate(i64 %93)
  store i64 %94, i64* %2, align 8
  br label %96

95:                                               ; preds = %86, %82
  store i64 0, i64* %2, align 8
  br label %96

96:                                               ; preds = %95, %90, %77, %63, %54, %48, %39, %30, %23, %15, %7
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32 @clock_rate(i64) #1

declare dso_local i64 @pll_rate(i32, i32, i32) #1

declare dso_local i64 @armss_rate(...) #1

declare dso_local i64 @dsiclk_rate(i64) #1

declare dso_local i64 @dsiescclk_rate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
