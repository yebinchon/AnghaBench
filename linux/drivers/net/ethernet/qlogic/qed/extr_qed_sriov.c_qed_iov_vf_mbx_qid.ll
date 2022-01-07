; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_qid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_qid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_vf_info = type { i32, %struct.TYPE_4__, %struct.qed_iov_vf_mbx }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_iov_vf_mbx = type { i32 }
%struct.vfpf_qid_tlv = type { i64 }

@VFPF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@QED_IOV_LEGACY_QID_TX = common dso_local global i64 0, align 8
@QED_IOV_LEGACY_QID_RX = common dso_local global i64 0, align 8
@CHANNEL_TLV_QID = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"VF[%2x]: Failed to provide qid\0A\00", align 1
@QED_IOV_QID_INVALID = common dso_local global i64 0, align 8
@MAX_QUEUES_PER_QZONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"VF[%02x]: Provided qid out-of-bounds %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_vf_info*, i32)* @qed_iov_vf_mbx_qid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_iov_vf_mbx_qid(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_iov_vf_mbx*, align 8
  %9 = alloca %struct.vfpf_qid_tlv*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %11 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %10, i32 0, i32 2
  store %struct.qed_iov_vf_mbx* %11, %struct.qed_iov_vf_mbx** %8, align 8
  %12 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %13 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VFPF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @QED_IOV_LEGACY_QID_TX, align 8
  store i64 %24, i64* %4, align 8
  br label %66

25:                                               ; preds = %20
  %26 = load i64, i64* @QED_IOV_LEGACY_QID_RX, align 8
  store i64 %26, i64* %4, align 8
  br label %66

27:                                               ; preds = %3
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %29 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %8, align 8
  %30 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CHANNEL_TLV_QID, align 4
  %33 = call i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn* %28, i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to %struct.vfpf_qid_tlv*
  store %struct.vfpf_qid_tlv* %34, %struct.vfpf_qid_tlv** %9, align 8
  %35 = load %struct.vfpf_qid_tlv*, %struct.vfpf_qid_tlv** %9, align 8
  %36 = icmp ne %struct.vfpf_qid_tlv* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %27
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = load i32, i32* @QED_MSG_IOV, align 4
  %40 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %41 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %38, i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @QED_IOV_QID_INVALID, align 8
  store i64 %44, i64* %4, align 8
  br label %66

45:                                               ; preds = %27
  %46 = load %struct.vfpf_qid_tlv*, %struct.vfpf_qid_tlv** %9, align 8
  %47 = getelementptr inbounds %struct.vfpf_qid_tlv, %struct.vfpf_qid_tlv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_QUEUES_PER_QZONE, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %53 = load i32, i32* @QED_MSG_IOV, align 4
  %54 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %55 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vfpf_qid_tlv*, %struct.vfpf_qid_tlv** %9, align 8
  %58 = getelementptr inbounds %struct.vfpf_qid_tlv, %struct.vfpf_qid_tlv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %52, i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load i64, i64* @QED_IOV_QID_INVALID, align 8
  store i64 %61, i64* %4, align 8
  br label %66

62:                                               ; preds = %45
  %63 = load %struct.vfpf_qid_tlv*, %struct.vfpf_qid_tlv** %9, align 8
  %64 = getelementptr inbounds %struct.vfpf_qid_tlv, %struct.vfpf_qid_tlv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %62, %51, %37, %25, %23
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @qed_iov_search_list_tlvs(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
