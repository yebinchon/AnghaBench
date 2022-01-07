; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_config_esram0_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_config_esram0_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ESRAM0_DEEP_SLEEP_STATE_RET = common dso_local global i32 0, align 4
@ESRAM0_DEEP_SLEEP_STATE_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mb4_transfer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB4H_MEM_ST = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB4 = common dso_local global i64 0, align 8
@DDR_PWR_STATE_OFFHIGHLAT = common dso_local global i32 0, align 4
@DDR_PWR_STATE_ON = common dso_local global i32 0, align 4
@PRCM_REQ_MB4_DDR_ST_AP_SLEEP_IDLE = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_DDR_ST_AP_DEEP_IDLE = common dso_local global i64 0, align 8
@PRCM_REQ_MB4_ESRAM0_ST = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_config_esram0_deep_sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ESRAM0_DEEP_SLEEP_STATE_RET, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ESRAM0_DEEP_SLEEP_STATE_OFF, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %7
  %15 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  br label %16

16:                                               ; preds = %22, %14
  %17 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %18 = call i32 @readl(i32 %17)
  %19 = call i32 @MBOX_BIT(i32 4)
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 (...) @cpu_relax()
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* @MB4H_MEM_ST, align 4
  %26 = load i64, i64* @tcdm_base, align 8
  %27 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB4, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writeb(i32 %25, i64 %28)
  %30 = load i32, i32* @DDR_PWR_STATE_OFFHIGHLAT, align 4
  %31 = shl i32 %30, 4
  %32 = load i32, i32* @DDR_PWR_STATE_ON, align 4
  %33 = or i32 %31, %32
  %34 = load i64, i64* @tcdm_base, align 8
  %35 = load i64, i64* @PRCM_REQ_MB4_DDR_ST_AP_SLEEP_IDLE, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %33, i64 %36)
  %38 = load i32, i32* @DDR_PWR_STATE_ON, align 4
  %39 = load i64, i64* @tcdm_base, align 8
  %40 = load i64, i64* @PRCM_REQ_MB4_DDR_ST_AP_DEEP_IDLE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 %38, i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i64, i64* @tcdm_base, align 8
  %45 = load i64, i64* @PRCM_REQ_MB4_ESRAM0_ST, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %43, i64 %46)
  %48 = call i32 @MBOX_BIT(i32 4)
  %49 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %50 = call i32 @writel(i32 %48, i32 %49)
  %51 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 1))
  %52 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mb4_transfer, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %24, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
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
