; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_realloc_queues_after_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_realloc_queues_after_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i64, i32, %struct.iwl_mvm_tid_data*, i32 }
%struct.iwl_mvm_tid_data = type { i32, i64 }
%struct.iwl_trans_txq_scd_cfg = type { i32, i32, i32, i32, i32 }

@IWL_FRAME_LIMIT = common dso_local global i32 0, align 4
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@IWL_MVM_QUEUE_RESERVED = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_QUEUE = common dso_local global i32 0, align 4
@tid_to_mac80211_ac = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Re-mapping sta %d tid %d\0A\00", align 1
@IWL_MVM_DQA_MIN_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_BSS_CLIENT_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Re-mapping sta %d tid %d to queue %d\0A\00", align 1
@IWL_MVM_QUEUE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*)* @iwl_mvm_realloc_queues_after_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_realloc_queues_after_restart(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %9 = alloca %struct.iwl_mvm_tid_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %14 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %13)
  store %struct.iwl_mvm_sta* %14, %struct.iwl_mvm_sta** %5, align 8
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %16 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm* %15, i32 %18, i32 0, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 3
  %24 = load i32, i32* @IWL_FRAME_LIMIT, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 4
  %26 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %25, align 4
  %29 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* @IWL_MVM_QUEUE_RESERVED, align 4
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %35, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %2
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %140, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IWL_MAX_TID_COUNT, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %143

49:                                               ; preds = %45
  %50 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %50, i32 0, i32 2
  %52 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %52, i64 %54
  store %struct.iwl_mvm_tid_data* %55, %struct.iwl_mvm_tid_data** %9, align 8
  %56 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @IWL_MVM_INVALID_QUEUE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %140

63:                                               ; preds = %49
  %64 = load i32*, i32** @tid_to_mac80211_ac, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = call i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %63
  %73 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %74 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm* %79, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %72
  %89 = load i32, i32* @IWL_MVM_INVALID_QUEUE, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %88, %72
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  br label %139

96:                                               ; preds = %63
  %97 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %98 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IEEE80211_SEQ_TO_SN(i64 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @iwl_mvm_mac_ac_to_tx_fifo(%struct.iwl_mvm* %103, i32 %104)
  %106 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 2
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %109 = icmp sge i32 %107, %108
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 4
  %113 = icmp eq i32 %111, %112
  br label %114

114:                                              ; preds = %110, %96
  %115 = phi i1 [ true, %96 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, %struct.iwl_trans_txq_scd_cfg* %8, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %119 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (%struct.iwl_mvm*, i8*, i32, i32, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %118, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %122, i32 %123)
  %125 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %126 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @iwl_mvm_enable_txq(%struct.iwl_mvm* %125, %struct.ieee80211_sta* %126, i32 %127, i32 %128, %struct.iwl_trans_txq_scd_cfg* %8, i32 %129)
  %131 = load i32, i32* @IWL_MVM_QUEUE_READY, align 4
  %132 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %133 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  br label %139

139:                                              ; preds = %114, %90
  br label %140

140:                                              ; preds = %139, %62
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %45

143:                                              ; preds = %45
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_get_wd_timeout(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i64 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i32, ...) #1

declare dso_local i32 @iwl_mvm_tvqm_enable_txq(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i64) #1

declare dso_local i32 @iwl_mvm_mac_ac_to_tx_fifo(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_enable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, %struct.iwl_trans_txq_scd_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
