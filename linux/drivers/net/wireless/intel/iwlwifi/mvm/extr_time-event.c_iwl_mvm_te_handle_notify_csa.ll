; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_handle_notify_csa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_handle_notify_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_time_event_data = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_time_event_notif = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"CSA time event failed to start\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"CSA TE failed to start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_notif*)* @iwl_mvm_te_handle_notify_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_te_handle_notify_csa(%struct.iwl_mvm* %0, %struct.iwl_mvm_time_event_data* %1, %struct.iwl_time_event_notif* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %6 = alloca %struct.iwl_time_event_notif*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_time_event_data* %1, %struct.iwl_mvm_time_event_data** %5, align 8
  store %struct.iwl_time_event_notif* %2, %struct.iwl_time_event_notif** %6, align 8
  %9 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  store %struct.ieee80211_vif* %11, %struct.ieee80211_vif** %7, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %13 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %12)
  store %struct.iwl_mvm_vif* %13, %struct.iwl_mvm_vif** %8, align 8
  %14 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %23, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %60 [
    i32 129, label %27
    i32 128, label %38
  ]

27:                                               ; preds = %21
  %28 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = call i32 @iwl_mvm_csa_noa_start(%struct.iwl_mvm* %36)
  br label %62

38:                                               ; preds = %21
  %39 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %40 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %46 = call i32 @iwl_mvm_connection_loss(%struct.iwl_mvm* %44, %struct.ieee80211_vif* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %62

47:                                               ; preds = %38
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %49 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %50, align 8
  %52 = call i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm* %48, %struct.ieee80211_vif* %51)
  %53 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %53, i32 0, i32 1
  %55 = call i32 @cancel_delayed_work(i32* %54)
  %56 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %57, align 8
  %59 = call i32 @ieee80211_chswitch_done(%struct.ieee80211_vif* %58, i32 1)
  br label %62

60:                                               ; preds = %21
  %61 = call i32 @WARN_ON_ONCE(i32 1)
  br label %62

62:                                               ; preds = %60, %47, %43, %35
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %64 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %65 = call i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm* %63, %struct.iwl_mvm_time_event_data* %64)
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_csa_noa_start(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_connection_loss(%struct.iwl_mvm*, %struct.ieee80211_vif*, i8*) #1

declare dso_local i32 @iwl_mvm_csa_client_absent(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
