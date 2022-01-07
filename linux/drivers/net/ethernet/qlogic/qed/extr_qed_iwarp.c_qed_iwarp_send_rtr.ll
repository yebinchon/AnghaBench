; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_send_rtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_send_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_send_rtr_in = type { %struct.qed_iwarp_ep* }
%struct.qed_iwarp_ep = type { i32, %struct.qed_rdma_qp* }
%struct.qed_rdma_qp = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }
%struct.qed_spq_entry = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Ep Context receive in send_rtr is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"QP(0x%x) EP(0x%x)\0A\00", align 1
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@IWARP_RAMROD_CMD_ID_MPA_OFFLOAD_SEND_RTR = common dso_local global i32 0, align 4
@PROTOCOLID_IWARP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rc = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_send_rtr(i8* %0, %struct.qed_iwarp_send_rtr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_iwarp_send_rtr_in*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_sp_init_data, align 4
  %8 = alloca %struct.qed_spq_entry*, align 8
  %9 = alloca %struct.qed_iwarp_ep*, align 8
  %10 = alloca %struct.qed_rdma_qp*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_iwarp_send_rtr_in* %1, %struct.qed_iwarp_send_rtr_in** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %13, %struct.qed_hwfn** %6, align 8
  %14 = load %struct.qed_iwarp_send_rtr_in*, %struct.qed_iwarp_send_rtr_in** %5, align 8
  %15 = getelementptr inbounds %struct.qed_iwarp_send_rtr_in, %struct.qed_iwarp_send_rtr_in* %14, i32 0, i32 0
  %16 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %15, align 8
  store %struct.qed_iwarp_ep* %16, %struct.qed_iwarp_ep** %9, align 8
  %17 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %9, align 8
  %18 = icmp ne %struct.qed_iwarp_ep* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %21 = call i32 @DP_ERR(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %9, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %25, i32 0, i32 1
  %27 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %26, align 8
  store %struct.qed_rdma_qp* %27, %struct.qed_rdma_qp** %10, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %29 = load i32, i32* @QED_MSG_RDMA, align 4
  %30 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %10, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %9, align 8
  %34 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %28, i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = call i32 @memset(%struct.qed_sp_init_data* %7, i32 0, i32 12)
  %38 = load %struct.qed_rdma_qp*, %struct.qed_rdma_qp** %10, align 8
  %39 = getelementptr inbounds %struct.qed_rdma_qp, %struct.qed_rdma_qp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %48 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %50 = load i32, i32* @IWARP_RAMROD_CMD_ID_MPA_OFFLOAD_SEND_RTR, align 4
  %51 = load i32, i32* @PROTOCOLID_IWARP, align 4
  %52 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %49, %struct.qed_spq_entry** %8, i32 %50, i32 %51, %struct.qed_sp_init_data* %7)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %24
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %24
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %59 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %8, align 8
  %60 = call i32 @qed_spq_post(%struct.qed_hwfn* %58, %struct.qed_spq_entry* %59, i32* null)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %62 = load i32, i32* @QED_MSG_RDMA, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %61, i32 %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %55, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
