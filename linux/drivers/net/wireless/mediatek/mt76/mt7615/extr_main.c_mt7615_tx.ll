; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_main.c_mt7615_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7615_dev* }
%struct.mt7615_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.mt76_wcid }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_tx_control = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.mt7615_sta = type { %struct.mt76_wcid }
%struct.mt7615_vif = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mt76_wcid }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @mt7615_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mt7615_dev*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.mt76_wcid*, align 8
  %11 = alloca %struct.mt7615_sta*, align 8
  %12 = alloca %struct.mt7615_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt7615_dev*, %struct.mt7615_dev** %14, align 8
  store %struct.mt7615_dev* %15, %struct.mt7615_dev** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %8, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %20, align 8
  store %struct.ieee80211_vif* %21, %struct.ieee80211_vif** %9, align 8
  %22 = load %struct.mt7615_dev*, %struct.mt7615_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.mt76_wcid* %24, %struct.mt76_wcid** %10, align 8
  %25 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.mt7615_sta*
  store %struct.mt7615_sta* %35, %struct.mt7615_sta** %11, align 8
  %36 = load %struct.mt7615_sta*, %struct.mt7615_sta** %11, align 8
  %37 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %36, i32 0, i32 0
  store %struct.mt76_wcid* %37, %struct.mt76_wcid** %10, align 8
  br label %38

38:                                               ; preds = %29, %3
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %40 = icmp ne %struct.ieee80211_vif* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.mt7615_vif*
  store %struct.mt7615_vif* %50, %struct.mt7615_vif** %12, align 8
  %51 = load %struct.mt7615_vif*, %struct.mt7615_vif** %12, align 8
  %52 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.mt76_wcid* %53, %struct.mt76_wcid** %10, align 8
  br label %54

54:                                               ; preds = %46, %41, %38
  %55 = load %struct.mt7615_dev*, %struct.mt7615_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %10, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @mt76_tx(%struct.TYPE_7__* %56, %struct.TYPE_8__* %59, %struct.mt76_wcid* %60, %struct.sk_buff* %61)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mt76_tx(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.mt76_wcid*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
