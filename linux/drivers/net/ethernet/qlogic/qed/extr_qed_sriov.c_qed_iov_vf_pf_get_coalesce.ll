; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { %struct.qed_vf_queue*, i32, %struct.qed_iov_vf_mbx }
%struct.qed_vf_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qed_queue_cid*, i32 }
%struct.qed_queue_cid = type { i32 }
%struct.qed_iov_vf_mbx = type { i32*, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.vfpf_read_coal_req_tlv }
%struct.vfpf_read_coal_req_tlv = type { i64, i64 }
%struct.pfvf_read_coal_resp_tlv = type { i64 }

@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@QED_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Rx queue_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Tx queue_id = %d\0A\00", align 1
@MAX_QUEUES_PER_QZONE = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_COALESCE_READ = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_pf_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_pf_get_coalesce(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_iov_vf_mbx*, align 8
  %8 = alloca %struct.pfvf_read_coal_resp_tlv*, align 8
  %9 = alloca %struct.vfpf_read_coal_req_tlv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_vf_queue*, align 8
  %12 = alloca %struct.qed_queue_cid*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %18 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %19 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %18, i32 0, i32 2
  store %struct.qed_iov_vf_mbx* %19, %struct.qed_iov_vf_mbx** %7, align 8
  %20 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %20, i32* %10, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %22 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %26 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %28 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.vfpf_read_coal_req_tlv* %30, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %31 = load %struct.vfpf_read_coal_req_tlv*, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %32 = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, %struct.vfpf_read_coal_req_tlv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.vfpf_read_coal_req_tlv*, %struct.vfpf_read_coal_req_tlv** %9, align 8
  %35 = getelementptr inbounds %struct.vfpf_read_coal_req_tlv, %struct.vfpf_read_coal_req_tlv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %3
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %47 = call i32 @qed_iov_validate_rxq(%struct.qed_hwfn* %43, %struct.qed_vf_info* %44, i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %51 = load i32, i32* @QED_MSG_IOV, align 4
  %52 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %53 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %50, i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55)
  br label %138

57:                                               ; preds = %42
  %58 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %59 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %58, i32 0, i32 0
  %60 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %60, i64 %61
  %63 = call %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue* %62)
  store %struct.qed_queue_cid* %63, %struct.qed_queue_cid** %12, align 8
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %65 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %66 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %12, align 8
  %67 = call i32 @qed_get_rxq_coalesce(%struct.qed_hwfn* %64, %struct.qed_ptt* %65, %struct.qed_queue_cid* %66, i64* %13)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %138

71:                                               ; preds = %57
  br label %136

72:                                               ; preds = %3
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %74 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %77 = call i32 @qed_iov_validate_txq(%struct.qed_hwfn* %73, %struct.qed_vf_info* %74, i64 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %81 = load i32, i32* @QED_MSG_IOV, align 4
  %82 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %83 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %80, i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %84, i64 %85)
  br label %138

87:                                               ; preds = %72
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %132, %87
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @MAX_QUEUES_PER_QZONE, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %88
  %93 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %94 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %93, i32 0, i32 0
  %95 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %95, i64 %96
  store %struct.qed_vf_queue* %97, %struct.qed_vf_queue** %11, align 8
  %98 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %11, align 8
  %99 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %103, align 8
  %105 = icmp ne %struct.qed_queue_cid* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %92
  %107 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %11, align 8
  %108 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106, %92
  br label %132

116:                                              ; preds = %106
  %117 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %11, align 8
  %118 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %122, align 8
  store %struct.qed_queue_cid* %123, %struct.qed_queue_cid** %12, align 8
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %125 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %126 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %12, align 8
  %127 = call i32 @qed_get_txq_coalesce(%struct.qed_hwfn* %124, %struct.qed_ptt* %125, %struct.qed_queue_cid* %126, i64* %13)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %138

131:                                              ; preds = %116
  br label %135

132:                                              ; preds = %115
  %133 = load i64, i64* %15, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %15, align 8
  br label %88

135:                                              ; preds = %131, %88
  br label %136

136:                                              ; preds = %135, %71
  %137 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %130, %79, %70, %49
  %139 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %140 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %141 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %140, i32 0, i32 0
  %142 = load i32, i32* @CHANNEL_TLV_COALESCE_READ, align 4
  %143 = call %struct.pfvf_read_coal_resp_tlv* @qed_add_tlv(%struct.qed_hwfn* %139, i32** %141, i32 %142, i32 8)
  store %struct.pfvf_read_coal_resp_tlv* %143, %struct.pfvf_read_coal_resp_tlv** %8, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load %struct.pfvf_read_coal_resp_tlv*, %struct.pfvf_read_coal_resp_tlv** %8, align 8
  %146 = getelementptr inbounds %struct.pfvf_read_coal_resp_tlv, %struct.pfvf_read_coal_resp_tlv* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %148 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %149 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %148, i32 0, i32 0
  %150 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %151 = call %struct.pfvf_read_coal_resp_tlv* @qed_add_tlv(%struct.qed_hwfn* %147, i32** %149, i32 %150, i32 4)
  %152 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %153 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %154 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @qed_iov_send_response(%struct.qed_hwfn* %152, %struct.qed_ptt* %153, %struct.qed_vf_info* %154, i32 8, i32 %155)
  ret void
}

declare dso_local i32 @qed_iov_validate_rxq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i64) #1

declare dso_local %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue*) #1

declare dso_local i32 @qed_get_rxq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_queue_cid*, i64*) #1

declare dso_local i32 @qed_iov_validate_txq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @qed_get_txq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_queue_cid*, i64*) #1

declare dso_local %struct.pfvf_read_coal_resp_tlv* @qed_add_tlv(%struct.qed_hwfn*, i32**, i32, i32) #1

declare dso_local i32 @qed_iov_send_response(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
