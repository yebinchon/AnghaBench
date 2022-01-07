; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_release_frames_from_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_release_frames_from_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32* }
%struct.napi_struct = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm_reorder_buffer = type { i32 }
%struct.iwl_mvm_baid_data = type { i64, %struct.iwl_mvm_reorder_buffer* }

@.str = private unnamed_addr constant [49 x i8] c"Frame release notification for BAID %u, NSSN %d\0A\00", align 1
@IWL_RX_REORDER_DATA_INVALID_BAID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.napi_struct*, i64, i32, i32, i32)* @iwl_mvm_release_frames_from_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_release_frames_from_notif(%struct.iwl_mvm* %0, %struct.napi_struct* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.napi_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_sta*, align 8
  %14 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %15 = alloca %struct.iwl_mvm_baid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18)
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @IWL_RX_REORDER_DATA_INVALID_BAID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @ARRAY_SIZE(i32* %27)
  %29 = icmp uge i64 %24, %28
  br label %30

30:                                               ; preds = %23, %6
  %31 = phi i1 [ true, %6 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %92

36:                                               ; preds = %30
  %37 = call i32 (...) @rcu_read_lock()
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @rcu_dereference(i32 %43)
  %45 = bitcast i8* %44 to %struct.iwl_mvm_baid_data*
  store %struct.iwl_mvm_baid_data* %45, %struct.iwl_mvm_baid_data** %15, align 8
  %46 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %47 = icmp ne %struct.iwl_mvm_baid_data* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON_ONCE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %90

53:                                               ; preds = %36
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @rcu_dereference(i32 %61)
  %63 = bitcast i8* %62 to %struct.ieee80211_sta*
  store %struct.ieee80211_sta* %63, %struct.ieee80211_sta** %13, align 8
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %65 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %64)
  %66 = call i64 @WARN_ON_ONCE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %90

69:                                               ; preds = %53
  %70 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %70, i32 0, i32 1
  %72 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %72, i64 %74
  store %struct.iwl_mvm_reorder_buffer* %75, %struct.iwl_mvm_reorder_buffer** %14, align 8
  %76 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %14, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %76, i32 0, i32 0
  %78 = call i32 @spin_lock_bh(i32* %77)
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %80 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  %81 = load %struct.napi_struct*, %struct.napi_struct** %8, align 8
  %82 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %83 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %14, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @iwl_mvm_release_frames(%struct.iwl_mvm* %79, %struct.ieee80211_sta* %80, %struct.napi_struct* %81, %struct.iwl_mvm_baid_data* %82, %struct.iwl_mvm_reorder_buffer* %83, i32 %84, i32 %85)
  %87 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %14, align 8
  %88 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  br label %90

90:                                               ; preds = %69, %68, %52
  %91 = call i32 (...) @rcu_read_unlock()
  br label %92

92:                                               ; preds = %90, %35
  ret void
}

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_mvm*, i8*, i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_release_frames(%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.napi_struct*, %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_reorder_buffer*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
