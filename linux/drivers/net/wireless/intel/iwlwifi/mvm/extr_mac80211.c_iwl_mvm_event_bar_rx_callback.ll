; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_event_bar_rx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_event_bar_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.iwl_fw_dbg_trigger_ba = type { i32 }

@FW_DBG_TRIGGER_BA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BAR received from %pM, tid %d, ssn %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_event*)* @iwl_mvm_event_bar_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_event_bar_rx_callback(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_event* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_event*, align 8
  %7 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %8 = alloca %struct.iwl_fw_dbg_trigger_ba*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_event* %2, %struct.ieee80211_event** %6, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %12 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %11)
  %13 = load i32, i32* @FW_DBG_TRIGGER_BA, align 4
  %14 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %10, i32 %12, i32 %13)
  store %struct.iwl_fw_dbg_trigger_tlv* %14, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %15 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %16 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.iwl_fw_dbg_trigger_ba*
  store %struct.iwl_fw_dbg_trigger_ba* %23, %struct.iwl_fw_dbg_trigger_ba** %8, align 8
  %24 = load %struct.iwl_fw_dbg_trigger_ba*, %struct.iwl_fw_dbg_trigger_ba** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_ba, %struct.iwl_fw_dbg_trigger_ba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %27, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  br label %59

37:                                               ; preds = %18
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %7, align 8
  %41 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ieee80211_event*, %struct.ieee80211_event** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @iwl_fw_dbg_collect_trig(i32* %39, %struct.iwl_fw_dbg_trigger_tlv* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %37, %36, %17
  ret void
}

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
