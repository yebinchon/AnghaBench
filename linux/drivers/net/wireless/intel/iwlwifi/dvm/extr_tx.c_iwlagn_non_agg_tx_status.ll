; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_non_agg_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_non_agg_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_station_priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*)* @iwlagn_non_agg_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_non_agg_tx_status(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, i32* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_station_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %12, i32* %13)
  store %struct.ieee80211_sta* %14, %struct.ieee80211_sta** %7, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %16 = icmp ne %struct.ieee80211_sta* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %22, %struct.iwl_station_priv** %8, align 8
  %23 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %8, align 8
  %24 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %8, align 8
  %29 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %28, i32 0, i32 0
  %30 = call i64 @atomic_dec_return(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %37 = call i32 @ieee80211_sta_block_awake(i32 %35, %struct.ieee80211_sta* %36, i32 0)
  br label %38

38:                                               ; preds = %32, %27, %17
  br label %39

39:                                               ; preds = %38, %3
  %40 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @ieee80211_sta_block_awake(i32, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
