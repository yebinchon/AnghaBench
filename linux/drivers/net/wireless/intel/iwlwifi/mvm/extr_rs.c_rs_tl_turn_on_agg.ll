; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_tl_turn_on_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i64, %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i64 }
%struct.iwl_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"tid exceeds max TID count: %d/%d\0A\00", align 1
@IEEE80211_STA_AUTHORIZED = common dso_local global i64 0, align 8
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@IWL_MVM_RS_AGG_START_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"try to aggregate tid %d\0A\00", align 1
@IWL_AGG_QUEUED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i64, %struct.iwl_lq_sta*, %struct.ieee80211_sta*)* @rs_tl_turn_on_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_tl_turn_on_agg(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i64 %2, %struct.iwl_lq_sta* %3, %struct.ieee80211_sta* %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_mvm_sta*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iwl_lq_sta*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.iwl_mvm_tid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iwl_lq_sta* %3, %struct.iwl_lq_sta** %9, align 8
  store %struct.ieee80211_sta* %4, %struct.ieee80211_sta** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %14 = icmp ugt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %22 = call i32 @IWL_ERR(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21)
  br label %75

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %75

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 1
  %32 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %32, i64 %33
  store %struct.iwl_mvm_tid_data* %34, %struct.iwl_mvm_tid_data** %11, align 8
  %35 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_STA_AUTHORIZED, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %29
  %41 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IWL_AGG_OFF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %48 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @BIT(i64 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %46
  %55 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IWL_MVM_RS_AGG_START_THRESHOLD, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @IWL_DEBUG_RATE(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %65 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %68 = call i64 @rs_tl_turn_on_agg_for_tid(%struct.iwl_mvm* %64, %struct.iwl_lq_sta* %65, i64 %66, %struct.ieee80211_sta* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i64, i64* @IWL_AGG_QUEUED, align 8
  %72 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %11, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %60
  br label %75

75:                                               ; preds = %18, %27, %74, %54, %46, %40, %29
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, i64) #1

declare dso_local i64 @rs_tl_turn_on_agg_for_tid(%struct.iwl_mvm*, %struct.iwl_lq_sta*, i64, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
