; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_put_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_put_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.cfg80211_pmsr_request_peer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.iwl_tof_range_req_ap_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ASAP = common dso_local global i32 0, align 4
@LCI_REQUEST = common dso_local global i32 0, align 4
@CIVIC_REQUEST = common dso_local global i32 0, align 4
@IWL_MVM_FTM_INITIATOR_DYNACK = common dso_local global i64 0, align 8
@DYN_ACK = common dso_local global i32 0, align 4
@IWL_MVM_FTM_INITIATOR_ALGO = common dso_local global i64 0, align 8
@IWL_TOF_ALGO_TYPE_LINEAR_REG = common dso_local global i64 0, align 8
@ALGO_LR = common dso_local global i32 0, align 4
@IWL_TOF_ALGO_TYPE_FFT = common dso_local global i64 0, align 8
@ALGO_FFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.cfg80211_pmsr_request_peer*, %struct.iwl_tof_range_req_ap_entry*)* @iwl_mvm_ftm_put_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_ftm_put_target(%struct.iwl_mvm* %0, %struct.cfg80211_pmsr_request_peer* %1, %struct.iwl_tof_range_req_ap_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.cfg80211_pmsr_request_peer*, align 8
  %7 = alloca %struct.iwl_tof_range_req_ap_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.cfg80211_pmsr_request_peer* %1, %struct.cfg80211_pmsr_request_peer** %6, align 8
  store %struct.iwl_tof_range_req_ap_entry* %2, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %11 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %11, i32 0, i32 8
  %13 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %13, i32 0, i32 7
  %15 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %15, i32 0, i32 6
  %17 = call i32 @iwl_mvm_ftm_target_chandef(%struct.iwl_mvm* %9, %struct.cfg80211_pmsr_request_peer* %10, i32* %12, i32* %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %51 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = call i32 @cpu_to_le32(i32 0)
  %57 = load %struct.iwl_tof_range_req_ap_entry*, %struct.iwl_tof_range_req_ap_entry** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry, %struct.iwl_tof_range_req_ap_entry* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %60 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %22
  %65 = load i32, i32* @ASAP, align 4
  %66 = call i32 @FTM_PUT_FLAG(i32 %65)
  br label %67

67:                                               ; preds = %64, %22
  %68 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %69 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @LCI_REQUEST, align 4
  %75 = call i32 @FTM_PUT_FLAG(i32 %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %78 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @CIVIC_REQUEST, align 4
  %84 = call i32 @FTM_PUT_FLAG(i32 %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i64, i64* @IWL_MVM_FTM_INITIATOR_DYNACK, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @DYN_ACK, align 4
  %90 = call i32 @FTM_PUT_FLAG(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i64, i64* @IWL_MVM_FTM_INITIATOR_ALGO, align 8
  %93 = load i64, i64* @IWL_TOF_ALGO_TYPE_LINEAR_REG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @ALGO_LR, align 4
  %97 = call i32 @FTM_PUT_FLAG(i32 %96)
  br label %106

98:                                               ; preds = %91
  %99 = load i64, i64* @IWL_MVM_FTM_INITIATOR_ALGO, align 8
  %100 = load i64, i64* @IWL_TOF_ALGO_TYPE_FFT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @ALGO_FFT, align 4
  %104 = call i32 @FTM_PUT_FLAG(i32 %103)
  br label %105

105:                                              ; preds = %102, %98
  br label %106

106:                                              ; preds = %105, %95
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @iwl_mvm_ftm_target_chandef(%struct.iwl_mvm*, %struct.cfg80211_pmsr_request_peer*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FTM_PUT_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
