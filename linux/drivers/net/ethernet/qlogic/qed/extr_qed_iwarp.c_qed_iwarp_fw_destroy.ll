; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_fw_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_fw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.qed_rdma_qp = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { i32 }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_DESTROY_QP = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"QP(0x%x) rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_fw_destroy(%struct.qed_hwfn* %0, %struct.qed_rdma_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_rdma_qp*, align 8
  %6 = alloca %struct.qed_sp_init_data, align 4
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_rdma_qp* %1, %struct.qed_rdma_qp** %5, align 8
  %9 = call i32 @memset(%struct.qed_sp_init_data* %6, i32 0, i32 12)
  %10 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %11 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %20 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %22 = load i32, i32* @IWARP_RAMROD_CMD_ID_DESTROY_QP, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %21, %struct.qed_spq_entry** %7, i32 %22, i32 %27, %struct.qed_sp_init_data* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %36 = call i32 @qed_spq_post(%struct.qed_hwfn* %34, %struct.qed_spq_entry* %35, i32* null)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32, i32* @QED_MSG_RDMA, align 4
  %39 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %5, align 8
  %40 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %37, i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
