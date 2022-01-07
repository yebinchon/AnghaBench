; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_channel_switch_rx_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_channel_switch_rx_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel_switch = type { i64, i64, i32 }
%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { i64, i32, i32, i32 }
%struct.iwl_chan_switch_te_cmd = type { i64, i64, i32, i32, i32 }

@FW_CTXT_ACTION_MODIFY = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_CS_MODIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Modify CSA on mac %d\0A\00", align 1
@MAC_CONF_GROUP = common dso_local global i32 0, align 4
@CHANNEL_SWITCH_TIME_EVENT_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @iwl_mvm_channel_switch_rx_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_channel_switch_rx_beacon(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_chan_switch_te_cmd, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %9, i32 0, i32 0
  %15 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %9, i32 0, i32 1
  %19 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %18, align 8
  %22 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %9, i32 0, i32 2
  %23 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cpu_to_le32(i32 %25)
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %9, i32 0, i32 3
  %28 = load i32, i32* @FW_CTXT_ACTION_MODIFY, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.iwl_chan_switch_te_cmd, %struct.iwl_chan_switch_te_cmd* %9, i32 0, i32 4
  %31 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @FW_CMD_ID_AND_COLOR(i32 %33, i32 %36)
  %38 = call i32 @cpu_to_le32(i32 %37)
  store i32 %38, i32* %30, align 8
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* @IWL_UCODE_TLV_CAPA_CS_MODIFY, align 4
  %44 = call i32 @fw_has_capa(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %3
  br label %94

47:                                               ; preds = %3
  %48 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %68 = call i32 @iwl_mvm_abort_channel_switch(%struct.ieee80211_hw* %66, %struct.ieee80211_vif* %67)
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %70 = call i32 @ieee80211_chswitch_done(%struct.ieee80211_vif* %69, i32 0)
  %71 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %71, i32 0, i32 1
  store i32 0, i32* %72, align 8
  br label %94

73:                                               ; preds = %60
  %74 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %55, %47
  %77 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %83 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %88 = load i32, i32* @MAC_CONF_GROUP, align 4
  %89 = load i32, i32* @CHANNEL_SWITCH_TIME_EVENT_CMD, align 4
  %90 = call i32 @WIDE_ID(i32 %88, i32 %89)
  %91 = load i32, i32* @CMD_ASYNC, align 4
  %92 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %87, i32 %90, i32 %91, i32 32, %struct.iwl_chan_switch_te_cmd* %9)
  %93 = call i32 @WARN_ON(i32 %92)
  br label %94

94:                                               ; preds = %76, %65, %46
  ret void
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_abort_channel_switch(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_chswitch_done(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_chan_switch_te_cmd*) #1

declare dso_local i32 @WIDE_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
