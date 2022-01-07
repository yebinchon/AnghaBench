; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PRCMU_AP_SLEEP = common dso_local global i64 0, align 8
@PRCMU_AP_DEEP_IDLE = common dso_local global i64 0, align 8
@mb0_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB0H_POWER_STATE_TRANS = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB0 = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_AP_POWER_STATE = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_AP_PLL_STATE = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_ULP_CLOCK_STATE = common dso_local global i64 0, align 8
@PRCM_REQ_MB0_DO_NOT_WFI = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_set_power_state(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @PRCMU_AP_SLEEP, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @PRCMU_AP_DEEP_IDLE, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb0_transfer, i32 0, i32 0), i64 %19)
  br label %21

21:                                               ; preds = %27, %15
  %22 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %23 = call i32 @readl(i32 %22)
  %24 = call i32 @MBOX_BIT(i32 0)
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @cpu_relax()
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* @MB0H_POWER_STATE_TRANS, align 4
  %31 = load i64, i64* @tcdm_base, align 8
  %32 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writeb(i32 %30, i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* @tcdm_base, align 8
  %38 = load i64, i64* @PRCM_REQ_MB0_AP_POWER_STATE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %36, i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load i64, i64* @tcdm_base, align 8
  %46 = load i64, i64* @PRCM_REQ_MB0_AP_PLL_STATE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i32 %44, i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = load i64, i64* @tcdm_base, align 8
  %54 = load i64, i64* @PRCM_REQ_MB0_ULP_CLOCK_STATE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeb(i32 %52, i64 %55)
  %57 = load i64, i64* @tcdm_base, align 8
  %58 = load i64, i64* @PRCM_REQ_MB0_DO_NOT_WFI, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writeb(i32 0, i64 %59)
  %61 = call i32 @MBOX_BIT(i32 0)
  %62 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %63 = call i32 @writel(i32 %61, i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb0_transfer, i32 0, i32 0), i64 %64)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
