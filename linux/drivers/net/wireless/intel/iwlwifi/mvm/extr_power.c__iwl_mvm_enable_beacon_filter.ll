; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c__iwl_mvm_enable_beacon_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c__iwl_mvm_enable_beacon_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.iwl_mvm_vif* }
%struct.iwl_mvm_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_beacon_filter_cmd = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_beacon_filter_cmd*, i32)* @_iwl_mvm_enable_beacon_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_beacon_filter_cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.iwl_beacon_filter_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.iwl_beacon_filter_cmd* %2, %struct.iwl_beacon_filter_cmd** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %10, align 8
  %14 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %16, align 8
  %18 = icmp ne %struct.iwl_mvm_vif* %14, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %25, %19, %4
  store i32 0, i32* %5, align 4
  br label %57

37:                                               ; preds = %31
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %40 = load %struct.iwl_beacon_filter_cmd*, %struct.iwl_beacon_filter_cmd** %8, align 8
  %41 = call i32 @iwl_mvm_beacon_filter_set_cqm_params(%struct.iwl_mvm* %38, %struct.ieee80211_vif* %39, %struct.iwl_beacon_filter_cmd* %40)
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %43 = load %struct.iwl_beacon_filter_cmd*, %struct.iwl_beacon_filter_cmd** %8, align 8
  %44 = call i32 @iwl_mvm_beacon_filter_debugfs_parameters(%struct.ieee80211_vif* %42, %struct.iwl_beacon_filter_cmd* %43)
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %46 = load %struct.iwl_beacon_filter_cmd*, %struct.iwl_beacon_filter_cmd** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @iwl_mvm_beacon_filter_send_cmd(%struct.iwl_mvm* %45, %struct.iwl_beacon_filter_cmd* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %37
  %52 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %36
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_beacon_filter_set_cqm_params(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_beacon_filter_cmd*) #1

declare dso_local i32 @iwl_mvm_beacon_filter_debugfs_parameters(%struct.ieee80211_vif*, %struct.iwl_beacon_filter_cmd*) #1

declare dso_local i32 @iwl_mvm_beacon_filter_send_cmd(%struct.iwl_mvm*, %struct.iwl_beacon_filter_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
