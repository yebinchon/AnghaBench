; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_ape_opp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_set_ape_opp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@mb1_transfer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@APE_50_PARTLY_25_OPP = common dso_local global i64 0, align 8
@APE_100_OPP = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_VAL = common dso_local global i32 0, align 4
@MB1H_ARM_APE_OPP = common dso_local global i64 0, align 8
@tcdm_base = common dso_local global i64 0, align 8
@PRCM_MBOX_HEADER_REQ_MB1 = common dso_local global i64 0, align 8
@ARM_NO_CHANGE = common dso_local global i64 0, align 8
@PRCM_REQ_MB1_ARM_OPP = common dso_local global i64 0, align 8
@APE_50_OPP = common dso_local global i64 0, align 8
@PRCM_REQ_MB1_APE_OPP = common dso_local global i64 0, align 8
@PRCM_MBOX_CPU_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_set_ape_opp(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0), align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1))
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0), align 8
  %12 = load i64, i64* @APE_50_PARTLY_25_OPP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @request_even_slower_clocks(i32 0)
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @APE_100_OPP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0), align 8
  %22 = load i64, i64* @APE_100_OPP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %73

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %32, %25
  %27 = load i32, i32* @PRCM_MBOX_CPU_VAL, align 4
  %28 = call i32 @readl(i32 %27)
  %29 = call i32 @MBOX_BIT(i32 1)
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @cpu_relax()
  br label %26

34:                                               ; preds = %26
  %35 = load i64, i64* @MB1H_ARM_APE_OPP, align 8
  %36 = load i64, i64* @tcdm_base, align 8
  %37 = load i64, i64* @PRCM_MBOX_HEADER_REQ_MB1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writeb(i64 %35, i64 %38)
  %40 = load i64, i64* @ARM_NO_CHANGE, align 8
  %41 = load i64, i64* @tcdm_base, align 8
  %42 = load i64, i64* @PRCM_REQ_MB1_ARM_OPP, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writeb(i64 %40, i64 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @APE_50_PARTLY_25_OPP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i64, i64* @APE_50_OPP, align 8
  br label %52

50:                                               ; preds = %34
  %51 = load i64, i64* %3, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  %54 = load i64, i64* @tcdm_base, align 8
  %55 = load i64, i64* @PRCM_REQ_MB1_APE_OPP, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writeb(i64 %53, i64 %56)
  %58 = call i32 @MBOX_BIT(i32 1)
  %59 = load i32, i32* @PRCM_MBOX_CPU_SET, align 4
  %60 = call i32 @writel(i32 %58, i32 %59)
  %61 = call i32 @wait_for_completion(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 3))
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 2, i32 0), align 8
  %63 = load i64, i64* @MB1H_ARM_APE_OPP, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 2, i32 1), align 8
  %67 = load i64, i64* %3, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65, %52
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @APE_50_PARTLY_25_OPP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0), align 8
  %85 = load i64, i64* @APE_50_PARTLY_25_OPP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %76
  %88 = call i32 @request_even_slower_clocks(i32 1)
  br label %89

89:                                               ; preds = %87, %83, %80
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %3, align 8
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 0), align 8
  br label %94

94:                                               ; preds = %92, %89
  %95 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mb1_transfer, i32 0, i32 1))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %8
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @request_even_slower_clocks(i32) #1

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
