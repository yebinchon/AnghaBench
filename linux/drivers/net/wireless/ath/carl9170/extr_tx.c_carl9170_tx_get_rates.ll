; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_get_rates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_get_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_TX_MAX_RATES = common dso_local global i64 0, align 8
@CARL9170_TX_MAX_RATES = common dso_local global i64 0, align 8
@IEEE80211_TX_RATE_TABLE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*)* @carl9170_tx_get_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_get_rates(%struct.ar9170* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load i64, i64* @IEEE80211_TX_MAX_RATES, align 8
  %11 = load i64, i64* @CARL9170_TX_MAX_RATES, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i64, i64* @IEEE80211_TX_MAX_RATES, align 8
  %16 = load i64, i64* @IEEE80211_TX_RATE_TABLE_SIZE, align 8
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %9, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @IEEE80211_TX_MAX_RATES, align 8
  %30 = call i32 @ieee80211_get_tx_rates(%struct.ieee80211_vif* %22, %struct.ieee80211_sta* %23, %struct.sk_buff* %24, i32 %28, i64 %29)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_tx_rates(%struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
