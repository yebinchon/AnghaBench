; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_pass_packet_to_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_pass_packet_to_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.napi_struct = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.napi_struct*, %struct.sk_buff*, i32, %struct.ieee80211_sta*, i32)* @iwl_mvm_pass_packet_to_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_pass_packet_to_mac80211(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.sk_buff* %2, i32 %3, %struct.ieee80211_sta* %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.napi_struct*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %17 = call i64 @iwl_mvm_check_pn(%struct.iwl_mvm* %13, %struct.sk_buff* %14, i32 %15, %struct.ieee80211_sta* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call i32 @kfree_skb(%struct.sk_buff* %20)
  br label %30

22:                                               ; preds = %6
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load %struct.napi_struct*, %struct.napi_struct** %8, align 8
  %29 = call i32 @ieee80211_rx_napi(i32 %25, %struct.ieee80211_sta* %26, %struct.sk_buff* %27, %struct.napi_struct* %28)
  br label %30

30:                                               ; preds = %22, %19
  ret void
}

declare dso_local i64 @iwl_mvm_check_pn(%struct.iwl_mvm*, %struct.sk_buff*, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_napi(i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
