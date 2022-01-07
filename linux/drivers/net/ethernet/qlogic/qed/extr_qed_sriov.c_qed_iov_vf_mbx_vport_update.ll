; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_vport_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_vf_mbx_vport_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, i32, i32, i32, %struct.qed_iov_vf_mbx }
%struct.qed_iov_vf_mbx = type { i32 }
%struct.qed_rss_params = type { i32 }
%struct.qed_sp_vport_update_params = type { i32*, i32, i32 }
%struct.qed_sge_tpa_params = type { i32 }

@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"No VPORT instance available for VF[%d], failing vport update\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Upper-layer prevents VF vport configuration\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"No feature tlvs found for vport update\0A\00", align 1
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*)* @qed_iov_vf_mbx_vport_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_vf_mbx_vport_update(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_vf_info*, align 8
  %7 = alloca %struct.qed_rss_params*, align 8
  %8 = alloca %struct.qed_sp_vport_update_params, align 8
  %9 = alloca %struct.qed_iov_vf_mbx*, align 8
  %10 = alloca %struct.qed_sge_tpa_params, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %6, align 8
  store %struct.qed_rss_params* null, %struct.qed_rss_params** %7, align 8
  %16 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %17 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %16, i32 0, i32 5
  store %struct.qed_iov_vf_mbx* %17, %struct.qed_iov_vf_mbx** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %20 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %25 = load i32, i32* @QED_MSG_IOV, align 4
  %26 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %27 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %24, i32 %25, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %30, i32* %13, align 4
  br label %110

31:                                               ; preds = %3
  %32 = call %struct.qed_rss_params* @vzalloc(i32 4)
  store %struct.qed_rss_params* %32, %struct.qed_rss_params** %7, align 8
  %33 = load %struct.qed_rss_params*, %struct.qed_rss_params** %7, align 8
  %34 = icmp eq %struct.qed_rss_params* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %36, i32* %13, align 4
  br label %110

37:                                               ; preds = %31
  %38 = call i32 @memset(%struct.qed_sp_vport_update_params* %8, i32 0, i32 16)
  %39 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %40 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %44 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %8, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %50 = call i32 @qed_iov_vp_update_act_param(%struct.qed_hwfn* %48, %struct.qed_sp_vport_update_params* %8, %struct.qed_iov_vf_mbx* %49, i64* %11)
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %52 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %53 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %54 = call i32 @qed_iov_vp_update_vlan_param(%struct.qed_hwfn* %51, %struct.qed_sp_vport_update_params* %8, %struct.qed_vf_info* %52, %struct.qed_iov_vf_mbx* %53, i64* %11)
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %56 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %57 = call i32 @qed_iov_vp_update_tx_switch(%struct.qed_hwfn* %55, %struct.qed_sp_vport_update_params* %8, %struct.qed_iov_vf_mbx* %56, i64* %11)
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %59 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %60 = call i32 @qed_iov_vp_update_mcast_bin_param(%struct.qed_hwfn* %58, %struct.qed_sp_vport_update_params* %8, %struct.qed_iov_vf_mbx* %59, i64* %11)
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %63 = call i32 @qed_iov_vp_update_accept_flag(%struct.qed_hwfn* %61, %struct.qed_sp_vport_update_params* %8, %struct.qed_iov_vf_mbx* %62, i64* %11)
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %65 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %66 = call i32 @qed_iov_vp_update_accept_any_vlan(%struct.qed_hwfn* %64, %struct.qed_sp_vport_update_params* %8, %struct.qed_iov_vf_mbx* %65, i64* %11)
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %68 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %69 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %70 = call i32 @qed_iov_vp_update_sge_tpa_param(%struct.qed_hwfn* %67, %struct.qed_vf_info* %68, %struct.qed_sp_vport_update_params* %8, %struct.qed_sge_tpa_params* %10, %struct.qed_iov_vf_mbx* %69, i64* %11)
  %71 = load i64, i64* %11, align 8
  store i64 %71, i64* %12, align 8
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %73 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %74 = load %struct.qed_rss_params*, %struct.qed_rss_params** %7, align 8
  %75 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %76 = call i32 @qed_iov_vp_update_rss_param(%struct.qed_hwfn* %72, %struct.qed_vf_info* %73, %struct.qed_sp_vport_update_params* %8, %struct.qed_rss_params* %74, %struct.qed_iov_vf_mbx* %75, i64* %11, i64* %12)
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %78 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %79 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @qed_iov_pre_update_vport(%struct.qed_hwfn* %77, i32 %80, %struct.qed_sp_vport_update_params* %8, i64* %12)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %37
  store i64 0, i64* %12, align 8
  %84 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  store i32 %84, i32* %13, align 4
  br label %110

85:                                               ; preds = %37
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %93 = load i32, i32* @QED_MSG_IOV, align 4
  %94 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %92, i32 %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %99

95:                                               ; preds = %88
  %96 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %97 = load i32, i32* @QED_MSG_IOV, align 4
  %98 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %96, i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  store i32 %100, i32* %13, align 4
  br label %110

101:                                              ; preds = %85
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %103 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %104 = call i32 @qed_sp_vport_update(%struct.qed_hwfn* %102, %struct.qed_sp_vport_update_params* %8, i32 %103, i32* null)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %101
  br label %110

110:                                              ; preds = %109, %99, %83, %35, %23
  %111 = load %struct.qed_rss_params*, %struct.qed_rss_params** %7, align 8
  %112 = call i32 @vfree(%struct.qed_rss_params* %111)
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %114 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %115 = load %struct.qed_iov_vf_mbx*, %struct.qed_iov_vf_mbx** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i64 @qed_iov_prep_vp_update_resp_tlvs(%struct.qed_hwfn* %113, %struct.qed_vf_info* %114, %struct.qed_iov_vf_mbx* %115, i32 %116, i64 %117, i64 %118)
  store i64 %119, i64* %14, align 8
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %121 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %122 = load %struct.qed_vf_info*, %struct.qed_vf_info** %6, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @qed_iov_send_response(%struct.qed_hwfn* %120, %struct.qed_ptt* %121, %struct.qed_vf_info* %122, i64 %123, i32 %124)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.qed_rss_params* @vzalloc(i32) #1

declare dso_local i32 @memset(%struct.qed_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @qed_iov_vp_update_act_param(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_vlan_param(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_vf_info*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_tx_switch(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_mcast_bin_param(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_accept_flag(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_accept_any_vlan(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_sge_tpa_param(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_sp_vport_update_params*, %struct.qed_sge_tpa_params*, %struct.qed_iov_vf_mbx*, i64*) #1

declare dso_local i32 @qed_iov_vp_update_rss_param(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_sp_vport_update_params*, %struct.qed_rss_params*, %struct.qed_iov_vf_mbx*, i64*, i64*) #1

declare dso_local i64 @qed_iov_pre_update_vport(%struct.qed_hwfn*, i32, %struct.qed_sp_vport_update_params*, i64*) #1

declare dso_local i32 @qed_sp_vport_update(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*, i32, i32*) #1

declare dso_local i32 @vfree(%struct.qed_rss_params*) #1

declare dso_local i64 @qed_iov_prep_vp_update_resp_tlvs(%struct.qed_hwfn*, %struct.qed_vf_info*, %struct.qed_iov_vf_mbx*, i32, i64, i64) #1

declare dso_local i32 @qed_iov_send_response(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
