; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_config_hot_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_config_hot_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mb4_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_HOT_PERIOD = common dso_local global i64 0, align 8
@MB4H_HOT_PERIOD = common dso_local global i32 0, align 4
@PRCM_MBOX_HEADER_REQ_MB4 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @config_hot_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_hot_period(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  br label %4

4:                                                ; preds = %10, %1
  %5 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %6 = call i32 @readl(i32 %5)
  %7 = call i32 @MBOX_BIT(i32 4)
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = call i32 (...) @cpu_relax()
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* %2, align 4
  %14 = load i64, i64* @tcdm_base, align 8
  %15 = load i64, i64* @PRCM_REQ_MB4_HOT_PERIOD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writew(i32 %13, i64 %16)
  %18 = load i32, i32* @MB4H_HOT_PERIOD, align 4
  %19 = load i64, i64* @tcdm_base, align 8
  %20 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB4, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writeb(i32 %18, i64 %21)
  %23 = call i32 @MBOX_BIT(i32 4)
  %24 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %25 = call i32 @writel(i32 %23, i32 %24)
  %26 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 1))
  %27 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writew(i32, i64) #1

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
