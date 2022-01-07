; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_start_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_start_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i64, i32, %struct.qed_vf_queue*, %struct.qed_iov_vf_mbx }
%struct.qed_vf_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.qed_queue_cid* }
%struct.qed_queue_cid = type { i32 }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfpf_start_txq_tlv }
%struct.vfpf_start_txq_tlv = type { i64, i32, i32, i32, i32 }
%struct.qed_queue_start_common_params = type { i64, i64, i64, i32, i32, %struct.qed_queue_start_common_params*, i32, i64, i32, i32 }
%struct.qed_queue_cid_vf_params = type { i64, i64, i64, i32, i32, %struct.qed_queue_cid_vf_params*, i32, i64, i32, i32 }
%struct.qed_sb_info = type { i64, i64, i64, i32, i32, %struct.qed_sb_info*, i32, i64, i32, i32 }

@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@QED_IOV_VALIDATE_Q_NA = common dso_local global i32 0, align 4
@QED_IOV_QID_INVALID = common dso_local global i64 0, align 8
@PFVF_STATUS_FAILURE = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_start_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_start_txq(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_queue_start_common_params, align 8
  %8 = alloca %struct.qed_queue_cid_vf_params, align 8
  %9 = alloca %struct.qed_iov_vf_mbx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vfpf_start_txq_tlv*, align 8
  %12 = alloca %struct.qed_vf_queue*, align 8
  %13 = alloca %struct.qed_queue_cid*, align 8
  %14 = alloca %struct.qed_sb_info, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %20 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %20, i32 0, i32 5
  store %struct.qed_iov_vf_mbx* %21, %struct.qed_iov_vf_mbx** %9, align 8
  %22 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %17, align 4
  %23 = bitcast %struct.qed_queue_start_common_params* %7 to %struct.qed_sb_info*
  %24 = call i32 @memset(%struct.qed_sb_info* %23, i32 0, i32 64)
  %25 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %26 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.vfpf_start_txq_tlv* %28, %struct.vfpf_start_txq_tlv** %11, align 8
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %31 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %32 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @QED_IOV_VALIDATE_Q_NA, align 4
  %35 = call i32 @qed_iov_validate_txq(%struct.qed_hwfn* %29, %struct.qed_vf_info* %30, i64 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %40 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %41 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @qed_iov_validate_sb(%struct.qed_hwfn* %38, %struct.qed_vf_info* %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37, %3
  br label %164

46:                                               ; preds = %37
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %48 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %49 = call i64 @qed_iov_vf_mbx_qid(%struct.qed_hwfn* %47, %struct.qed_vf_info* %48, i32 1)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @QED_IOV_QID_INVALID, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %164

54:                                               ; preds = %46
  %55 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %56 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %55, i32 0, i32 4
  %57 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %56, align 8
  %58 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %59 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %57, i64 %60
  store %struct.qed_vf_queue* %61, %struct.qed_vf_queue** %12, align 8
  %62 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %63 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %67, align 8
  %69 = icmp ne %struct.qed_queue_cid* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %164

71:                                               ; preds = %54
  %72 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %73 = call i64 @qed_vf_calculate_legacy(%struct.qed_vf_info* %72)
  store i64 %73, i64* %16, align 8
  %74 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %75 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %7, i32 0, i32 9
  store i32 %76, i32* %77, align 4
  %78 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %79 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %7, i32 0, i32 8
  store i32 %80, i32* %81, align 8
  %82 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %83 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 16
  %86 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %7, i32 0, i32 7
  store i64 %85, i64* %86, align 8
  %87 = call i32 @memset(%struct.qed_sb_info* %14, i32 0, i32 64)
  %88 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %89 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %14, i32 0, i32 6
  store i32 %90, i32* %91, align 8
  %92 = bitcast %struct.qed_sb_info* %14 to %struct.qed_queue_start_common_params*
  %93 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %7, i32 0, i32 5
  store %struct.qed_queue_start_common_params* %92, %struct.qed_queue_start_common_params** %93, align 8
  %94 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %95 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %7, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  %98 = bitcast %struct.qed_queue_cid_vf_params* %8 to %struct.qed_sb_info*
  %99 = call i32 @memset(%struct.qed_sb_info* %98, i32 0, i32 64)
  %100 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %101 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %8, i32 0, i32 3
  store i32 %102, i32* %103, align 8
  %104 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %105 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %8, i32 0, i32 0
  store i64 %106, i64* %107, align 8
  %108 = load i64, i64* %16, align 8
  %109 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %8, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.qed_queue_cid_vf_params, %struct.qed_queue_cid_vf_params* %8, i32 0, i32 2
  store i64 %110, i64* %111, align 8
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %113 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %114 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = bitcast %struct.qed_queue_start_common_params* %7 to %struct.qed_sb_info*
  %117 = bitcast %struct.qed_queue_cid_vf_params* %8 to %struct.qed_sb_info*
  %118 = call %struct.qed_queue_cid* @qed_eth_queue_to_cid(%struct.qed_hwfn* %112, i32 %115, %struct.qed_sb_info* %116, i32 0, %struct.qed_sb_info* %117)
  store %struct.qed_queue_cid* %118, %struct.qed_queue_cid** %13, align 8
  %119 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %13, align 8
  %120 = icmp ne %struct.qed_queue_cid* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %71
  br label %164

122:                                              ; preds = %71
  %123 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %124 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %125 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @qed_get_cm_pq_idx_vf(%struct.qed_hwfn* %123, i32 %126)
  store i32 %127, i32* %19, align 4
  %128 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %129 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %13, align 8
  %130 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %131 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.vfpf_start_txq_tlv*, %struct.vfpf_start_txq_tlv** %11, align 8
  %134 = getelementptr inbounds %struct.vfpf_start_txq_tlv, %struct.vfpf_start_txq_tlv* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @qed_eth_txq_start_ramrod(%struct.qed_hwfn* %128, %struct.qed_queue_cid* %129, i32 %132, i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %122
  %141 = load i64, i64* @PFVF_STATUS_FAILURE, align 8
  store i64 %141, i64* %10, align 8
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %143 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %13, align 8
  %144 = call i32 @qed_eth_queue_cid_release(%struct.qed_hwfn* %142, %struct.qed_queue_cid* %143)
  br label %163

145:                                              ; preds = %122
  %146 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  store i64 %146, i64* %10, align 8
  %147 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %13, align 8
  %148 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %149 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store %struct.qed_queue_cid* %147, %struct.qed_queue_cid** %153, align 8
  %154 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %12, align 8
  %155 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i64, i64* %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %13, align 8
  %161 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %145, %140
  br label %164

164:                                              ; preds = %163, %121, %70, %53, %45
  %165 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %166 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %167 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %168 = load i32, i32* %17, align 4
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @qed_iov_vf_mbx_start_txq_resp(%struct.qed_hwfn* %165, %struct.qed_ptt* %166, %struct.qed_vf_info* %167, i32 %168, i64 %169)
  ret void
}

declare dso_local i32 @memset(%struct.qed_sb_info*, i32, i32) #1

declare dso_local i32 @qed_iov_validate_txq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @qed_iov_validate_sb(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #1

declare dso_local i64 @qed_iov_vf_mbx_qid(%struct.qed_hwfn*, %struct.qed_vf_info*, i32) #1

declare dso_local i64 @qed_vf_calculate_legacy(%struct.qed_vf_info*) #1

declare dso_local %struct.qed_queue_cid* @qed_eth_queue_to_cid(%struct.qed_hwfn*, i32, %struct.qed_sb_info*, i32, %struct.qed_sb_info*) #1

declare dso_local i32 @qed_get_cm_pq_idx_vf(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_eth_txq_start_ramrod(%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32, i32) #1

declare dso_local i32 @qed_eth_queue_cid_release(%struct.qed_hwfn*, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_iov_vf_mbx_start_txq_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
