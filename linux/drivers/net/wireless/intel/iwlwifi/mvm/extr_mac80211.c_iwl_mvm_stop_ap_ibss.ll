; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_stop_ap_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_stop_ap_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.iwl_mvm = type { i32, %struct.TYPE_2__*, i64, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@LOW_LATENCY_VIF_TYPE = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_STA_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_stop_ap_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_stop_ap_ibss(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %7)
  store %struct.iwl_mvm* %8, %struct.iwl_mvm** %5, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %6, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = call i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm* %11, %struct.ieee80211_vif* %12)
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_vif* @rcu_access_pointer(i32 %19)
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = icmp eq %struct.ieee80211_vif* %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 3
  %28 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %24, %struct.iwl_mvm_vif* %25, i32* %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @RCU_INIT_POINTER(i32 %31, i32* null)
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %23, %2
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.ieee80211_vif* @rcu_access_pointer(i32 %38)
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %41 = icmp eq %struct.ieee80211_vif* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RCU_INIT_POINTER(i32 %45, i32* null)
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %49
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %61 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %66 = load i32, i32* @LOW_LATENCY_VIF_TYPE, align 4
  %67 = call i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif* %65, i32 0, i32 %66)
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %69 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm* %68, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %64, %59, %49
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %75 = call i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm* %74)
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %82 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %86, i64 %89, i32 0, i32* null)
  br label %91

91:                                               ; preds = %85, %80, %73
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %92, i32 0, i32* null)
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %99 = call i64 @fw_has_api(i32* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %91
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %104 = call i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm* %102, %struct.ieee80211_vif* %103)
  br label %105

105:                                              ; preds = %101, %91
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %107 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %108 = call i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm* %106, %struct.ieee80211_vif* %107)
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %110 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* @IWL_UCODE_TLV_API_STA_TYPE, align 4
  %114 = call i64 @fw_has_api(i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %105
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %118 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %119 = call i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm* %117, %struct.ieee80211_vif* %118)
  br label %120

120:                                              ; preds = %116, %105
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %123 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %121, %struct.ieee80211_vif* %122)
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %125 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %124)
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %128 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %126, %struct.ieee80211_vif* %127)
  %129 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %130 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_vif* @rcu_access_pointer(i32) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @iwl_mvm_vif_set_low_latency(%struct.iwl_mvm_vif*, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_low_latency_cmd(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_change(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, i64, i32, i32*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, i32*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_rm_mcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_send_rm_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
