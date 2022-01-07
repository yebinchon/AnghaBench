; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_config_hotmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_config_hotmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mb4_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_HOTMON_LOW = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_HOTMON_HIGH = common dso_local global i64 0, align 8
@HOTMON_CONFIG_LOW = common dso_local global i32 0, align 4
@HOTMON_CONFIG_HIGH = common dso_local global i32 0, align 4
@PRCM_REQ_MB4_HOTMON_CONFIG = common dso_local global i64 0, align 8
@MB4H_HOTMON = common dso_local global i32 0, align 4
@PRCM_MBOX_HEADER_REQ_MB4 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_config_hotmon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  br label %6

6:                                                ; preds = %12, %2
  %7 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %8 = call i32 @readl(i32 %7)
  %9 = call i32 @MBOX_BIT(i32 4)
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 (...) @cpu_relax()
  br label %6

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* @tcdm_base, align 8
  %17 = load i64, i64* @PRCM_REQ_MB4_HOTMON_LOW, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writeb(i32 %15, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* @tcdm_base, align 8
  %22 = load i64, i64* @PRCM_REQ_MB4_HOTMON_HIGH, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 %20, i64 %23)
  %25 = load i32, i32* @HOTMON_CONFIG_LOW, align 4
  %26 = load i32, i32* @HOTMON_CONFIG_HIGH, align 4
  %27 = or i32 %25, %26
  %28 = load i64, i64* @tcdm_base, align 8
  %29 = load i64, i64* @PRCM_REQ_MB4_HOTMON_CONFIG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writeb(i32 %27, i64 %30)
  %32 = load i32, i32* @MB4H_HOTMON, align 4
  %33 = load i64, i64* @tcdm_base, align 8
  %34 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB4, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeb(i32 %32, i64 %35)
  %37 = call i32 @MBOX_BIT(i32 4)
  %38 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %39 = call i32 @writel(i32 %37, i32 %38)
  %40 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 1))
  %41 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  ret i32 0
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
