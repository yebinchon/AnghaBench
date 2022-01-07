; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_txq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_txq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.qed_queue_cid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vfpf_stop_txqs_tlv = type { i32, i32 }

@CHANNEL_TLV_STOP_TXQS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_txq_stop(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_queue_cid*, align 8
  %5 = alloca %struct.qed_vf_iov*, align 8
  %6 = alloca %struct.vfpf_stop_txqs_tlv*, align 8
  %7 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %4, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %10, align 8
  store %struct.qed_vf_iov* %11, %struct.qed_vf_iov** %5, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = load i32, i32* @CHANNEL_TLV_STOP_TXQS, align 4
  %14 = call %struct.vfpf_stop_txqs_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %12, i32 %13, i32 8)
  store %struct.vfpf_stop_txqs_tlv* %14, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %15 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %16 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vfpf_stop_txqs_tlv*, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, %struct.vfpf_stop_txqs_tlv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vfpf_stop_txqs_tlv*, %struct.vfpf_stop_txqs_tlv** %6, align 8
  %22 = getelementptr inbounds %struct.vfpf_stop_txqs_tlv, %struct.vfpf_stop_txqs_tlv* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %24 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %25 = call i32 @qed_vf_pf_add_qid(%struct.qed_hwfn* %23, %struct.qed_queue_cid* %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %28 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %27, i32 0, i32 1
  %29 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %30 = call i32 @qed_add_tlv(%struct.qed_hwfn* %26, i32* %28, i32 %29, i32 4)
  %31 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %32 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %34, %struct.pfvf_def_resp_tlv** %7, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %36 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %37 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %35, i64* %38, i32 8)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %54

43:                                               ; preds = %2
  %44 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %45 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %50, %42
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local %struct.vfpf_stop_txqs_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

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
