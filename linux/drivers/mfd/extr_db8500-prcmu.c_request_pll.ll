; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@PRCMU_PLLSOC0 = common dso_local global i64 0, align 8
@PLL_SOC0_ON = common dso_local global i64 0, align 8
@PLL_SOC0_OFF = common dso_local global i64 0, align 8
@PRCMU_PLLSOC1 = common dso_local global i64 0, align 8
@PLL_SOC1_ON = common dso_local global i64 0, align 8
@PLL_SOC1_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mb1_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB1H_PLL_ON_OFF = common dso_local global i64 0, align 8
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB1 = common dso_local global i64 0, align 8
@PRCM_REQ_MB1_PLL_ON_OFF = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @request_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_pll(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @PRCMU_PLLSOC0, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i64, i64* @PLL_SOC0_ON, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @PLL_SOC0_OFF, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  store i64 %18, i64* %4, align 8
  br label %36

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PRCMU_PLLSOC1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64, i64* @PLL_SOC1_ON, align 8
  br label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @PLL_SOC1_OFF, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %4, align 8
  br label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %70

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %17
  %37 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  br label %38

38:                                               ; preds = %44, %36
  %39 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %40 = call i32 @readl(i32 %39)
  %41 = call i32 @MBOX_BIT(i32 1)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @cpu_relax()
  br label %38

46:                                               ; preds = %38
  %47 = load i64, i64* @MB1H_PLL_ON_OFF, align 8
  %48 = load i64, i64* @tcdm_base, align 8
  %49 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i64 %47, i64 %50)
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @tcdm_base, align 8
  %54 = load i64, i64* @PRCM_REQ_MB1_PLL_ON_OFF, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writeb(i64 %52, i64 %55)
  %57 = call i32 @MBOX_BIT(i32 1)
  %58 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %59 = call i32 @writel(i32 %57, i32 %58)
  %60 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 2))
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1, i32 0), align 8
  %62 = load i64, i64* @MB1H_PLL_ON_OFF, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %46
  %68 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %32
  %71 = load i32, i32* %3, align 4
  ret i32 %71
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
