; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_non_agg_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_non_agg_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.il_station_priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32*)* @il4965_non_agg_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_non_agg_tx_status(%struct.il_priv* %0, i32* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_sta*, align 8
  %6 = alloca %struct.il_station_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %10, i32* %11)
  store %struct.ieee80211_sta* %12, %struct.ieee80211_sta** %5, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %14 = icmp ne %struct.ieee80211_sta* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.il_station_priv*
  store %struct.il_station_priv* %20, %struct.il_station_priv** %6, align 8
  %21 = load %struct.il_station_priv*, %struct.il_station_priv** %6, align 8
  %22 = getelementptr inbounds %struct.il_station_priv, %struct.il_station_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %15
  %26 = load %struct.il_station_priv*, %struct.il_station_priv** %6, align 8
  %27 = getelementptr inbounds %struct.il_station_priv, %struct.il_station_priv* %26, i32 0, i32 0
  %28 = call i64 @atomic_dec_return(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %5, align 8
  %35 = call i32 @ieee80211_sta_block_awake(i32 %33, %struct.ieee80211_sta* %34, i32 0)
  br label %36

36:                                               ; preds = %30, %25, %15
  br label %37

37:                                               ; preds = %36, %2
  %38 = call i32 (...) @rcu_read_unlock()
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
