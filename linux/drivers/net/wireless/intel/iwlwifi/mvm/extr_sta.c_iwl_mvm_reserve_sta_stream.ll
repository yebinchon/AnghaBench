; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_reserve_sta_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_reserve_sta_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32, i32 }

@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IWL_MVM_DQA_BSS_CLIENT_QUEUE = common dso_local global i64 0, align 8
@IWL_MVM_QUEUE_FREE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MIN_DATA_QUEUE = common dso_local global i32 0, align 4
@IWL_MVM_DQA_MAX_DATA_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"No available queues for new station\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@IWL_MVM_QUEUE_RESERVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Reserving data queue #%d for sta_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_sta*, i32)* @iwl_mvm_reserve_sta_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_reserve_sta_stream(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_mvm_sta*, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %11 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %10)
  store %struct.iwl_mvm_sta* %11, %struct.iwl_mvm_sta** %8, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %12)
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

17:                                               ; preds = %3
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  %20 = call i32 @iwl_mvm_inactivity_check(%struct.iwl_mvm* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %29
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IWL_MVM_QUEUE_FREE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i64, i64* @IWL_MVM_DQA_BSS_CLIENT_QUEUE, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %59

51:                                               ; preds = %38, %29, %24, %17
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IWL_MVM_DQA_MIN_DATA_QUEUE, align 4
  %57 = load i32, i32* @IWL_MVM_DQA_MAX_DATA_QUEUE, align 4
  %58 = call i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm* %52, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %64 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @iwl_mvm_inactivity_check(%struct.iwl_mvm* %63, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %72 = call i32 @IWL_ERR(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENOSPC, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %94

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* @IWL_MVM_QUEUE_RESERVED, align 4
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %76, %70, %16
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_inactivity_check(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_find_free_queue(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_mvm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
