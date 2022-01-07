; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_operation_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_operation_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@DMAE_COMPLETION_VAL = common dso_local global i64 0, align 8
@DMAE_MIN_WAIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Timed-out waiting for operation to complete. Completion word is 0x%08x expected 0x%08x.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_dmae_operation_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dmae_operation_wait(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  store i64 10000, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @barrier()
  br label %7

7:                                                ; preds = %35, %1
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DMAE_COMPLETION_VAL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = load i32, i32* @DMAE_MIN_WAIT_TIME, align 4
  %17 = call i32 @udelay(i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMAE_COMPLETION_VAL, align 8
  %32 = call i32 @DP_NOTICE(i32 %25, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %15
  %36 = call i32 (...) @barrier()
  br label %7

37:                                               ; preds = %22, %7
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP_NOTICE(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
