; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_mvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @iwl_mvm_mac_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %5)
  store %struct.iwl_mvm* %6, %struct.iwl_mvm** %3, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = call i32 @__iwl_mvm_mac_start(%struct.iwl_mvm* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__iwl_mvm_mac_start(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
