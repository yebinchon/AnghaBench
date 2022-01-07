; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_rxq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_rxq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.qed_queue_cid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vfpf_stop_rxqs_tlv = type { i32, i32, i32 }

@CHANNEL_TLV_STOP_RXQS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_rxq_stop(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_queue_cid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_vf_iov*, align 8
  %8 = alloca %struct.vfpf_stop_rxqs_tlv*, align 8
  %9 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %12, align 8
  store %struct.qed_vf_iov* %13, %struct.qed_vf_iov** %7, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load i32, i32* @CHANNEL_TLV_STOP_RXQS, align 4
  %16 = call %struct.vfpf_stop_rxqs_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %14, i32 %15, i32 12)
  store %struct.vfpf_stop_rxqs_tlv* %16, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %17 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %18 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %22 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %24 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.vfpf_stop_rxqs_tlv*, %struct.vfpf_stop_rxqs_tlv** %8, align 8
  %27 = getelementptr inbounds %struct.vfpf_stop_rxqs_tlv, %struct.vfpf_stop_rxqs_tlv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %5, align 8
  %30 = call i32 @qed_vf_pf_add_qid(%struct.qed_hwfn* %28, %struct.qed_queue_cid* %29)
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %32 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %33 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %32, i32 0, i32 1
  %34 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %35 = call i32 @qed_add_tlv(%struct.qed_hwfn* %31, i32* %33, i32 %34, i32 4)
  %36 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %7, align 8
  %37 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %39, %struct.pfvf_def_resp_tlv** %9, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %41 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %9, align 8
  %42 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %40, i64* %43, i32 8)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %59

48:                                               ; preds = %3
  %49 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %9, align 8
  %50 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %55, %47
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local %struct.vfpf_stop_rxqs_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_vf_pf_add_qid(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
