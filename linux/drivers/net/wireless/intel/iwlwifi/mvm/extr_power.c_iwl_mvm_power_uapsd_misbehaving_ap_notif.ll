; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_uapsd_misbehaving_ap_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_power.c_iwl_mvm_power_uapsd_misbehaving_ap_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_uapsd_misbehaving_ap_notif = type { i32 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_power_uapsd_misbehav_ap_iterator = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_power_uapsd_misbehaving_ap_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_uapsd_misbehaving_ap_notif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %8)
  store %struct.iwl_rx_packet* %9, %struct.iwl_rx_packet** %5, align 8
  %10 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_uapsd_misbehaving_ap_notif*
  store %struct.iwl_uapsd_misbehaving_ap_notif* %14, %struct.iwl_uapsd_misbehaving_ap_notif** %6, align 8
  %15 = load %struct.iwl_uapsd_misbehaving_ap_notif*, %struct.iwl_uapsd_misbehaving_ap_notif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_uapsd_misbehaving_ap_notif, %struct.iwl_uapsd_misbehaving_ap_notif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %23 = load i32, i32* @iwl_mvm_power_uapsd_misbehav_ap_iterator, align 4
  %24 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %21, i32 %22, i32 %23, i32* %7)
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
