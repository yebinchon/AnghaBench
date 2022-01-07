; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_vif_from_mac80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_vif_from_mac80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_vif = type opaque
%struct.ieee80211_vif = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_mvm_vif* (%struct.ieee80211_vif*)* @iwl_mvm_vif_from_mac80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %0) #0 {
  %2 = alloca %struct.iwl_mvm_vif*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %3, align 8
  %4 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %5 = icmp ne %struct.ieee80211_vif* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.iwl_mvm_vif* null, %struct.iwl_mvm_vif** %2, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.iwl_mvm_vif*
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %2, align 8
  br label %13

13:                                               ; preds = %7, %6
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %2, align 8
  ret %struct.iwl_mvm_vif* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
