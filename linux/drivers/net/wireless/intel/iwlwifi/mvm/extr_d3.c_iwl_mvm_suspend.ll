; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.cfg80211_wowlan = type { i32 }
%struct.iwl_mvm = type { i32, %struct.iwl_trans* }
%struct.iwl_trans = type { i32 }

@IWL_PLAT_PM_MODE_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_suspend(%struct.ieee80211_hw* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_trans*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %9)
  store %struct.iwl_mvm* %10, %struct.iwl_mvm** %6, align 8
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 1
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %12, align 8
  store %struct.iwl_trans* %13, %struct.iwl_trans** %7, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %15 = call i32 @iwl_mvm_pause_tcm(%struct.iwl_mvm* %14, i32 1)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = call i32 @iwl_fw_runtime_suspend(i32* %17)
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %20 = call i32 @iwl_trans_suspend(%struct.iwl_trans* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @IWL_PLAT_PM_MODE_D3, align 4
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %7, align 8
  %28 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %30 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %31 = call i32 @__iwl_mvm_suspend(%struct.ieee80211_hw* %29, %struct.cfg80211_wowlan* %30, i32 0)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %23
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_pause_tcm(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_fw_runtime_suspend(i32*) #1

declare dso_local i32 @iwl_trans_suspend(%struct.iwl_trans*) #1

declare dso_local i32 @__iwl_mvm_suspend(%struct.ieee80211_hw*, %struct.cfg80211_wowlan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
