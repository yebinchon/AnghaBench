; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_mvm_vif_dbgfs_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs-vif.c_iwl_mvm_vif_dbgfs_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_vif_dbgfs_clean(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %7 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %6)
  store %struct.iwl_mvm_vif* %7, %struct.iwl_mvm_vif** %5, align 8
  %8 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @debugfs_remove(i32* %10)
  %12 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @debugfs_remove_recursive(i32* %16)
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @debugfs_remove(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
