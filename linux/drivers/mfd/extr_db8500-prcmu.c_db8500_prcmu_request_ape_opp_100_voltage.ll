; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_request_ape_opp_100_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_request_ape_opp_100_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@db8500_prcmu_request_ape_opp_100_voltage.requests = internal global i32 0, align 4
@mb1_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MB1H_REQUEST_APE_OPP_100_VOLT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@MB1H_RELEASE_APE_OPP_100_VOLT = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB1 = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_request_ape_opp_100_voltage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %11 = icmp ne i32 0, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %60

13:                                               ; preds = %8
  %14 = load i64, i64* @MB1H_REQUEST_APE_OPP_100_VOLT, align 8
  store i64 %14, i64* %4, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %15
  %22 = load i32, i32* @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* @db8500_prcmu_request_ape_opp_100_voltage.requests, align 4
  %24 = icmp ne i32 1, %22
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %60

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* @MB1H_RELEASE_APE_OPP_100_VOLT, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %13
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %32 = call i32 @readl(i32 %31)
  %33 = call i32 @MBOX_BIT(i32 1)
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 (...) @cpu_relax()
  br label %30

38:                                               ; preds = %30
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @tcdm_base, align 8
  %41 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writeb(i64 %39, i64 %42)
  %44 = call i32 @MBOX_BIT(i32 1)
  %45 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %46 = call i32 @writel(i32 %44, i32 %45)
  %47 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 2))
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1, i32 0), align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1, i32 1), align 8
  %53 = call i32 @BIT(i32 0)
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %38
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %25, %18, %12
  %61 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MBOX_BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writeb(i64, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
