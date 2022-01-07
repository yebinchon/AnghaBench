; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_put_target_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-initiator.c_iwl_mvm_ftm_put_target_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.cfg80211_pmsr_request_peer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.iwl_tof_range_req_ap_entry_v2 = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IWL_MVM_FTM_INITIATOR_DYNACK = common dso_local global i32 0, align 4
@IWL_TOF_LOC_LCI = common dso_local global i32 0, align 4
@IWL_TOF_LOC_CIVIC = common dso_local global i32 0, align 4
@IWL_MVM_FTM_INITIATOR_ALGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.cfg80211_pmsr_request_peer*, %struct.iwl_tof_range_req_ap_entry_v2*)* @iwl_mvm_ftm_put_target_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_ftm_put_target_v2(%struct.iwl_mvm* %0, %struct.cfg80211_pmsr_request_peer* %1, %struct.iwl_tof_range_req_ap_entry_v2* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.cfg80211_pmsr_request_peer*, align 8
  %7 = alloca %struct.iwl_tof_range_req_ap_entry_v2*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.cfg80211_pmsr_request_peer* %1, %struct.cfg80211_pmsr_request_peer** %6, align 8
  store %struct.iwl_tof_range_req_ap_entry_v2* %2, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %11 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %11, i32 0, i32 12
  %13 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %13, i32 0, i32 11
  %15 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %16 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %15, i32 0, i32 10
  %17 = call i32 @iwl_mvm_ftm_target_chandef(%struct.iwl_mvm* %9, %struct.cfg80211_pmsr_request_peer* %10, i32* %12, i32* %14, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %94

22:                                               ; preds = %3
  %23 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ETH_ALEN, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %39 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %45 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %53 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @IWL_MVM_FTM_INITIATOR_DYNACK, align 4
  %65 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %66 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %68 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %22
  %73 = load i32, i32* @IWL_TOF_LOC_LCI, align 4
  %74 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %75 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %22
  %79 = load %struct.cfg80211_pmsr_request_peer*, %struct.cfg80211_pmsr_request_peer** %6, align 8
  %80 = getelementptr inbounds %struct.cfg80211_pmsr_request_peer, %struct.cfg80211_pmsr_request_peer* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @IWL_TOF_LOC_CIVIC, align 4
  %86 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %87 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32, i32* @IWL_MVM_FTM_INITIATOR_ALGO, align 4
  %92 = load %struct.iwl_tof_range_req_ap_entry_v2*, %struct.iwl_tof_range_req_ap_entry_v2** %7, align 8
  %93 = getelementptr inbounds %struct.iwl_tof_range_req_ap_entry_v2, %struct.iwl_tof_range_req_ap_entry_v2* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @iwl_mvm_ftm_target_chandef(%struct.iwl_mvm*, %struct.cfg80211_pmsr_request_peer*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
