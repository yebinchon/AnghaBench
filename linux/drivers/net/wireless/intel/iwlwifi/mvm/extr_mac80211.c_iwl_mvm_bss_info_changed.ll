; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.iwl_mvm = type { i32 }

@BSS_CHANGED_IDLE = common dso_local global i32 0, align 4
@IWL_MVM_SCAN_SCHED = common dso_local global i32 0, align 4
@BSS_CHANGED_MU_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @iwl_mvm_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %9, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BSS_CHANGED_IDLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %26 = load i32, i32* @IWL_MVM_SCAN_SCHED, align 4
  %27 = call i32 @iwl_mvm_scan_stop(%struct.iwl_mvm* %25, i32 %26, i32 1)
  br label %28

28:                                               ; preds = %24, %19, %4
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %54 [
    i32 128, label %32
    i32 130, label %38
    i32 131, label %38
    i32 129, label %44
  ]

32:                                               ; preds = %28
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @iwl_mvm_bss_info_changed_station(%struct.iwl_mvm* %33, %struct.ieee80211_vif* %34, %struct.ieee80211_bss_conf* %35, i32 %36)
  br label %56

38:                                               ; preds = %28, %28
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %41 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @iwl_mvm_bss_info_changed_ap_ibss(%struct.iwl_mvm* %39, %struct.ieee80211_vif* %40, %struct.ieee80211_bss_conf* %41, i32 %42)
  br label %56

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSS_CHANGED_MU_GROUPS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %52 = call i32 @iwl_mvm_update_mu_groups(%struct.iwl_mvm* %50, %struct.ieee80211_vif* %51)
  br label %53

53:                                               ; preds = %49, %44
  br label %56

54:                                               ; preds = %28
  %55 = call i32 @WARN_ON_ONCE(i32 1)
  br label %56

56:                                               ; preds = %54, %53, %38, %32
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_scan_stop(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_bss_info_changed_station(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @iwl_mvm_bss_info_changed_ap_ibss(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @iwl_mvm_update_mu_groups(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
