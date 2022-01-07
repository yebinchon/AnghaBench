; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_arm_opp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_arm_opp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@ARM_NO_CHANGE = common dso_local global i64 0, align 8
@ARM_EXTCLK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mb1_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB1H_ARM_APE_OPP = common dso_local global i64 0, align 8
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB1 = common dso_local global i64 0, align 8
@PRCM_REQ_MB1_ARM_OPP = common dso_local global i64 0, align 8
@APE_NO_CHANGE = common dso_local global i64 0, align 8
@PRCM_REQ_MB1_APE_OPP = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_set_arm_opp(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ARM_NO_CHANGE, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ARM_EXTCLK, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %58

15:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  %16 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  br label %17

17:                                               ; preds = %23, %15
  %18 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %19 = call i32 @readl(i32 %18)
  %20 = call i32 @MBOX_BIT(i32 1)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @cpu_relax()
  br label %17

25:                                               ; preds = %17
  %26 = load i64, i64* @MB1H_ARM_APE_OPP, align 8
  %27 = load i64, i64* @tcdm_base, align 8
  %28 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i64 %26, i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @tcdm_base, align 8
  %33 = load i64, i64* @PRCM_REQ_MB1_ARM_OPP, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeb(i64 %31, i64 %34)
  %36 = load i64, i64* @APE_NO_CHANGE, align 8
  %37 = load i64, i64* @tcdm_base, align 8
  %38 = load i64, i64* @PRCM_REQ_MB1_APE_OPP, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i64 %36, i64 %39)
  %41 = call i32 @MBOX_BIT(i32 1)
  %42 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %43 = call i32 @writel(i32 %41, i32 %42)
  %44 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 2))
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1, i32 0), align 8
  %46 = load i64, i64* @MB1H_ARM_APE_OPP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %25
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1, i32 1), align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %25
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
