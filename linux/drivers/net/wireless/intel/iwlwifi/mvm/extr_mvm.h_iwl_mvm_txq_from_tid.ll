; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_txq_from_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mvm.h_iwl_mvm_txq_from_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm_txq = type opaque
%struct.ieee80211_sta = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_mvm_txq* (%struct.ieee80211_sta*, i64)* @iwl_mvm_txq_from_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_mvm_txq* @iwl_mvm_txq_from_tid(%struct.ieee80211_sta* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_sta*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_sta* %0, %struct.ieee80211_sta** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_mvm_txq*
  ret %struct.iwl_mvm_txq* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
