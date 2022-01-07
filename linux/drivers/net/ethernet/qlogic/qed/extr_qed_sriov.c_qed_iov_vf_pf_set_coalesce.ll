; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_pf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i64, i64, i32, %struct.qed_vf_queue*, %struct.qed_iov_vf_mbx }
%struct.qed_vf_queue = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qed_iov_vf_mbx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vfpf_update_coalesce }
%struct.vfpf_update_coalesce = type { i64, i64, i64 }
%struct.qed_queue_cid = type { i32 }

@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@QED_IOV_VALIDATE_Q_ENABLE = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Rx queue_id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"VF[%d]: Invalid Tx queue_id = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"VF[%d]: Setting coalesce for VF rx_coal = %d, tx_coal = %d at queue = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"VF[%d]: Unable to set rx queue = %d coalesce\0A\00", align 1
@MAX_QUEUES_PER_QZONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"VF[%d]: Unable to set tx queue coalesce\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CHANNEL_TLV_COALESCE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_pf_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_pf_set_coalesce(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_iov_vf_mbx*, align 8
  %8 = alloca %struct.vfpf_update_coalesce*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_queue_cid*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qed_vf_queue*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %17, i32 0, i32 4
  store %struct.qed_iov_vf_mbx* %18, %struct.qed_iov_vf_mbx** %7, align 8
  %19 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %7, align 8
  %21 = getelementptr inbounds %struct.qed_iov_vf_mbx, %struct.qed_iov_vf_mbx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.vfpf_update_coalesce* %23, %struct.vfpf_update_coalesce** %8, align 8
  %24 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %8, align 8
  %25 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %8, align 8
  %28 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.vfpf_update_coalesce*, %struct.vfpf_update_coalesce** %8, align 8
  %31 = getelementptr inbounds %struct.vfpf_update_coalesce, %struct.vfpf_update_coalesce* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %37 = call i32 @qed_iov_validate_rxq(%struct.qed_hwfn* %33, %struct.qed_vf_info* %34, i64 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %3
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = load i32, i32* @QED_MSG_IOV, align 4
  %45 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %46 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %43, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48)
  br label %179

50:                                               ; preds = %39, %3
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %52 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i32, i32* @QED_IOV_VALIDATE_Q_ENABLE, align 4
  %55 = call i32 @qed_iov_validate_txq(%struct.qed_hwfn* %51, %struct.qed_vf_info* %52, i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = load i32, i32* @QED_MSG_IOV, align 4
  %63 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %64 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %61, i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %66)
  br label %179

68:                                               ; preds = %57, %50
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %70 = load i32, i32* @QED_MSG_IOV, align 4
  %71 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %72 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %15, align 8
  %77 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %69, i32 %70, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %68
  %81 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %82 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %81, i32 0, i32 3
  %83 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %83, i64 %84
  %86 = call %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue* %85)
  store %struct.qed_queue_cid* %86, %struct.qed_queue_cid** %10, align 8
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %88 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %10, align 8
  %91 = call i32 @qed_set_rxq_coalesce(%struct.qed_hwfn* %87, %struct.qed_ptt* %88, i64 %89, %struct.qed_queue_cid* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %80
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %96 = load i32, i32* @QED_MSG_IOV, align 4
  %97 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %98 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %101 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %100, i32 0, i32 3
  %102 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %101, align 8
  %103 = load i64, i64* %15, align 8
  %104 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %102, i64 %103
  %105 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %95, i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %106)
  br label %179

108:                                              ; preds = %80
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %111 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %68
  %113 = load i64, i64* %12, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %177

115:                                              ; preds = %112
  %116 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %117 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %116, i32 0, i32 3
  %118 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %118, i64 %119
  store %struct.qed_vf_queue* %120, %struct.qed_vf_queue** %16, align 8
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %170, %115
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @MAX_QUEUES_PER_QZONE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %173

125:                                              ; preds = %121
  %126 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %16, align 8
  %127 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  br label %170

136:                                              ; preds = %125
  %137 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %16, align 8
  %138 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %136
  br label %170

147:                                              ; preds = %136
  %148 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %149 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.qed_vf_queue*, %struct.qed_vf_queue** %16, align 8
  %152 = getelementptr inbounds %struct.qed_vf_queue, %struct.qed_vf_queue* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @qed_set_txq_coalesce(%struct.qed_hwfn* %148, %struct.qed_ptt* %149, i64 %150, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %147
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %164 = load i32, i32* @QED_MSG_IOV, align 4
  %165 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %166 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %163, i32 %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  br label %179

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169, %146, %135
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %121

173:                                              ; preds = %121
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %176 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %112
  %178 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %178, i32* %9, align 4
  br label %179

179:                                              ; preds = %177, %162, %94, %60, %42
  %180 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %181 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %182 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %183 = load i32, i32* @CHANNEL_TLV_COALESCE_UPDATE, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @qed_iov_prepare_resp(%struct.qed_hwfn* %180, %struct.qed_ptt* %181, %struct.qed_vf_info* %182, i32 %183, i32 4, i32 %184)
  ret void
}

declare dso_local i32 @qed_iov_validate_rxq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, ...) #1

declare dso_local i32 @qed_iov_validate_txq(%struct.qed_hwfn*, %struct.qed_vf_info*, i64, i32) #1

declare dso_local %struct.qed_queue_cid* @qed_iov_get_vf_rx_queue_cid(%struct.qed_vf_queue*) #1

declare dso_local i32 @qed_set_rxq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, i64, %struct.qed_queue_cid*) #1

declare dso_local i32 @qed_set_txq_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

declare dso_local i32 @qed_iov_prepare_resp(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
