; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm = type { i32, i32, i32*, i64, i32*, i64, %struct.ieee80211_vif*, i32, %struct.iwl_mvm_vif* }
%struct.iwl_mvm_vif = type { i64, i32*, i32, i32 }
%struct.iwl_probe_resp_data = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@rcu_head = common dso_local global i32 0, align 4
@IEEE80211_VIF_BEACON_FILTER = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_mac_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_probe_resp_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %6, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %14 = call i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm* %12, %struct.ieee80211_vif* %13)
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %29 = call i32 @iwl_mvm_tcm_rm_vif(%struct.iwl_mvm* %27, %struct.ieee80211_vif* %28)
  br label %30

30:                                               ; preds = %26, %20, %2
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 1
  %39 = call i32 @lockdep_is_held(i32* %38)
  %40 = call %struct.iwl_probe_resp_data* @rcu_dereference_protected(i32 %36, i32 %39)
  store %struct.iwl_probe_resp_data* %40, %struct.iwl_probe_resp_data** %7, align 8
  %41 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RCU_INIT_POINTER(i32 %43, i32* null)
  %45 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %7, align 8
  %46 = icmp ne %struct.iwl_probe_resp_data* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %7, align 8
  %49 = load i32, i32* @rcu_head, align 4
  %50 = call i32 @kfree_rcu(%struct.iwl_probe_resp_data* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %30
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 8
  %54 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %53, align 8
  %55 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %56 = icmp eq %struct.iwl_mvm_vif* %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 8
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %59, align 8
  %60 = load i32, i32* @IEEE80211_VIF_BEACON_FILTER, align 4
  %61 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %57, %51
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 7
  %77 = call i32 @memset(i32* %76, i32 0, i32 4)
  br label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %81 = call i32 @iwl_mvm_vif_dbgfs_clean(%struct.iwl_mvm* %79, %struct.ieee80211_vif* %80)
  %82 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %83 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %78
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %89 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87, %78
  %94 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %95 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %96 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %95, i32 0, i32 2
  %97 = call i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm* %94, i32* %96)
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %100 = call i32 @iwl_mvm_dealloc_bcast_sta(%struct.iwl_mvm* %98, %struct.ieee80211_vif* %99)
  br label %163

101:                                              ; preds = %87
  %102 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %103 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %108, i32 0, i32 4
  store i32* null, i32** %109, align 8
  %110 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %112 = call i32 @iwl_mvm_rm_p2p_bcast_sta(%struct.iwl_mvm* %110, %struct.ieee80211_vif* %111)
  %113 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %114 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %115 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %113, %struct.ieee80211_vif* %114)
  %116 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %117 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %118 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm* %116, i32* %119)
  %121 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %121, i32 0, i32 1
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %107, %101
  %124 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %125 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %136 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %134, %128, %123
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %141 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %140)
  %142 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %143 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %144 = call i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm* %142, %struct.ieee80211_vif* %143)
  %145 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %146 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @RCU_INIT_POINTER(i32 %152, i32* null)
  %154 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %139
  %160 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %161 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  br label %162

162:                                              ; preds = %159, %139
  br label %163

163:                                              ; preds = %162, %93
  %164 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %165 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %164, i32 0, i32 1
  %166 = call i32 @mutex_unlock(i32* %165)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_prepare_mac_removal(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_tcm_rm_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iwl_probe_resp_data* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.iwl_probe_resp_data*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_vif_dbgfs_clean(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_dealloc_int_sta(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_dealloc_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_rm_p2p_bcast_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_phy_ctxt_unref(%struct.iwl_mvm*, i32*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_remove(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
