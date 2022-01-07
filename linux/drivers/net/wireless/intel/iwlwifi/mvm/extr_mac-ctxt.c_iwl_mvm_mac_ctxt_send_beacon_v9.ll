; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.iwl_mvm_vif = type { i64 }
%struct.ieee80211_tx_info = type { i32 }
%struct.iwl_mac_beacon_cmd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@IWL_FIRST_CCK_RATE = common dso_local global i64 0, align 8
@IWL_MAC_BEACON_CCK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@WLAN_EID_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@WLAN_EID_EXT_CHANSWITCH_ANN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*)* @iwl_mvm_mac_ctxt_send_beacon_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctxt_send_beacon_v9(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.iwl_mac_beacon_cmd, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %14)
  store %struct.ieee80211_tx_info* %15, %struct.ieee80211_tx_info** %8, align 8
  %16 = bitcast %struct.iwl_mac_beacon_cmd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 48, i1 false)
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = call i64 @iwl_mvm_mac_ctxt_get_lowest_rate(%struct.ieee80211_tx_info* %17, %struct.ieee80211_vif* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @iwl_mvm_mac80211_idx_to_hwrate(i64 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @IWL_FIRST_CCK_RATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @IWL_MAC_BEACON_CCK, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i32, i32* %11, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  %39 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %29
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 3
  %53 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 2
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm* %51, i32* %52, i32* %53, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %50, %29
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WLAN_EID_CHANNEL_SWITCH, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @iwl_mvm_find_ie_offset(i32 %64, i32 %65, i64 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 1
  store i8* %70, i8** %71, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WLAN_EID_EXT_CHANSWITCH_ANN, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @iwl_mvm_find_ie_offset(i32 %74, i32 %75, i64 %78)
  %80 = call i8* @cpu_to_le32(i32 %79)
  %81 = getelementptr inbounds %struct.iwl_mac_beacon_cmd, %struct.iwl_mac_beacon_cmd* %9, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm* %82, %struct.sk_buff* %83, %struct.iwl_mac_beacon_cmd* %9, i32 48)
  ret i32 %84
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @iwl_mvm_mac_ctxt_get_lowest_rate(%struct.ieee80211_tx_info*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac80211_idx_to_hwrate(i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_set_tim(%struct.iwl_mvm*, i32*, i32*, i32, i64) #1

declare dso_local i32 @iwl_mvm_find_ie_offset(i32, i32, i64) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_cmd(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_mac_beacon_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
