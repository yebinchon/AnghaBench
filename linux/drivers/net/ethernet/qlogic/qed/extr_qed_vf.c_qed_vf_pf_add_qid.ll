; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_add_qid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_add_qid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_queue_cid = type { i32 }
%struct.vfpf_qid_tlv = type { i32 }

@PFVF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@CHANNEL_TLV_QID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_queue_cid*)* @qed_vf_pf_add_qid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_vf_pf_add_qid(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_queue_cid*, align 8
  %5 = alloca %struct.qed_vf_iov*, align 8
  %6 = alloca %struct.vfpf_qid_tlv*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %4, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 0
  %9 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %8, align 8
  store %struct.qed_vf_iov* %9, %struct.qed_vf_iov** %5, align 8
  %10 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %11 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PFVF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %5, align 8
  %22 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %21, i32 0, i32 0
  %23 = load i32, i32* @CHANNEL_TLV_QID, align 4
  %24 = call %struct.vfpf_qid_tlv* @qed_add_tlv(%struct.qed_hwfn* %20, i32* %22, i32 %23, i32 4)
  store %struct.vfpf_qid_tlv* %24, %struct.vfpf_qid_tlv** %6, align 8
  %25 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %4, align 8
  %26 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vfpf_qid_tlv*, %struct.vfpf_qid_tlv** %6, align 8
  %29 = getelementptr inbounds %struct.vfpf_qid_tlv, %struct.vfpf_qid_tlv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.vfpf_qid_tlv* @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
