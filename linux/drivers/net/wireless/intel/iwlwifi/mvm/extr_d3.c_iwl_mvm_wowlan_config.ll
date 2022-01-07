; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_wowlan_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_wowlan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iwl_mvm = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_wowlan = type { i32 }
%struct.iwl_wowlan_config_cmd = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@WOWLAN_CONFIGURATION = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.cfg80211_wowlan*, %struct.iwl_wowlan_config_cmd*, %struct.ieee80211_vif*, %struct.iwl_mvm_vif*, %struct.ieee80211_sta*)* @iwl_mvm_wowlan_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_wowlan_config(%struct.iwl_mvm* %0, %struct.cfg80211_wowlan* %1, %struct.iwl_wowlan_config_cmd* %2, %struct.ieee80211_vif* %3, %struct.iwl_mvm_vif* %4, %struct.ieee80211_sta* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca %struct.cfg80211_wowlan*, align 8
  %10 = alloca %struct.iwl_wowlan_config_cmd*, align 8
  %11 = alloca %struct.ieee80211_vif*, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %8, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %9, align 8
  store %struct.iwl_wowlan_config_cmd* %2, %struct.iwl_wowlan_config_cmd** %10, align 8
  store %struct.ieee80211_vif* %3, %struct.ieee80211_vif** %11, align 8
  store %struct.iwl_mvm_vif* %4, %struct.iwl_mvm_vif** %12, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %13, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG, align 4
  %21 = call i32 @fw_has_capa(i32* %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %23 = getelementptr inbounds %struct.iwl_wowlan_config_cmd, %struct.iwl_wowlan_config_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %6
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %31 = call i32 @iwl_mvm_switch_to_d3(%struct.iwl_mvm* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %99

36:                                               ; preds = %29
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %40 = call i32 @iwl_mvm_d3_reprogram(%struct.iwl_mvm* %37, %struct.ieee80211_vif* %38, %struct.ieee80211_sta* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %7, align 4
  br label %99

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %6
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %55 = load i32, i32* @CMD_ASYNC, align 4
  %56 = call i32 @iwl_mvm_wowlan_config_key_params(%struct.iwl_mvm* %53, %struct.ieee80211_vif* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %57, i32 0, i32 1
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %7, align 4
  br label %99

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %67 = load i32, i32* @WOWLAN_CONFIGURATION, align 4
  %68 = load %struct.iwl_wowlan_config_cmd*, %struct.iwl_wowlan_config_cmd** %10, align 8
  %69 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %66, i32 %67, i32 0, i32 4, %struct.iwl_wowlan_config_cmd* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %7, align 4
  br label %99

74:                                               ; preds = %65
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* @IWL_UCODE_TLV_API_WOWLAN_TCP_SYN_WAKE, align 4
  %80 = call i64 @fw_has_api(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %84 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %85 = call i32 @iwl_mvm_send_patterns(%struct.iwl_mvm* %83, %struct.cfg80211_wowlan* %84)
  store i32 %85, i32* %14, align 4
  br label %90

86:                                               ; preds = %74
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %88 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %9, align 8
  %89 = call i32 @iwl_mvm_send_patterns_v1(%struct.iwl_mvm* %87, %struct.cfg80211_wowlan* %88)
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %99

95:                                               ; preds = %90
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %11, align 8
  %98 = call i32 @iwl_mvm_send_proto_offload(%struct.iwl_mvm* %96, %struct.ieee80211_vif* %97, i32 0, i32 1, i32 0)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %93, %72, %62, %43, %34
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_switch_to_d3(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_d3_reprogram(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_mvm_wowlan_config_key_params(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_wowlan_config_cmd*) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_mvm_send_patterns(%struct.iwl_mvm*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @iwl_mvm_send_patterns_v1(%struct.iwl_mvm*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @iwl_mvm_send_proto_offload(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
