; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_enable_dsipll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_enable_dsipll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCMU_RESET_DSIPLL = common dso_local global i32 0, align 4
@PRCM_APE_RESETN_CLR = common dso_local global i32 0, align 4
@PRCMU_UNCLAMP_DSIPLL = common dso_local global i32 0, align 4
@PRCM_MMIP_LS_CLAMP_CLR = common dso_local global i32 0, align 4
@PRCMU_PLLDSI_FREQ_SETTING = common dso_local global i32 0, align 4
@PRCM_PLLDSI_FREQ = common dso_local global i32 0, align 4
@PRCMU_DSI_PLLOUT_SEL_SETTING = common dso_local global i32 0, align 4
@PRCM_DSI_PLLOUT_SEL = common dso_local global i32 0, align 4
@PRCMU_ENABLE_ESCAPE_CLOCK_DIV = common dso_local global i32 0, align 4
@PRCM_DSITVCLK_DIV = common dso_local global i32 0, align 4
@PRCMU_ENABLE_PLLDSI = common dso_local global i32 0, align 4
@PRCM_PLLDSI_ENABLE = common dso_local global i32 0, align 4
@PRCMU_DSI_RESET_SW = common dso_local global i32 0, align 4
@PRCM_DSI_SW_RESET = common dso_local global i32 0, align 4
@PRCM_PLLDSI_LOCKP = common dso_local global i32 0, align 4
@PRCMU_PLLDSI_LOCKP_LOCKED = common dso_local global i32 0, align 4
@PRCM_APE_RESETN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_enable_dsipll() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PRCMU_RESET_DSIPLL, align 4
  %3 = load i32, i32* @PRCM_APE_RESETN_CLR, align 4
  %4 = call i32 @writel(i32 %2, i32 %3)
  %5 = load i32, i32* @PRCMU_UNCLAMP_DSIPLL, align 4
  %6 = load i32, i32* @PRCM_MMIP_LS_CLAMP_CLR, align 4
  %7 = call i32 @writel(i32 %5, i32 %6)
  %8 = load i32, i32* @PRCMU_PLLDSI_FREQ_SETTING, align 4
  %9 = load i32, i32* @PRCM_PLLDSI_FREQ, align 4
  %10 = call i32 @writel(i32 %8, i32 %9)
  %11 = load i32, i32* @PRCMU_DSI_PLLOUT_SEL_SETTING, align 4
  %12 = load i32, i32* @PRCM_DSI_PLLOUT_SEL, align 4
  %13 = call i32 @writel(i32 %11, i32 %12)
  %14 = load i32, i32* @PRCMU_ENABLE_ESCAPE_CLOCK_DIV, align 4
  %15 = load i32, i32* @PRCM_DSITVCLK_DIV, align 4
  %16 = call i32 @writel(i32 %14, i32 %15)
  %17 = load i32, i32* @PRCMU_ENABLE_PLLDSI, align 4
  %18 = load i32, i32* @PRCM_PLLDSI_ENABLE, align 4
  %19 = call i32 @writel(i32 %17, i32 %18)
  %20 = load i32, i32* @PRCMU_DSI_RESET_SW, align 4
  %21 = load i32, i32* @PRCM_DSI_SW_RESET, align 4
  %22 = call i32 @writel(i32 %20, i32 %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %36, %0
  %24 = load i32, i32* %1, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* @PRCM_PLLDSI_LOCKP, align 4
  %28 = call i32 @readl(i32 %27)
  %29 = load i32, i32* @PRCMU_PLLDSI_LOCKP_LOCKED, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @PRCMU_PLLDSI_LOCKP_LOCKED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %39

34:                                               ; preds = %26
  %35 = call i32 @udelay(i32 100)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %23

39:                                               ; preds = %33, %23
  %40 = load i32, i32* @PRCMU_RESET_DSIPLL, align 4
  %41 = load i32, i32* @PRCM_APE_RESETN_SET, align 4
  %42 = call i32 @writel(i32 %40, i32 %41)
  ret i32 0
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
