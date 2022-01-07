; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_disable_sta_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_disable_sta_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_mvm_sta = type { %struct.TYPE_3__* }
%struct.iwl_mvm_txq = type { i64 }

@IWL_MVM_INVALID_QUEUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @iwl_mvm_disable_sta_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_disable_sta_queues(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_mvm_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_txq*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %11 = call %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta* %10)
  store %struct.iwl_mvm_sta* %11, %struct.iwl_mvm_sta** %7, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %55, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %15
  %23 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %37 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @iwl_mvm_disable_txq(%struct.iwl_mvm* %35, %struct.ieee80211_sta* %36, i64 %44, i32 %45, i32 0)
  %47 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %48 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 %47, i64* %54, align 8
  br label %55

55:                                               ; preds = %34, %33
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %79, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %63)
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(i64 %74)
  store %struct.iwl_mvm_txq* %75, %struct.iwl_mvm_txq** %9, align 8
  %76 = load i64, i64* @IWL_MVM_INVALID_QUEUE, align 8
  %77 = load %struct.iwl_mvm_txq*, %struct.iwl_mvm_txq** %9, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_txq, %struct.iwl_mvm_txq* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %59

82:                                               ; preds = %59
  ret void
}

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_sta_from_mac80211(%struct.ieee80211_sta*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @iwl_mvm_disable_txq(%struct.iwl_mvm*, %struct.ieee80211_sta*, i64, i32, i32) #1

declare dso_local %struct.iwl_mvm_txq* @iwl_mvm_txq_from_mac80211(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
