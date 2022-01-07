; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_tunnel_param_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_tunnel_param_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov*, %struct.TYPE_4__* }
%struct.qed_vf_iov = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.pfvf_update_tunn_param_tlv }
%struct.pfvf_update_tunn_param_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.qed_tunnel_info }
%struct.qed_tunnel_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.vfpf_update_tunn_param_tlv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CHANNEL_TLV_UPDATE_TUNN_PARAM = common dso_local global i32 0, align 4
@QED_MODE_VXLAN_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GRE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGRE_TUNN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to update tunnel parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_tunnel_param_update(%struct.qed_hwfn* %0, %struct.qed_tunnel_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_tunnel_info*, align 8
  %5 = alloca %struct.qed_tunnel_info*, align 8
  %6 = alloca %struct.qed_vf_iov*, align 8
  %7 = alloca %struct.pfvf_update_tunn_param_tlv*, align 8
  %8 = alloca %struct.vfpf_update_tunn_param_tlv*, align 8
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_tunnel_info* %1, %struct.qed_tunnel_info** %4, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.qed_tunnel_info* %13, %struct.qed_tunnel_info** %5, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %15, align 8
  store %struct.qed_vf_iov* %16, %struct.qed_vf_iov** %6, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = load i32, i32* @CHANNEL_TLV_UPDATE_TUNN_PARAM, align 4
  %19 = call %struct.vfpf_update_tunn_param_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %17, i32 %18, i32 40)
  store %struct.vfpf_update_tunn_param_tlv* %19, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %20 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %21 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %26 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %31 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24, %2
  %33 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %34 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %35 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %34, i32 0, i32 6
  %36 = load i32, i32* @QED_MODE_VXLAN_TUNN, align 4
  %37 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %38 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %37, i32 0, i32 9
  %39 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %40 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %39, i32 0, i32 5
  %41 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %42 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %41, i32 0, i32 8
  %43 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %44 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %43, i32 0, i32 7
  %45 = call i32 @qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %33, i32* %35, i32 %36, i32* %38, i32* %40, i32* %42, i32* %44)
  %46 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %47 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %48 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %47, i32 0, i32 4
  %49 = load i32, i32* @QED_MODE_L2GENEVE_TUNN, align 4
  %50 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %51 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %50, i32 0, i32 6
  %52 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %53 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %52, i32 0, i32 3
  %54 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %55 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %54, i32 0, i32 5
  %56 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %57 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %56, i32 0, i32 4
  %58 = call i32 @qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %46, i32* %48, i32 %49, i32* %51, i32* %53, i32* %55, i32* %57)
  %59 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %60 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %61 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %60, i32 0, i32 2
  %62 = load i32, i32* @QED_MODE_IPGENEVE_TUNN, align 4
  %63 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %64 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %63, i32 0, i32 3
  %65 = call i32 @__qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %59, i32* %61, i32 %62, i32* %64)
  %66 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %67 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %68 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %67, i32 0, i32 1
  %69 = load i32, i32* @QED_MODE_L2GRE_TUNN, align 4
  %70 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %71 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %70, i32 0, i32 2
  %72 = call i32 @__qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %66, i32* %68, i32 %69, i32* %71)
  %73 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %74 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %4, align 8
  %75 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %74, i32 0, i32 0
  %76 = load i32, i32* @QED_MODE_IPGRE_TUNN, align 4
  %77 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %8, align 8
  %78 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %77, i32 0, i32 1
  %79 = call i32 @__qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %73, i32* %75, i32 %76, i32* %78)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %81 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %82 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %81, i32 0, i32 1
  %83 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %84 = call i32 @qed_add_tlv(%struct.qed_hwfn* %80, i32* %82, i32 %83, i32 4)
  %85 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %86 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.pfvf_update_tunn_param_tlv* %88, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %90 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %91 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %89, i64* %92, i32 8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %32
  br label %115

97:                                               ; preds = %32
  %98 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %99 = getelementptr inbounds %struct.pfvf_update_tunn_param_tlv, %struct.pfvf_update_tunn_param_tlv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %106 = load i32, i32* @QED_MSG_IOV, align 4
  %107 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %105, i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %112 = load %struct.qed_tunnel_info*, %struct.qed_tunnel_info** %5, align 8
  %113 = load %struct.pfvf_update_tunn_param_tlv*, %struct.pfvf_update_tunn_param_tlv** %7, align 8
  %114 = call i32 @qed_vf_update_tunn_param(%struct.qed_hwfn* %111, %struct.qed_tunnel_info* %112, %struct.pfvf_update_tunn_param_tlv* %113)
  br label %115

115:                                              ; preds = %110, %96
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  ret i32 %119
}

declare dso_local %struct.vfpf_update_tunn_param_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv*, i32*, i32, i32*) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @qed_vf_update_tunn_param(%struct.qed_hwfn*, %struct.qed_tunnel_info*, %struct.pfvf_update_tunn_param_tlv*) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
