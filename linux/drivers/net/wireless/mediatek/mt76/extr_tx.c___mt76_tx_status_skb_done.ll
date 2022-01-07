; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c___mt76_tx_status_skb_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c___mt76_tx_status_skb_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mt76_tx_cb = type { i32 }

@MT_TX_CB_DMA_DONE = common dso_local global i32 0, align 4
@MT_TX_CB_TXS_DONE = common dso_local global i32 0, align 4
@MT_TX_CB_TXS_FAILED = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.sk_buff*, i32, %struct.sk_buff_head*)* @__mt76_tx_status_skb_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mt76_tx_status_skb_done(%struct.mt76_dev* %0, %struct.sk_buff* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.mt76_tx_cb*, align 8
  %11 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.mt76_tx_cb* @mt76_tx_skb_cb(%struct.sk_buff* %14)
  store %struct.mt76_tx_cb* %15, %struct.mt76_tx_cb** %10, align 8
  %16 = load i32, i32* @MT_TX_CB_DMA_DONE, align 4
  %17 = load i32, i32* @MT_TX_CB_TXS_DONE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %10, align 8
  %20 = getelementptr inbounds %struct.mt76_tx_cb, %struct.mt76_tx_cb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %10, align 8
  %26 = getelementptr inbounds %struct.mt76_tx_cb, %struct.mt76_tx_cb* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %60

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %35, i32 0, i32 0
  %37 = call i32 @__skb_unlink(%struct.sk_buff* %34, i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MT_TX_CB_TXS_FAILED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %44 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %43)
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %52 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %42, %33
  %57 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %57, %struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %56, %32
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.mt76_tx_cb* @mt76_tx_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
