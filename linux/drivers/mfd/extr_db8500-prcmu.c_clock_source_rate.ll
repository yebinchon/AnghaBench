; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_clock_source_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_clock_source_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCM_CLK_MGT_CLK38 = common dso_local global i32 0, align 4
@ROOT_CLOCK_RATE = common dso_local global i64 0, align 8
@PRCM_CLK_MGT_CLKPLLSW_MASK = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_SOC0 = common dso_local global i32 0, align 4
@PRCM_PLLSOC0_FREQ = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_SOC1 = common dso_local global i32 0, align 4
@PRCM_PLLSOC1_FREQ = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_DDR = common dso_local global i32 0, align 4
@PRCM_PLLDDR_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @clock_source_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clock_source_rate(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PRCM_CLK_MGT_CLK38, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @ROOT_CLOCK_RATE, align 8
  store i64 %11, i64* %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_MASK, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_SOC0, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @PRCM_PLLSOC0_FREQ, align 4
  %21 = load i64, i64* @ROOT_CLOCK_RATE, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @pll_rate(i32 %20, i64 %21, i32 %22)
  store i64 %23, i64* %3, align 8
  br label %43

24:                                               ; preds = %12
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_SOC1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @PRCM_PLLSOC1_FREQ, align 4
  %30 = load i64, i64* @ROOT_CLOCK_RATE, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @pll_rate(i32 %29, i64 %30, i32 %31)
  store i64 %32, i64* %3, align 8
  br label %43

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_DDR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @PRCM_PLLDDR_FREQ, align 4
  %39 = load i64, i64* @ROOT_CLOCK_RATE, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @pll_rate(i32 %38, i64 %39, i32 %40)
  store i64 %41, i64* %3, align 8
  br label %43

42:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %43

43:                                               ; preds = %42, %37, %28, %19, %10
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i64 @pll_rate(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
