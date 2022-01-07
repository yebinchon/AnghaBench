; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_get_scan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*)* @iwl_mvm_get_scan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_get_scan_type(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %8 = call i32 @iwl_mvm_get_traffic_load(%struct.iwl_mvm* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = call i32 @iwl_mvm_low_latency(%struct.iwl_mvm* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @_iwl_mvm_get_scan_type(%struct.iwl_mvm* %11, %struct.ieee80211_vif* %12, i32 %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @iwl_mvm_get_traffic_load(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_low_latency(%struct.iwl_mvm*) #1

declare dso_local i32 @_iwl_mvm_get_scan_type(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
