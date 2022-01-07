; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_modem_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_modem_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mb1_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB1H_RESET_MODEM = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB1 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db8500_prcmu_modem_reset() #0 {
  %1 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb1_transfer, i32 0, i32 0))
  br label %2

2:                                                ; preds = %8, %0
  %3 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %4 = call i32 @readl(i32 %3)
  %5 = call i32 @MBOX_BIT(i32 1)
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @cpu_relax()
  br label %2

10:                                               ; preds = %2
  %11 = load i32, i32* @MB1H_RESET_MODEM, align 4
  %12 = load i64, i64* @tcdm_base, align 8
  %13 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 %11, i64 %14)
  %16 = call i32 @MBOX_BIT(i32 1)
  %17 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %18 = call i32 @writel(i32 %16, i32 %17)
  %19 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb1_transfer, i32 0, i32 1))
  %20 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb1_transfer, i32 0, i32 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
