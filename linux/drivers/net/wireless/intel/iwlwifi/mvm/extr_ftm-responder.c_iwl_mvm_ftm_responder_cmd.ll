; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_responder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ftm-responder.c_iwl_mvm_ftm_responder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_chan_def = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_tof_responder_config_cmd = type { i32, i8*, i32, i32, i32, i32 }

@IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO = common dso_local global i32 0, align 4
@IWL_TOF_RESPONDER_CMD_VALID_BSSID = common dso_local global i32 0, align 4
@IWL_TOF_RESPONDER_CMD_VALID_STA_ID = common dso_local global i32 0, align 4
@IWL_TOF_BW_20_LEGACY = common dso_local global i32 0, align 4
@IWL_TOF_BW_20_HT = common dso_local global i32 0, align 4
@IWL_TOF_BW_40 = common dso_local global i32 0, align 4
@IWL_TOF_BW_80 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TOF_RESPONDER_CONFIG_CMD = common dso_local global i32 0, align 4
@LOCATION_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.cfg80211_chan_def*)* @iwl_mvm_ftm_responder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_ftm_responder_cmd(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_chan_def*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_tof_responder_config_cmd, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %7, align 8
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %11 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %10)
  store %struct.iwl_mvm_vif* %11, %struct.iwl_mvm_vif** %8, align 8
  %12 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 1
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 3
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 4
  %21 = load i32, i32* @IWL_TOF_RESPONDER_CMD_VALID_CHAN_INFO, align 4
  %22 = load i32, i32* @IWL_TOF_RESPONDER_CMD_VALID_BSSID, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IWL_TOF_RESPONDER_CMD_VALID_STA_ID, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @cpu_to_le32(i32 %25)
  store i32 %26, i32* %20, align 8
  %27 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 5
  %28 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 4
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = call i32 @lockdep_assert_held(i32* %34)
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %37 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %57 [
    i32 130, label %39
    i32 131, label %42
    i32 129, label %45
    i32 128, label %51
  ]

39:                                               ; preds = %3
  %40 = load i32, i32* @IWL_TOF_BW_20_LEGACY, align 4
  %41 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  br label %61

42:                                               ; preds = %3
  %43 = load i32, i32* @IWL_TOF_BW_20_HT, align 4
  %44 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  br label %61

45:                                               ; preds = %3
  %46 = load i32, i32* @IWL_TOF_BW_40, align 4
  %47 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %49 = call i8* @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def* %48)
  %50 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %61

51:                                               ; preds = %3
  %52 = load i32, i32* @IWL_TOF_BW_80, align 4
  %53 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %7, align 8
  %55 = call i8* @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def* %54)
  %56 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  br label %61

57:                                               ; preds = %3
  %58 = call i32 @WARN_ON(i32 1)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %74

61:                                               ; preds = %51, %45, %42, %39
  %62 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd, %struct.iwl_tof_responder_config_cmd* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = call i32 @memcpy(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = load i32, i32* @TOF_RESPONDER_CONFIG_CMD, align 4
  %71 = load i32, i32* @LOCATION_GROUP, align 4
  %72 = call i32 @iwl_cmd_id(i32 %70, i32 %71, i32 0)
  %73 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %69, i32 %72, i32 0, i32 32, %struct.iwl_tof_responder_config_cmd* %9)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %61, %57
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i8* @iwl_mvm_get_ctrl_pos(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_tof_responder_config_cmd*) #1

declare dso_local i32 @iwl_cmd_id(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
