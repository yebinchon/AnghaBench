; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwl_mvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_event*)* @iwl_mvm_mac_event_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_mac_event_callback(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_event* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_event*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_event* %2, %struct.ieee80211_event** %6, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %7, align 8
  %10 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 130, label %18
    i32 129, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %17 = call i32 @iwl_mvm_event_mlme_callback(%struct.iwl_mvm* %14, %struct.ieee80211_vif* %15, %struct.ieee80211_event* %16)
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %22 = call i32 @iwl_mvm_event_bar_rx_callback(%struct.iwl_mvm* %19, %struct.ieee80211_vif* %20, %struct.ieee80211_event* %21)
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iwl_mvm_event_frame_timeout_callback(%struct.iwl_mvm* %24, %struct.ieee80211_vif* %25, i32 %30, i32 %35)
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %23, %18, %13
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @iwl_mvm_event_mlme_callback(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_event*) #1

declare dso_local i32 @iwl_mvm_event_bar_rx_callback(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_event*) #1

declare dso_local i32 @iwl_mvm_event_frame_timeout_callback(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
