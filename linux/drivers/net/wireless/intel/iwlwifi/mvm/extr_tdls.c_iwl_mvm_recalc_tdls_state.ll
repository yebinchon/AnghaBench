; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_recalc_tdls_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tdls.c_iwl_mvm_recalc_tdls_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_recalc_tdls_state(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %9 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %10 = call i32 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm* %8, %struct.ieee80211_vif* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %17)
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* @IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH, align 4
  %25 = call i64 @fw_has_capa(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %30 = call i32 @iwl_mvm_tdls_config(%struct.iwl_mvm* %28, %struct.ieee80211_vif* %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %39 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %38)
  br label %40

40:                                               ; preds = %37, %34, %31
  ret void
}

declare dso_local i32 @iwl_mvm_tdls_sta_count(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_tdls_config(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
