; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_display_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_display_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_mgt_lock = common dso_local global i32 0, align 4
@PRCM_SEM = common dso_local global i64 0, align 8
@PRCM_SEM_PRCM_SEM = common dso_local global i32 0, align 4
@PRCMU_DSI_CLOCK_SETTING = common dso_local global i32 0, align 4
@prcmu_base = common dso_local global i64 0, align 8
@PRCM_HDMICLK_MGT = common dso_local global i64 0, align 8
@PRCMU_DSI_LP_CLOCK_SETTING = common dso_local global i32 0, align 4
@PRCM_TVCLK_MGT = common dso_local global i64 0, align 8
@PRCMU_DPI_CLOCK_SETTING = common dso_local global i32 0, align 4
@PRCM_LCDCLK_MGT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_set_display_clocks() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @clk_mgt_lock, i64 %2)
  br label %4

4:                                                ; preds = %10, %0
  %5 = load i64, i64* @PRCM_SEM, align 8
  %6 = call i32 @readl(i64 %5)
  %7 = load i32, i32* @PRCM_SEM_PRCM_SEM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call i32 (...) @cpu_relax()
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* @PRCMU_DSI_CLOCK_SETTING, align 4
  %14 = load i64, i64* @prcmu_base, align 8
  %15 = load i64, i64* @PRCM_HDMICLK_MGT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %13, i64 %16)
  %18 = load i32, i32* @PRCMU_DSI_LP_CLOCK_SETTING, align 4
  %19 = load i64, i64* @prcmu_base, align 8
  %20 = load i64, i64* @PRCM_TVCLK_MGT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %18, i64 %21)
  %23 = load i32, i32* @PRCMU_DPI_CLOCK_SETTING, align 4
  %24 = load i64, i64* @prcmu_base, align 8
  %25 = load i64, i64* @PRCM_LCDCLK_MGT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %23, i64 %26)
  %28 = load i64, i64* @PRCM_SEM, align 8
  %29 = call i32 @writel(i32 0, i64 %28)
  %30 = load i64, i64* %1, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @clk_mgt_lock, i64 %30)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
