; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_scan.c_iwl_mvm_fill_scan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_scan_params = type { i8*, i8* }
%struct.ieee80211_vif = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_scan_params*, %struct.ieee80211_vif*)* @iwl_mvm_fill_scan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_fill_scan_type(%struct.iwl_mvm* %0, %struct.iwl_mvm_scan_params* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_scan_params*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_scan_params* %1, %struct.iwl_mvm_scan_params** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %8 = call i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %14 = call i8* @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %11, %struct.ieee80211_vif* %12, i32 %13)
  %15 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %20 = call i8* @iwl_mvm_get_scan_type_band(%struct.iwl_mvm* %17, %struct.ieee80211_vif* %18, i32 %19)
  %21 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %26 = call i8* @iwl_mvm_get_scan_type(%struct.iwl_mvm* %24, %struct.ieee80211_vif* %25)
  %27 = load %struct.iwl_mvm_scan_params*, %struct.iwl_mvm_scan_params** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_scan_params, %struct.iwl_mvm_scan_params* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %23, %10
  ret void
}

declare dso_local i64 @iwl_mvm_is_cdb_supported(%struct.iwl_mvm*) #1

declare dso_local i8* @iwl_mvm_get_scan_type_band(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i8* @iwl_mvm_get_scan_type(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
