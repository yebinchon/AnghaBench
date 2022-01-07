; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_probe_resp_set_noa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_probe_resp_set_noa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.iwl_probe_resp_data = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@WLAN_OUI_WFA = common dso_local global i32 0, align 4
@WLAN_OUI_TYPE_WFA_P2P = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"probe resp doesn't have P2P IE\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to reallocate probe resp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.sk_buff*)* @iwl_mvm_probe_resp_set_noa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_probe_resp_set_noa(%struct.iwl_mvm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_probe_resp_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [4 x i32], align 16
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %5, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32 %18)
  store %struct.iwl_mvm_vif* %19, %struct.iwl_mvm_vif** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %23, %struct.ieee80211_mgmt** %7, align 8
  %24 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %31 = bitcast %struct.ieee80211_mgmt* %30 to i32*
  %32 = ptrtoint i32* %29 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %38 = load i32, i32* @WLAN_OUI_WFA, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  store i32 %40, i32* %37, align 4
  %41 = getelementptr inbounds i32, i32* %37, i64 1
  %42 = load i32, i32* @WLAN_OUI_WFA, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds i32, i32* %41, i64 1
  %46 = load i32, i32* @WLAN_OUI_WFA, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %45, align 4
  %48 = getelementptr inbounds i32, i32* %45, i64 1
  %49 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  store i32 %49, i32* %48, align 4
  %50 = call i32 (...) @rcu_read_lock()
  %51 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.iwl_probe_resp_data* @rcu_dereference(i32 %53)
  store %struct.iwl_probe_resp_data* %54, %struct.iwl_probe_resp_data** %9, align 8
  %55 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %56 = icmp ne %struct.iwl_probe_resp_data* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %2
  br label %147

58:                                               ; preds = %2
  %59 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %60 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %147

65:                                               ; preds = %58
  %66 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %74, %76
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %79 = call i64 @cfg80211_find_ie_match(i32 %66, i64 %71, i64 %77, i32* %78, i32 4, i32 2)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %65
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = call i32 @IWL_DEBUG_TX(%struct.iwl_mvm* %84, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %147

86:                                               ; preds = %65
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i64 @skb_tailroom(%struct.sk_buff* %87)
  %89 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %90 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %96 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call i64 @pskb_expand_head(%struct.sk_buff* %94, i32 0, i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %103 = call i32 @IWL_ERR(%struct.iwl_mvm* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %147

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %86
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %108 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32* @skb_put(%struct.sk_buff* %106, i64 %109)
  store i32* %110, i32** %11, align 8
  %111 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %11, align 8
  store i32 %111, i32* %112, align 4
  %114 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %115 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 2
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32, i32* @WLAN_OUI_WFA, align 4
  %122 = ashr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %126 = load i32, i32* @WLAN_OUI_WFA, align 4
  %127 = ashr i32 %126, 8
  %128 = and i32 %127, 255
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %131 = load i32, i32* @WLAN_OUI_WFA, align 4
  %132 = and i32 %131, 255
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %11, align 8
  store i32 %132, i32* %133, align 4
  %135 = load i32, i32* @WLAN_OUI_TYPE_WFA_P2P, align 4
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %140 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.iwl_probe_resp_data*, %struct.iwl_probe_resp_data** %9, align 8
  %143 = getelementptr inbounds %struct.iwl_probe_resp_data, %struct.iwl_probe_resp_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub i64 %144, 4
  %146 = call i32 @memcpy(i32* %138, i32* %141, i64 %145)
  br label %147

147:                                              ; preds = %105, %101, %83, %64, %57
  %148 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_probe_resp_data* @rcu_dereference(i32) #1

declare dso_local i64 @cfg80211_find_ie_match(i32, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_mvm*, i8*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
