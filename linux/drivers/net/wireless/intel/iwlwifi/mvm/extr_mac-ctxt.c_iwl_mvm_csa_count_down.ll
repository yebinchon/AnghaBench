; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_csa_count_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_csa_count_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }

@IWL_MVM_CHANNEL_SWITCH_TIME_GO = common dso_local global i32 0, align 4
@IWL_MVM_CHANNEL_SWITCH_MARGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32)* @iwl_mvm_csa_count_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_csa_count_down(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %85

23:                                               ; preds = %17, %4
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = call i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %72, label %29

29:                                               ; preds = %23
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call i32 @ieee80211_csa_update_counter(%struct.ieee80211_vif* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = call i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm* %32, %struct.ieee80211_vif* %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %29
  %40 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %40, i32 0, i32 1
  %42 = call i32 @iwl_mvm_te_scheduled(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %52, %56
  %58 = load i32, i32* @IWL_MVM_CHANNEL_SWITCH_TIME_GO, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 1024
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %12, align 4
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %66 = load i32, i32* @IWL_MVM_CHANNEL_SWITCH_TIME_GO, align 4
  %67 = load i32, i32* @IWL_MVM_CHANNEL_SWITCH_MARGIN, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @iwl_mvm_schedule_csa_period(%struct.iwl_mvm* %64, %struct.ieee80211_vif* %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %50, %47, %44, %39, %29
  br label %85

72:                                               ; preds = %23
  %73 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %73, i32 0, i32 1
  %75 = call i32 @iwl_mvm_te_scheduled(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %79 = call i32 @ieee80211_csa_finish(%struct.ieee80211_vif* %78)
  %80 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @RCU_INIT_POINTER(i32 %82, i32* null)
  br label %84

84:                                               ; preds = %77, %72
  br label %85

85:                                               ; preds = %22, %84, %71
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_csa_is_complete(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_csa_update_counter(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_beacon_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_te_scheduled(i32*) #1

declare dso_local i32 @iwl_mvm_schedule_csa_period(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_csa_finish(%struct.ieee80211_vif*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
