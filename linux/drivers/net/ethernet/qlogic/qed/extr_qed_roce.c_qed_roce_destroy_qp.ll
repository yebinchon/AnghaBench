; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_rdma_qp = type { i64 }

@QED_ROCE_QP_STATE_RESET = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_ERR = common dso_local global i64 0, align 8
@QED_ROCE_QP_STATE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"QP must be in error, reset or init state before destroying it\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_roce_destroy_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %8 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %9 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QED_ROCE_QP_STATE_RESET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %15 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QED_ROCE_QP_STATE_ERR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %21 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QED_ROCE_QP_STATE_INIT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = call i32 @DP_NOTICE(%struct.qed_hwfn* %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %54

30:                                               ; preds = %19, %13, %2
  %31 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %32 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QED_ROCE_QP_STATE_RESET, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %39 = call i32 @qed_roce_sp_destroy_qp_responder(%struct.qed_hwfn* %37, %struct.qed_rdma_qp* %38, i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %36
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %46 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %47 = call i32 @qed_roce_sp_destroy_qp_requester(%struct.qed_hwfn* %45, %struct.qed_rdma_qp* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %30
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %42, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_roce_sp_destroy_qp_responder(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i32*) #1

declare dso_local i32 @qed_roce_sp_destroy_qp_requester(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
