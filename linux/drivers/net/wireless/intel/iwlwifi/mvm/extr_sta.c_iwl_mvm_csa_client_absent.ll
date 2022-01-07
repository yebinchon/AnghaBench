; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_csa_client_absent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_csa_client_absent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_csa_client_absent(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %8 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %7)
  store %struct.iwl_mvm_vif* %8, %struct.iwl_mvm_vif** %5, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %11 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm* %10, i32 %13)
  store %struct.iwl_mvm_sta* %14, %struct.iwl_mvm_sta** %6, align 8
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %16 = icmp ne %struct.iwl_mvm_sta* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %24 = call i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm* %22, %struct.iwl_mvm_sta* %23, i32 1)
  br label %25

25:                                               ; preds = %21, %2
  %26 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_rcu(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
