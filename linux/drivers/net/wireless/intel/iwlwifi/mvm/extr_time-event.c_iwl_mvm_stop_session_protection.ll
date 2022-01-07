; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_stop_session_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_stop_session_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { %struct.iwl_mvm_time_event_data }
%struct.iwl_mvm_time_event_data = type { i64 }

@TE_BSS_STA_AGGRESSIVE_ASSOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"don't remove TE with id=%u (not session protection)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_stop_session_protection(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.iwl_mvm_vif*, align 8
  %6 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %7 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %8)
  store %struct.iwl_mvm_vif* %9, %struct.iwl_mvm_vif** %5, align 8
  %10 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %10, i32 0, i32 0
  store %struct.iwl_mvm_time_event_data* %11, %struct.iwl_mvm_time_event_data** %6, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @TE_BSS_STA_AGGRESSIVE_ASSOC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %5, align 8
  %34 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %6, align 8
  %35 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %32, %struct.iwl_mvm_vif* %33, %struct.iwl_mvm_time_event_data* %34)
  br label %36

36:                                               ; preds = %31, %27
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i64) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_time_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
