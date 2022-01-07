; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_rx_tdls_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_rx_tdls_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_tdls_channel_switch_notif = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IWL_MVM_TDLS_SW_IDLE = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@system_wq = common dso_local global i32 0, align 4
@IWL_MVM_TDLS_SW_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_tdls_notif(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_tdls_channel_switch_notif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %12 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %13 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %12)
  store %struct.iwl_rx_packet* %13, %struct.iwl_rx_packet** %5, align 8
  %14 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.iwl_tdls_channel_switch_notif*
  store %struct.iwl_tdls_channel_switch_notif* %18, %struct.iwl_tdls_channel_switch_notif** %6, align 8
  %19 = load %struct.iwl_tdls_channel_switch_notif*, %struct.iwl_tdls_channel_switch_notif** %6, align 8
  %20 = getelementptr inbounds %struct.iwl_tdls_channel_switch_notif, %struct.iwl_tdls_channel_switch_notif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 1
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.iwl_tdls_channel_switch_notif*, %struct.iwl_tdls_channel_switch_notif** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_tdls_channel_switch_notif, %struct.iwl_tdls_channel_switch_notif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @le32_to_cpu(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load i32, i32* @IWL_MVM_TDLS_SW_IDLE, align 4
  %34 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %32, i32 %33)
  br label %93

35:                                               ; preds = %2
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %38 = icmp uge i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %93

43:                                               ; preds = %35
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 1
  %52 = call i32 @lockdep_is_held(i32* %51)
  %53 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %49, i32 %52)
  store %struct.ieee80211_sta* %53, %struct.ieee80211_sta** %7, align 8
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %55 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %43
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %43
  br label %93

67:                                               ; preds = %57
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %69 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %68)
  store %struct.iwl_mvm_sta* %69, %struct.iwl_mvm_sta** %9, align 8
  %70 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %70, i32 0, i32 0
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %71, align 8
  store %struct.ieee80211_vif* %72, %struct.ieee80211_vif** %10, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %76, %80
  %82 = call i32 @TU_TO_MS(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @system_wq, align 4
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = call i32 @mod_delayed_work(i32 %83, i32* %86, i32 %88)
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %91 = load i32, i32* @IWL_MVM_TDLS_SW_ACTIVE, align 4
  %92 = call i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm* %90, i32 %91)
  br label %93

93:                                               ; preds = %67, %66, %42, %31
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_tdls_update_cs_state(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @TU_TO_MS(i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
