; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_free_inactive_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_free_inactive_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_sta = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to free inactive queue %d (ret=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i32, %struct.ieee80211_sta*, i64)* @iwl_mvm_free_inactive_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_free_inactive_queue(%struct.iwl_mvm* %0, i32 %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 1
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %20 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %19)
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %92

26:                                               ; preds = %4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm* %47, i64 %48)
  store %struct.iwl_mvm_sta* %49, %struct.iwl_mvm_sta** %10, align 8
  %50 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %51 = icmp ne %struct.iwl_mvm_sta* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %26
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %92

59:                                               ; preds = %26
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @iwl_mvm_remove_sta_queue_marking(%struct.iwl_mvm* %60, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm* %66, i32 %67, i64 %68, i32 0)
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @iwl_mvm_disable_txq(%struct.iwl_mvm* %71, %struct.ieee80211_sta* %72, i32 %73, i64 %74, i32 0)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @IWL_ERR(%struct.iwl_mvm* %79, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %5, align 4
  br label %92

84:                                               ; preds = %70
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm* %88, i32 %89, i64 0, i32 1)
  br label %91

91:                                               ; preds = %87, %84
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %78, %56, %23
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_staid_protected(%struct.iwl_mvm*, i64) #1

declare dso_local i64 @iwl_mvm_remove_sta_queue_marking(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_invalidate_sta_queue(%struct.iwl_mvm*, i32, i64, i32) #1

declare dso_local i32 @iwl_mvm_disable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
