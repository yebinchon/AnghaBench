; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_set_soft_resc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_set_soft_resc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MAX_RESC = common dso_local global i32 0, align 4
@MAX_NUM_LL2_RX_QUEUES = common dso_local global i64 0, align 8
@NUM_OF_GLOBAL_QUEUES = common dso_local global i64 0, align 8
@RDMA_NUM_STATISTIC_COUNTERS_K2 = common dso_local global i64 0, align 8
@RDMA_NUM_STATISTIC_COUNTERS_BB = common dso_local global i64 0, align 8
@BDQ_NUM_RESOURCES = common dso_local global i64 0, align 8
@FW_MSG_CODE_UNSUPPORTED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_hw_set_soft_resc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_set_soft_resc_size(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @QED_IS_AH(i32 %13)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %55, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @QED_MAX_RESC, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %36 [
    i32 130, label %21
    i32 129, label %23
    i32 128, label %25
    i32 131, label %34
  ]

21:                                               ; preds = %19
  %22 = load i64, i64* @MAX_NUM_LL2_RX_QUEUES, align 8
  store i64 %22, i64* %7, align 8
  br label %37

23:                                               ; preds = %19
  %24 = load i64, i64* @NUM_OF_GLOBAL_QUEUES, align 8
  store i64 %24, i64* %7, align 8
  br label %37

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @RDMA_NUM_STATISTIC_COUNTERS_K2, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @RDMA_NUM_STATISTIC_COUNTERS_BB, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %7, align 8
  br label %37

34:                                               ; preds = %19
  %35 = load i64, i64* @BDQ_NUM_RESOURCES, align 8
  store i64 %35, i64* %7, align 8
  br label %37

36:                                               ; preds = %19
  br label %55

37:                                               ; preds = %34, %32, %23, %21
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @__qed_hw_set_soft_resc_size(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %40, i64 %41, i64* %8)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  br label %59

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @FW_MSG_CODE_UNSUPPORTED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51, %45
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @QED_IS_AH(i32) #1

declare dso_local i32 @__qed_hw_set_soft_resc_size(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
