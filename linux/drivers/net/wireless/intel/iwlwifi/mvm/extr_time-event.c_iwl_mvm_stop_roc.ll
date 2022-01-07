; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_stop_roc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_time-event.c_iwl_mvm_stop_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_vif = type { i32 }
%struct.iwl_mvm_time_event_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"No remain on channel event\0A\00", align 1
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@IWL_MVM_STATUS_NEED_FLUSH_P2P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_stop_roc(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca %struct.iwl_mvm_vif*, align 8
  %4 = alloca %struct.iwl_mvm_time_event_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %5 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %6 = call %struct.iwl_mvm_time_event_data* @iwl_mvm_get_roc_te(%struct.iwl_mvm* %5)
  store %struct.iwl_mvm_time_event_data* %6, %struct.iwl_mvm_time_event_data** %4, align 8
  %7 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %4, align 8
  %8 = icmp ne %struct.iwl_mvm_time_event_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %11 = call i32 @IWL_WARN(%struct.iwl_mvm* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_2__* %15)
  store %struct.iwl_mvm_vif* %16, %struct.iwl_mvm_vif** %3, align 8
  %17 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %26 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %3, align 8
  %27 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %4, align 8
  %28 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %25, %struct.iwl_mvm_vif* %26, %struct.iwl_mvm_time_event_data* %27)
  %29 = load i32, i32* @IWL_MVM_STATUS_NEED_FLUSH_P2P, align 4
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %38

33:                                               ; preds = %12
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %35 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %3, align 8
  %36 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %4, align 8
  %37 = call i32 @iwl_mvm_remove_aux_roc_te(%struct.iwl_mvm* %34, %struct.iwl_mvm_vif* %35, %struct.iwl_mvm_time_event_data* %36)
  br label %38

38:                                               ; preds = %33, %24
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %40 = call i32 @iwl_mvm_roc_finished(%struct.iwl_mvm* %39)
  br label %41

41:                                               ; preds = %38, %9
  ret void
}

declare dso_local %struct.iwl_mvm_time_event_data* @iwl_mvm_get_roc_te(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.TYPE_2__*) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_remove_aux_roc_te(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i32 @iwl_mvm_roc_finished(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
