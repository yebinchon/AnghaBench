; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_schedule_client_csa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_schedule_client_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel_switch = type { i64, i32, i32, i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_chan_switch_te_cmd = type { i32, i32, i32, i32, i32, i32 }

@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@MAC_CONF_GROUP = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_TIME_EVENT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @iwl_mvm_schedule_client_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_schedule_client_csa(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_chan_switch_te_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %7, align 8
  %11 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 1
  %13 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 2
  %17 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 3
  %21 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpu_to_le32(i32 %23)
  store i32 %24, i32* %20, align 4
  %25 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 4
  %26 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  store i32 %27, i32* %25, align 4
  %28 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 5
  %29 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FW_CMD_ID_AND_COLOR(i32 %31, i32 %34)
  %36 = call i32 @cpu_to_le32(i32 %35)
  store i32 %36, i32* %28, align 4
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 0
  %39 = call i32 @lockdep_assert_held(i32* %38)
  %40 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %3
  %45 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DIV_ROUND_UP(i64 %47, i32 %51)
  %53 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %3
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %56 = load i32, i32* @MAC_CONF_GROUP, align 4
  %57 = load i32, i32* @CHANNEL_SWITCH_TIME_EVENT_CMD, align 4
  %58 = call i32 @WIDE_ID(i32 %56, i32 %57)
  %59 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %55, i32 %58, i32 0, i32 24, %struct.iwl_chan_switch_te_cmd* %8)
  ret i32 %59
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_chan_switch_te_cmd*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
