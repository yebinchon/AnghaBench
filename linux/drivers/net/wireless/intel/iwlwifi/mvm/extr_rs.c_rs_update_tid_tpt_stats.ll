; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_tid_tpt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_update_tid_tpt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { %struct.iwl_mvm_tid_data* }
%struct.iwl_mvm_tid_data = type { i64, i64, i64, i64 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IWL_AGG_OFF = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IWL_MVM_RS_AGG_START_THRESHOLD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i64, i32)* @rs_update_tid_tpt_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_update_tid_tpt_stats(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_sta*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_tid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %58

14:                                               ; preds = %4
  %15 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %15, i32 0, i32 0
  %17 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %17, i64 %18
  store %struct.iwl_mvm_tid_data* %19, %struct.iwl_mvm_tid_data** %9, align 8
  %20 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IWL_AGG_OFF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %58

26:                                               ; preds = %14
  %27 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HZ, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i64 @time_is_before_jiffies(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IWL_MVM_RS_AGG_START_THRESHOLD, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34, %26
  %41 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i64, i64* @jiffies, align 8
  %49 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %58

51:                                               ; preds = %34
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.iwl_mvm_tid_data*, %struct.iwl_mvm_tid_data** %9, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm_tid_data, %struct.iwl_mvm_tid_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %13, %25, %51, %40
  ret void
}

declare dso_local i64 @time_is_before_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
