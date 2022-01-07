; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mt76_wcid }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_tx_control = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.mt76x02_sta = type { %struct.mt76_wcid }
%struct.mt76x02_vif = type { %struct.mt76_wcid }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.mt76x02_dev*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.mt76_wcid*, align 8
  %11 = alloca %struct.mt76x02_sta*, align 8
  %12 = alloca %struct.mt76x02_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %16, align 8
  store %struct.mt76x02_dev* %17, %struct.mt76x02_dev** %8, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  store %struct.ieee80211_vif* %21, %struct.ieee80211_vif** %9, align 8
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %8, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.mt76_wcid* %24, %struct.mt76_wcid** %10, align 8
  %25 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.mt76x02_sta*
  store %struct.mt76x02_sta* %35, %struct.mt76x02_sta** %11, align 8
  %36 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %11, align 8
  %37 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %36, i32 0, i32 0
  store %struct.mt76_wcid* %37, %struct.mt76_wcid** %10, align 8
  br label %49

38:                                               ; preds = %3
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %40 = icmp ne %struct.ieee80211_vif* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.mt76x02_vif*
  store %struct.mt76x02_vif* %45, %struct.mt76x02_vif** %12, align 8
  %46 = load %struct.mt76x02_vif*, %struct.mt76x02_vif** %12, align 8
  %47 = getelementptr inbounds %struct.mt76x02_vif, %struct.mt76x02_vif* %46, i32 0, i32 0
  store %struct.mt76_wcid* %47, %struct.mt76_wcid** %10, align 8
  br label %48

48:                                               ; preds = %41, %38
  br label %49

49:                                               ; preds = %48, %29
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %8, align 8
  %51 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %50, i32 0, i32 0
  %52 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load %struct.mt76_wcid*, %struct.mt76_wcid** %10, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i32 @mt76_tx(%struct.TYPE_5__* %51, %struct.TYPE_6__* %54, %struct.mt76_wcid* %55, %struct.sk_buff* %56)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mt76_tx(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.mt76_wcid*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
