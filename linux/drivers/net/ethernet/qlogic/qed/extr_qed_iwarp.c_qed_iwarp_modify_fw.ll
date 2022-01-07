; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_modify_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_modify_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_rdma_qp = type { i64, i32 }
%struct.iwarp_modify_qp_ramrod_data = type { i32, i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iwarp_modify_qp_ramrod_data }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_MODIFY_QP = common dso_local global i32 0, align 4
@IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN = common dso_local global i32 0, align 4
@QED_IWARP_QP_STATE_CLOSING = common dso_local global i64 0, align 8
@IWARP_MODIFY_QP_STATE_CLOSING = common dso_local global i32 0, align 4
@IWARP_MODIFY_QP_STATE_ERROR = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"QP(0x%x)rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_rdma_qp*)* @qed_iwarp_modify_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_modify_fw(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.iwarp_modify_qp_ramrod_data*, align 8
  %7 = alloca %struct.qed_sp_init_data, align 4
  %8 = alloca %struct.qed_spq_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %10 = call i32 @memset(%struct.qed_sp_init_data* %7, i32 0, i32 12)
  %11 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %12 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %23 = load i32, i32* @IWARP_RAMROD_CMD_ID_MODIFY_QP, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %22, %struct.qed_spq_entry** %8, i32 %23, i32 %28, %struct.qed_sp_init_data* %7)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %68

34:                                               ; preds = %2
  %35 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %8, align 8
  %36 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.iwarp_modify_qp_ramrod_data* %37, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %38 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %39 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN, align 4
  %42 = call i32 @SET_FIELD(i32 %40, i32 %41, i32 1)
  %43 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QED_IWARP_QP_STATE_CLOSING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @IWARP_MODIFY_QP_STATE_CLOSING, align 4
  %50 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %51 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %34
  %53 = load i32, i32* @IWARP_MODIFY_QP_STATE_ERROR, align 4
  %54 = load %struct.iwarp_modify_qp_ramrod_data*, %struct.iwarp_modify_qp_ramrod_data** %6, align 8
  %55 = getelementptr inbounds %struct.iwarp_modify_qp_ramrod_data, %struct.iwarp_modify_qp_ramrod_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %8, align 8
  %59 = call i32 @qed_spq_post(%struct.qed_hwfn* %57, %struct.qed_spq_entry* %58, i32* null)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %61 = load i32, i32* @QED_MSG_RDMA, align 4
  %62 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %60, i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %56, %32
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
