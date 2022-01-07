; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_rx_missed_beacons_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_rx_missed_beacons_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_missed_beacons_notif = type { i32, i32, i32, i32, i32 }
%struct.iwl_fw_dbg_trigger_missed_bcon = type { i32, i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i64 }
%struct.ieee80211_vif = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"missed bcn mac_id=%u, consecutive=%u (%u, %u, %u)\0A\00", align 1
@IWL_MVM_MISSED_BEACONS_THRESHOLD_LONG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"missed beacons\00", align 1
@IWL_MVM_MISSED_BEACONS_THRESHOLD = common dso_local global i64 0, align 8
@IWL_FW_INI_TIME_POINT_MISSED_BEACONS = common dso_local global i32 0, align 4
@FW_DBG_TRIGGER_MISSED_BEACONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_missed_beacons_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_missed_beacons_notif*, align 8
  %7 = alloca %struct.iwl_fw_dbg_trigger_missed_bcon*, align 8
  %8 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee80211_vif*, align 8
  %14 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %15 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %16 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %15)
  store %struct.iwl_rx_packet* %16, %struct.iwl_rx_packet** %5, align 8
  %17 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.iwl_missed_beacons_notif*
  store %struct.iwl_missed_beacons_notif* %21, %struct.iwl_missed_beacons_notif** %6, align 8
  %22 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %14, align 8
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le32_to_cpu(i32 %41)
  %43 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %34, i64 %38, i64 %42, i64 %46)
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm* %49, i64 %50, i32 1)
  store %struct.ieee80211_vif* %51, %struct.ieee80211_vif** %13, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %53 = icmp ne %struct.ieee80211_vif* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %2
  br label %120

55:                                               ; preds = %2
  %56 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %57 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  store i64 %59, i64* %11, align 8
  %60 = load %struct.iwl_missed_beacons_notif*, %struct.iwl_missed_beacons_notif** %6, align 8
  %61 = getelementptr inbounds %struct.iwl_missed_beacons_notif, %struct.iwl_missed_beacons_notif* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @le32_to_cpu(i32 %62)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @IWL_MVM_MISSED_BEACONS_THRESHOLD_LONG, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %70 = call i32 @iwl_mvm_connection_loss(%struct.iwl_mvm* %68, %struct.ieee80211_vif* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %79

71:                                               ; preds = %55
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @IWL_MVM_MISSED_BEACONS_THRESHOLD, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %77 = call i32 @ieee80211_beacon_loss(%struct.ieee80211_vif* %76)
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %67
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %80, i32 0, i32 0
  %82 = load i32, i32* @IWL_FW_INI_TIME_POINT_MISSED_BEACONS, align 4
  %83 = call i32 @iwl_dbg_tlv_time_point(i32* %81, i32 %82, i32* null)
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %84, i32 0, i32 0
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %13, align 8
  %87 = call i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif* %86)
  %88 = load i32, i32* @FW_DBG_TRIGGER_MISSED_BEACONS, align 4
  %89 = call %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32* %85, i32 %87, i32 %88)
  store %struct.iwl_fw_dbg_trigger_tlv* %89, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %90 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %91 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %79
  br label %120

93:                                               ; preds = %79
  %94 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %95 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = bitcast i8* %97 to %struct.iwl_fw_dbg_trigger_missed_bcon*
  store %struct.iwl_fw_dbg_trigger_missed_bcon* %98, %struct.iwl_fw_dbg_trigger_missed_bcon** %7, align 8
  %99 = load %struct.iwl_fw_dbg_trigger_missed_bcon*, %struct.iwl_fw_dbg_trigger_missed_bcon** %7, align 8
  %100 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_missed_bcon, %struct.iwl_fw_dbg_trigger_missed_bcon* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @le32_to_cpu(i32 %101)
  store i64 %102, i64* %9, align 8
  %103 = load %struct.iwl_fw_dbg_trigger_missed_bcon*, %struct.iwl_fw_dbg_trigger_missed_bcon** %7, align 8
  %104 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_missed_bcon, %struct.iwl_fw_dbg_trigger_missed_bcon* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @le32_to_cpu(i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %93
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110, %93
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %116 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %115, i32 0, i32 0
  %117 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %8, align 8
  %118 = call i32 @iwl_fw_dbg_collect_trig(i32* %116, %struct.iwl_fw_dbg_trigger_tlv* %117, i32* null)
  br label %119

119:                                              ; preds = %114, %110
  br label %120

120:                                              ; preds = %119, %92, %54
  %121 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @iwl_mvm_rcu_dereference_vif_id(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i32 @iwl_mvm_connection_loss(%struct.iwl_mvm*, %struct.ieee80211_vif*, i8*) #1

declare dso_local i32 @ieee80211_beacon_loss(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_dbg_tlv_time_point(i32*, i32, i32*) #1

declare dso_local %struct.iwl_fw_dbg_trigger_tlv* @iwl_fw_dbg_trigger_on(i32*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_to_wdev(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_fw_dbg_collect_trig(i32*, %struct.iwl_fw_dbg_trigger_tlv*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
