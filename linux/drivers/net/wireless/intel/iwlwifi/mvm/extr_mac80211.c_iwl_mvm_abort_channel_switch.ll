; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_abort_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_abort_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_chan_switch_te_cmd = type { i32, i32 }

@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Abort CSA on mac %d\0A\00", align 1
@MAC_CONF_GROUP = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_TIME_EVENT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_abort_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_abort_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca %struct.iwl_chan_switch_te_cmd, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %5, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %7, i32 0, i32 0
  %13 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %7, i32 0, i32 1
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @FW_CMD_ID_AND_COLOR(i32 %18, i32 %21)
  %23 = call i32 @cpu_to_le32(i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = load i32, i32* @MAC_CONF_GROUP, align 4
  %34 = load i32, i32* @CHANNEL_SWITCH_TIME_EVENT_CMD, align 4
  %35 = call i32 @WIDE_ID(i32 %33, i32 %34)
  %36 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %32, i32 %35, i32 0, i32 8, %struct.iwl_chan_switch_te_cmd* %7)
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %43 = call i32 @iwl_mvm_post_channel_switch(%struct.ieee80211_hw* %41, %struct.ieee80211_vif* %42)
  %44 = call i32 @WARN_ON(i32 %43)
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_chan_switch_te_cmd*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_mvm_post_channel_switch(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
