; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c___iwl_mvm_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32, i32, i32, i32*, i32 }

@IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*, i32)* @__iwl_mvm_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iwl_mvm_unassign_vif_chanctx(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %9, align 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %10, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %13, i32 0, i32 2
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %17 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 5
  %20 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %16, %struct.iwl_mvm_vif* %17, i32* %19)
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %73 [
    i32 131, label %24
    i32 129, label %25
    i32 130, label %33
    i32 128, label %55
  ]

24:                                               ; preds = %4
  br label %81

25:                                               ; preds = %4
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = call i32 @iwl_mvm_rm_snif_sta(%struct.iwl_mvm* %30, %struct.ieee80211_vif* %31)
  br label %74

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %33
  br label %81

42:                                               ; preds = %36
  %43 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %46 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %47 = call i32 @iwl_mvm_modify_all_sta_disable_tx(%struct.iwl_mvm* %45, %struct.iwl_mvm_vif* %46, i32 1)
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %52 = call i32 @rcu_assign_pointer(i32 %50, %struct.ieee80211_vif* %51)
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  br label %74

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %74

59:                                               ; preds = %55
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %60, %struct.ieee80211_vif** %10, align 8
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* @IWL_UCODE_TLV_CAPA_CHANNEL_SWITCH_CMD, align 4
  %66 = call i32 @fw_has_capa(i32* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %71 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %69, %struct.ieee80211_vif* %70, i32 1, i32* null)
  br label %72

72:                                               ; preds = %68, %59
  br label %74

73:                                               ; preds = %4
  br label %74

74:                                               ; preds = %73, %72, %58, %42, %25
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %77 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %75, i32 0, %struct.ieee80211_vif* %76)
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %79 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %80 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %78, %struct.ieee80211_vif* %79)
  br label %81

81:                                               ; preds = %74, %41, %24
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 4
  store i32* null, i32** %83, align 8
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %85 = call i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm* %84)
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, i32*) #1

declare dso_local i32 @iwl_mvm_rm_snif_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_modify_all_sta_disable_tx(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_power_update_mac(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
