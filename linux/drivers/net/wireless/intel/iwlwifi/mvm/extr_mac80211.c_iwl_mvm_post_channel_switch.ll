; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_post_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_post_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@EIO = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @iwl_mvm_post_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_post_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %10 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %9)
  store %struct.iwl_mvm_vif* %10, %struct.iwl_mvm_vif** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %6, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %25
  %32 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %35 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %34, i32 %37)
  store %struct.iwl_mvm_sta* %38, %struct.iwl_mvm_sta** %8, align 8
  %39 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %40 = icmp ne %struct.iwl_mvm_sta* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %88

48:                                               ; preds = %31
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %54 = call i32 @fw_has_capa(i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %58 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %59 = call i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm* %57, %struct.iwl_mvm_sta* %58, i32 0)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %63 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %61, %struct.ieee80211_vif* %62, i32 0, i32* null)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %69 = call i32 @fw_has_capa(i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %60
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %74 = call i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm* %72, %struct.ieee80211_vif* %73, i32 0)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %88

78:                                               ; preds = %71
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %81 = call i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm* %79, %struct.ieee80211_vif* %80)
  br label %82

82:                                               ; preds = %78, %60
  br label %83

83:                                               ; preds = %82, %25
  %84 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %85 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %84, i32 0, i32 2
  store i32 0, i32* %85, align 4
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %87 = call i32 @iwl_mvm_power_update_ps(%struct.iwl_mvm* %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %77, %45, %20
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_sta_modify_disable_tx(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_enable_beacon_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_stop_session_protection(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_ps(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
