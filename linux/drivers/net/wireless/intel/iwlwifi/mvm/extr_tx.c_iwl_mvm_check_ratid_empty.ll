; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_check_ratid_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_tx.c_iwl_mvm_check_ratid_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, %struct.ieee80211_vif*, %struct.iwl_mvm_tid_data* }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_tid_data = type { i32, i32, i32 }

@IWL_AGG_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Can continue addBA flow ssn = next_recl = %d\0A\00", align 1
@IWL_AGG_STARTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Can continue DELBA flow ssn = next_recl = %d\0A\00", align 1
@IWL_AGG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, i64)* @iwl_mvm_check_ratid_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_check_ratid_empty(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i64 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iwl_mvm_sta*, align 8
  %8 = alloca %struct.iwl_mvm_tid_data*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %12 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %11)
  store %struct.iwl_mvm_sta* %12, %struct.iwl_mvm_sta** %7, align 8
  %13 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %14 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %13, i32 0, i32 2
  %15 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %15, i64 %16
  store %struct.iwl_mvm_tid_data* %17, %struct.iwl_mvm_tid_data** %8, align 8
  %18 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %19, align 8
  store %struct.ieee80211_vif* %20, %struct.ieee80211_vif** %9, align 8
  %21 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %21, i32 0, i32 0
  %23 = call i32 @lockdep_assert_held(i32* %22)
  %24 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IWL_AGG_ON, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 128
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %3
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %37 = call i64 @iwl_mvm_tid_queued(%struct.iwl_mvm* %35, %struct.iwl_mvm_tid_data* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta* %40, i64 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %34, %29
  %44 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 255
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %100

65:                                               ; preds = %58
  %66 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %99 [
    i32 129, label %69
    i32 128, label %84
  ]

69:                                               ; preds = %65
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %71 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @IWL_AGG_STARTING, align 4
  %76 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %78, i32 %81, i64 %82)
  br label %100

84:                                               ; preds = %65
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %86 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %85, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @IWL_AGG_OFF, align 4
  %91 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %8, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %93, i32 %96, i64 %97)
  br label %100

99:                                               ; preds = %65
  br label %100

100:                                              ; preds = %64, %99, %84, %69
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_tid_queued(%struct.iwl_mvm*, %struct.iwl_mvm_tid_data*) #1

declare dso_local i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta*, i64, i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
