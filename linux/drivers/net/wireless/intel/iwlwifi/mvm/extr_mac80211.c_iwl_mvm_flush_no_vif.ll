; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_flush_no_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_flush_no_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32*, i32 }
%struct.ieee80211_sta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, i32, i32)* @iwl_mvm_flush_no_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_flush_no_vif(%struct.iwl_mvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %10 = call i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %21 = call i32 @iwl_mvm_flushable_queues(%struct.iwl_mvm* %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %19, i32 %23, i32 0)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  br label %34

28:                                               ; preds = %12
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %15
  br label %82

35:                                               ; preds = %3
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %75, %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %39
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = call i32 @lockdep_is_held(i32* %55)
  %57 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %53, i32 %56)
  store %struct.ieee80211_sta* %57, %struct.ieee80211_sta** %8, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %59 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %75

62:                                               ; preds = %46
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @iwl_mvm_flush_sta_tids(%struct.iwl_mvm* %66, i32 %67, i32 255, i32 0)
  br label %74

69:                                               ; preds = %62
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %71 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %72 = call i32 @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %71)
  %73 = call i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm* %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %65
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %80 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  br label %82

82:                                               ; preds = %78, %34
  ret void
}

declare dso_local i32 @iwl_mvm_has_new_tx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @iwl_mvm_flushable_queues(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_mvm_flush_sta_tids(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_wait_sta_queues_empty(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
