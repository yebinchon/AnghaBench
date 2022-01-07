; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_queue_ps_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_queue_ps_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)* }
%struct.mt76_wcid = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_CTRL_PS_RESPONSE = common dso_local global i32 0, align 4
@IEEE80211_TX_STATUS_EOSP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@MT_TXQ_PSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.ieee80211_sta*, %struct.sk_buff*, i32)* @mt76_queue_ps_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_queue_ps_skb(%struct.mt76_dev* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76_wcid*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mt76_wcid*
  store %struct.mt76_wcid* %14, %struct.mt76_wcid** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %10, align 8
  %17 = load i32, i32* @IEEE80211_TX_CTRL_PS_RESPONSE, align 4
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %27 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %25, %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @mt76_skb_set_moredata(%struct.sk_buff* %34, i32 %38)
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, %struct.ieee80211_sta*)** %43, align 8
  %45 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %46 = load i32, i32* @MT_TXQ_PSD, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load %struct.mt76_wcid*, %struct.mt76_wcid** %9, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %50 = call i32 %44(%struct.mt76_dev* %45, i32 %46, %struct.sk_buff* %47, %struct.mt76_wcid* %48, %struct.ieee80211_sta* %49)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mt76_skb_set_moredata(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
