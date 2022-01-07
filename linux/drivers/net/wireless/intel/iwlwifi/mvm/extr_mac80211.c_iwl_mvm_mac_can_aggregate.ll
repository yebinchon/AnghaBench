; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_can_aggregate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_can_aggregate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iwl_mvm = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.sk_buff*)* @iwl_mvm_mac_can_aggregate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_can_aggregate(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @ETH_P_IP, align 4
  %15 = call i64 @htons(i32 %14)
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %20 = call i32 @iwl_mvm_is_csum_supported(%struct.iwl_mvm* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %30

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i64 @iwl_mvm_can_hw_csum(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @iwl_mvm_can_hw_csum(%struct.sk_buff* %26)
  %28 = icmp eq i64 %25, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %23, %22, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @iwl_mvm_is_csum_supported(%struct.iwl_mvm*) #1

declare dso_local i64 @iwl_mvm_can_hw_csum(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
