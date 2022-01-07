; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_del_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_del_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32* }
%struct.iwl_mvm_delba_data = type { i64 }
%struct.iwl_mvm_baid_data = type { i64, %struct.iwl_mvm_reorder_buffer* }
%struct.iwl_mvm_reorder_buffer = type { i32, i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }

@IWL_MAX_BAID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"invalid BAID: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32, %struct.iwl_mvm_delba_data*)* @iwl_mvm_del_ba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_del_ba(%struct.iwl_mvm* %0, i32 %1, %struct.iwl_mvm_delba_data* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm_delba_data*, align 8
  %7 = alloca %struct.iwl_mvm_baid_data*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.iwl_mvm_reorder_buffer*, align 8
  %10 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.iwl_mvm_delba_data* %2, %struct.iwl_mvm_delba_data** %6, align 8
  %11 = load %struct.iwl_mvm_delba_data*, %struct.iwl_mvm_delba_data** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm_delba_data, %struct.iwl_mvm_delba_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @IWL_MAX_BAID, align 8
  %16 = icmp uge i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %85

22:                                               ; preds = %3
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @rcu_dereference(i32 %29)
  %31 = bitcast i8* %30 to %struct.iwl_mvm_baid_data*
  store %struct.iwl_mvm_baid_data* %31, %struct.iwl_mvm_baid_data** %7, align 8
  %32 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %7, align 8
  %33 = icmp ne %struct.iwl_mvm_baid_data* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %83

39:                                               ; preds = %22
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %7, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @rcu_dereference(i32 %47)
  %49 = bitcast i8* %48 to %struct.ieee80211_sta*
  store %struct.ieee80211_sta* %49, %struct.ieee80211_sta** %8, align 8
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %51 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %50)
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %83

55:                                               ; preds = %39
  %56 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %7, align 8
  %57 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %56, i32 0, i32 1
  %58 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %58, i64 %60
  store %struct.iwl_mvm_reorder_buffer* %61, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %62 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %66 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %67 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %7, align 8
  %68 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %69 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %73 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ieee80211_sn_add(i32 %71, i32 %74)
  %76 = call i32 @iwl_mvm_release_frames(%struct.iwl_mvm* %65, %struct.ieee80211_sta* %66, i32* null, %struct.iwl_mvm_baid_data* %67, %struct.iwl_mvm_reorder_buffer* %68, i32 %75, i32 0)
  %77 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.iwl_mvm_reorder_buffer*, %struct.iwl_mvm_reorder_buffer** %9, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_reorder_buffer, %struct.iwl_mvm_reorder_buffer* %80, i32 0, i32 0
  %82 = call i32 @del_timer_sync(i32* %81)
  br label %83

83:                                               ; preds = %55, %54, %38
  %84 = call i32 (...) @rcu_read_unlock()
  br label %85

85:                                               ; preds = %83, %21
  ret void
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_release_frames(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32*, %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_reorder_buffer*, i32, i32) #1

declare dso_local i32 @ieee80211_sn_add(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
