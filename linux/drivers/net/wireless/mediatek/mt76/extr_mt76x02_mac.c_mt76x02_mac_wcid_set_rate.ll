; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_wcid_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_tx_rate = type { i32 }

@MT_WCID_TX_INFO_RATE = common dso_local global i32 0, align 4
@MT_WCID_TX_INFO_NSS = common dso_local global i32 0, align 4
@MT_WCID_TX_INFO_TXPWR_ADJ = common dso_local global i32 0, align 4
@MT_WCID_TX_INFO_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_wcid_set_rate(%struct.mt76x02_dev* %0, %struct.mt76_wcid* %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %5, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %13 = call i32 @mt76x02_tx_get_max_txpwr_adj(%struct.mt76x02_dev* %11, %struct.ieee80211_tx_rate* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %15 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %16 = call i32 @mt76x02_mac_tx_rate_val(%struct.mt76x02_dev* %14, %struct.ieee80211_tx_rate* %15, i32* %10)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @MT_WCID_TX_INFO_RATE, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @FIELD_PREP(i32 %17, i32 %18)
  %20 = load i32, i32* @MT_WCID_TX_INFO_NSS, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @FIELD_PREP(i32 %20, i32 %21)
  %23 = or i32 %19, %22
  %24 = load i32, i32* @MT_WCID_TX_INFO_TXPWR_ADJ, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @FIELD_PREP(i32 %24, i32 %25)
  %27 = or i32 %23, %26
  %28 = load i32, i32* @MT_WCID_TX_INFO_SET, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %32 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @mt76x02_tx_get_max_txpwr_adj(%struct.mt76x02_dev*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @mt76x02_mac_tx_rate_val(%struct.mt76x02_dev*, %struct.ieee80211_tx_rate*, i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
