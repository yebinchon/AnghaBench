; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_skb_prepare_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_skb_prepare_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.iwl_device_cmd = type { i32 }
%struct.ieee80211_tx_info = type { %struct.iwl_device_cmd**, %struct.iwl_device_cmd* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.iwl_device_cmd*)* @iwl_mvm_skb_prepare_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_skb_prepare_status(%struct.sk_buff* %0, %struct.iwl_device_cmd* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.iwl_device_cmd*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.iwl_device_cmd* %1, %struct.iwl_device_cmd** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %6)
  store %struct.ieee80211_tx_info* %7, %struct.ieee80211_tx_info** %5, align 8
  %8 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %8, i32 0, i32 1
  %10 = call i32 @memset(%struct.iwl_device_cmd** %9, i32 0, i32 8)
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = load %struct.iwl_device_cmd**, %struct.iwl_device_cmd*** %12, align 8
  %14 = call i32 @memset(%struct.iwl_device_cmd** %13, i32 0, i32 8)
  %15 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %4, align 8
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 0
  %18 = load %struct.iwl_device_cmd**, %struct.iwl_device_cmd*** %17, align 8
  %19 = getelementptr inbounds %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %18, i64 1
  store %struct.iwl_device_cmd* %15, %struct.iwl_device_cmd** %19, align 8
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.iwl_device_cmd**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
