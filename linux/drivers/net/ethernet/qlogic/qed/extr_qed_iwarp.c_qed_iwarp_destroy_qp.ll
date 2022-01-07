; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_rdma_qp = type { i64, i32, i64, %struct.qed_iwarp_ep* }
%struct.qed_iwarp_ep = type { i64 }

@QED_IWARP_QP_STATE_ERROR = common dso_local global i64 0, align 8
@QED_IWARP_EP_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ep state close timeout state=%x\0A\00", align 1
@IWARP_SHARED_QUEUE_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_destroy_qp(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.qed_iwarp_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %9 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %10 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %9, i32 0, i32 3
  %11 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %10, align 8
  store %struct.qed_iwarp_ep* %11, %struct.qed_iwarp_ep** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %13 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QED_IWARP_QP_STATE_ERROR, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %20 = load i64, i64* @QED_IWARP_QP_STATE_ERROR, align 8
  %21 = call i32 @qed_iwarp_modify_qp(%struct.qed_hwfn* %18, %struct.qed_rdma_qp* %19, i64 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %87

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %29 = icmp ne %struct.qed_iwarp_ep* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %44, %30
  %32 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %33 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @READ_ONCE(i64 %34)
  %36 = load i64, i64* @QED_IWARP_EP_CLOSED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %39, 200
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i1 [ false, %31 ], [ %41, %38 ]
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = call i32 @msleep(i32 100)
  br label %31

46:                                               ; preds = %42
  %47 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %48 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @QED_IWARP_EP_CLOSED, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %54 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %55 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @DP_NOTICE(%struct.qed_hwfn* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %60 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %61 = call i32 @qed_iwarp_destroy_ep(%struct.qed_hwfn* %59, %struct.qed_iwarp_ep* %60, i32 0)
  br label %62

62:                                               ; preds = %58, %27
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %65 = call i32 @qed_iwarp_fw_destroy(%struct.qed_hwfn* %63, %struct.qed_rdma_qp* %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %67 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %72 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* @IWARP_SHARED_QUEUE_PAGE_SIZE, align 4
  %78 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %79 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %82 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dma_free_coherent(i32* %76, i32 %77, i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %70, %62
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %24
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @qed_iwarp_modify_qp(%struct.qed_hwfn*, %struct.qed_rdma_qp*, i64, i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @qed_iwarp_destroy_ep(%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i32) #1

declare dso_local i32 @qed_iwarp_fw_destroy(%struct.qed_hwfn*, %struct.qed_rdma_qp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
