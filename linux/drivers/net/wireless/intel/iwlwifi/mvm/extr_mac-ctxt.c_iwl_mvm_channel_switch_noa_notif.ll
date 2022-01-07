; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_channel_switch_noa_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_channel_switch_noa_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_channel_switch_noa_notif = type { i32 }
%struct.ieee80211_vif = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32 }

@FW_CTXT_ID_MSK = common dso_local global i64 0, align 8
@NUM_MAC_INDEX_DRIVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"channel switch noa notification on unexpected vif (csa_vif=%d, notif=%d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Channel Switch Started Notification\0A\00", align 1
@IWL_MVM_CS_UNBLOCK_TX_TIMEOUT = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_channel_switch_noa_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_channel_switch_noa_notif*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %14 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %15 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %14)
  store %struct.iwl_rx_packet* %15, %struct.iwl_rx_packet** %5, align 8
  %16 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_channel_switch_noa_notif*
  store %struct.iwl_channel_switch_noa_notif* %20, %struct.iwl_channel_switch_noa_notif** %6, align 8
  %21 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %22 = call i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %141

30:                                               ; preds = %2
  %31 = load %struct.iwl_channel_switch_noa_notif*, %struct.iwl_channel_switch_noa_notif** %6, align 8
  %32 = getelementptr inbounds %struct.iwl_channel_switch_noa_notif, %struct.iwl_channel_switch_noa_notif* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @FW_CTXT_ID_MSK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @NUM_MAC_INDEX_DRIVER, align 8
  %40 = icmp uge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON_ONCE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %141

45:                                               ; preds = %30
  %46 = call i32 (...) @rcu_read_lock()
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ieee80211_vif* @rcu_dereference(i32 %52)
  store %struct.ieee80211_vif* %53, %struct.ieee80211_vif** %8, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %55 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %54)
  store %struct.iwl_mvm_vif* %55, %struct.iwl_mvm_vif** %9, align 8
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %136 [
    i32 129, label %59
    i32 128, label %118
  ]

59:                                               ; preds = %45
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.ieee80211_vif* @rcu_dereference(i32 %62)
  store %struct.ieee80211_vif* %63, %struct.ieee80211_vif** %7, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %65 = icmp ne %struct.ieee80211_vif* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %74 = icmp ne %struct.ieee80211_vif* %72, %73
  br label %75

75:                                               ; preds = %71, %66, %59
  %76 = phi i1 [ true, %66 ], [ true, %59 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %139

81:                                               ; preds = %75
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @FW_CMD_ID_AND_COLOR(i32 %84, i32 %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @WARN(i32 %92, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %93, i64 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %139

98:                                               ; preds = %81
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %100 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %101, i32 0, i32 2
  %103 = load i32, i32* @IWL_MVM_CS_UNBLOCK_TX_TIMEOUT, align 4
  %104 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %105 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %103, %107
  %109 = call i32 @msecs_to_jiffies(i32 %108)
  %110 = call i32 @schedule_delayed_work(i32* %102, i32 %109)
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %112 = call i32 @ieee80211_csa_finish(%struct.ieee80211_vif* %111)
  %113 = call i32 (...) @rcu_read_unlock()
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @RCU_INIT_POINTER(i32 %116, i32* null)
  br label %141

118:                                              ; preds = %45
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %124 = call i32 @fw_has_capa(i32* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %118
  %127 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %128 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %129 = call i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm* %127, %struct.ieee80211_vif* %128)
  br label %130

130:                                              ; preds = %126, %118
  %131 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %132 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %131, i32 0, i32 0
  %133 = call i32 @cancel_delayed_work(i32* %132)
  %134 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %135 = call i32 @ieee80211_chswitch_done(%struct.ieee80211_vif* %134, i32 1)
  br label %138

136:                                              ; preds = %45
  %137 = call i64 @WARN_ON_ONCE(i32 1)
  br label %138

138:                                              ; preds = %136, %130
  br label %139

139:                                              ; preds = %138, %97, %80
  %140 = call i32 (...) @rcu_read_unlock()
  br label %141

141:                                              ; preds = %139, %98, %44, %29
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.iwl_rx_packet*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @rcu_dereference(i32) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i64, i64) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ieee80211_csa_finish(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(%struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
