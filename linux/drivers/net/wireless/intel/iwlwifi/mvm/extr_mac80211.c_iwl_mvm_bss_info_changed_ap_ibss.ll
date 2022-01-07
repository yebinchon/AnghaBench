; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_ap_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_ap_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_BANDWIDTH = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to update MAC %pM\0A\00", align 1
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed updating beacon data\0A\00", align 1
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Changing TX Power to %d\0A\00", align 1
@BSS_CHANGED_FTM_RESPONDER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to enable FTM responder (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @iwl_mvm_bss_info_changed_ap_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bss_info_changed_ap_ibss(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %9, align 8
  %13 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %86

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %21 = load i32, i32* @BSS_CHANGED_HT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BSS_CHANGED_BANDWIDTH, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call i64 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31, i32 0, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IWL_ERR(%struct.iwl_mvm* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %29, %18
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = call i64 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %46, %struct.ieee80211_vif* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %52 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_WARN(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45, %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %60 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_mvm* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @iwl_mvm_set_tx_power(%struct.iwl_mvm* %64, %struct.ieee80211_vif* %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BSS_CHANGED_FTM_RESPONDER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %78 = call i32 @iwl_mvm_ftm_start_responder(%struct.iwl_mvm* %76, %struct.ieee80211_vif* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_WARN(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %17, %85, %70
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i64 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_set_tx_power(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_ftm_start_responder(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
