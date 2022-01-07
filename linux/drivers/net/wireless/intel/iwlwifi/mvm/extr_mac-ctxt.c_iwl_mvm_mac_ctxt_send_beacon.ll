; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_send_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_NON_TRANSMITTING_AP = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_CSA_AND_TBTT_OFFLOAD = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_send_beacon(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i64, i64* @IWL_MVM_NON_TRANSMITTING_AP, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %52

21:                                               ; preds = %17
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @IWL_UCODE_TLV_CAPA_CSA_AND_TBTT_OFFLOAD, align 4
  %27 = call i32 @fw_has_capa(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @iwl_mvm_mac_ctxt_send_beacon_v6(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %21
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE, align 4
  %40 = call i64 @fw_has_api(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %44 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @iwl_mvm_mac_ctxt_send_beacon_v9(%struct.iwl_mvm* %43, %struct.ieee80211_vif* %44, %struct.sk_buff* %45)
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %34
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @iwl_mvm_mac_ctxt_send_beacon_v7(%struct.iwl_mvm* %48, %struct.ieee80211_vif* %49, %struct.sk_buff* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42, %29, %20, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_v6(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_v9(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_send_beacon_v7(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
