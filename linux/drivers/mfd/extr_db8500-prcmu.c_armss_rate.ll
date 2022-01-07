; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_armss_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_armss_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCM_ARM_CHGCLKREQ = common dso_local global i32 0, align 4
@PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ = common dso_local global i32 0, align 4
@PRCM_PLLDDR_FREQ = common dso_local global i32 0, align 4
@ROOT_CLOCK_RATE = common dso_local global i32 0, align 4
@PLL_FIX = common dso_local global i32 0, align 4
@PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL = common dso_local global i32 0, align 4
@PRCM_ARMCLKFIX_MGT = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLDIV_MASK = common dso_local global i32 0, align 4
@PRCM_PLLARM_FREQ = common dso_local global i32 0, align 4
@PLL_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @armss_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @armss_rate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @PRCM_ARM_CHGCLKREQ, align 4
  %4 = call i32 @readl(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @PRCM_ARM_CHGCLKREQ_PRCM_ARM_CHGCLKREQ, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %0
  %10 = load i32, i32* @PRCM_PLLDDR_FREQ, align 4
  %11 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %12 = load i32, i32* @PLL_FIX, align 4
  %13 = call i64 @pll_rate(i32 %10, i32 %11, i32 %12)
  store i64 %13, i64* %2, align 8
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @PRCM_ARM_CHGCLKREQ_PRCM_ARM_DIVSEL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load i64, i64* %2, align 8
  %20 = udiv i64 %19, 2
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* @PRCM_ARMCLKFIX_MGT, align 4
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @PRCM_CLK_MGT_CLKPLLDIV_MASK, align 4
  %25 = load i32, i32* %1, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %2, align 8
  %30 = udiv i64 %29, %28
  store i64 %30, i64* %2, align 8
  br label %36

31:                                               ; preds = %0
  %32 = load i32, i32* @PRCM_PLLARM_FREQ, align 4
  %33 = load i32, i32* @ROOT_CLOCK_RATE, align 4
  %34 = load i32, i32* @PLL_DIV, align 4
  %35 = call i64 @pll_rate(i32 %32, i32 %33, i32 %34)
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %31, %21
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @readl(i32) #1

declare dso_local i64 @pll_rate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
