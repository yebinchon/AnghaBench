; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_stop_rxqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_stop_rxqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, %struct.qed_iov_vf_mbx }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vfpf_stop_rxqs_tlv }
%struct.vfpf_stop_rxqs_tlv = type { i32, i32, i32 }

@PFVF_STATUS_FAILURE = common dso_local global i64 0, align 8
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Odd; VF[%d] tried stopping multiple Rx queues\0A\00", align 1
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@QED_IOV_QID_INVALID = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@CHANNEL_TLV_STOP_RXQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_stop_rxqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_stop_rxqs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_iov_vf_mbx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vfpf_stop_rxqs_tlv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  store i32 4, i32* %7, align 4
  %13 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %13, i32 0, i32 1
  store %struct.qed_iov_vf_mbx* %14, %struct.qed_iov_vf_mbx** %8, align 8
  %15 = load i64, i64* @PFVF_STATUS_FAILURE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %8, align 8
  %17 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.vfpf_stop_rxqs_tlv* %19, %struct.vfpf_stop_rxqs_tlv** %10, align 8
  %20 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %10, align 8
  %21 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = load i32, i32* @QED_MSG_IOV, align 4
  %27 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %25, i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* @PFVF_STATUS_NOT_SUPPORTED, align 8
  store i64 %31, i64* %9, align 8
  br label %56

32:                                               ; preds = %3
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %35 = call i64 @qed_iov_vf_mbx_qid(%struct.qed_hwfn* %33, %struct.qed_vf_info* %34, i32 0)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @QED_IOV_QID_INVALID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %56

40:                                               ; preds = %32
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %43 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %10, align 8
  %44 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %10, align 8
  %48 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qed_iov_vf_stop_rxqs(%struct.qed_hwfn* %41, %struct.qed_vf_info* %42, i32 %45, i64 %46, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %53, %40
  br label %56

56:                                               ; preds = %55, %39, %24
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %59 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %60 = load i32, i32* @CHANNEL_TLV_STOP_RXQS, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %57, %struct.qed_ptt* %58, %struct.qed_vf_info* %59, i32 %60, i32 %61, i64 %62)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @qed_iov_vf_mbx_qid(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #1

declare dso_local i32 @qed_iov_vf_stop_rxqs(%struct.qed_hwfn*, %struct.qed_vf_info*, i32, i64, i32) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
