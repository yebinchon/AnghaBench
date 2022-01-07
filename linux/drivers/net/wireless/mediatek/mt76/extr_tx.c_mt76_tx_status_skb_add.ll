; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_status_skb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_status_skb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76_wcid = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.mt76_tx_cb = type { i32, i32, i32 }

@MT_PACKET_ID_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@MT_PACKET_ID_NO_SKB = common dso_local global i32 0, align 4
@MT_PACKET_ID_MASK = common dso_local global i32 0, align 4
@MT_PACKET_ID_FIRST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_tx_status_skb_add(%struct.mt76_dev* %0, %struct.mt76_wcid* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.mt76_wcid*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.mt76_tx_cb*, align 8
  %10 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %11)
  store %struct.ieee80211_tx_info* %12, %struct.ieee80211_tx_info** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.mt76_tx_cb* @mt76_tx_skb_cb(%struct.sk_buff* %13)
  store %struct.mt76_tx_cb* %14, %struct.mt76_tx_cb** %9, align 8
  %15 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %16 = icmp ne %struct.mt76_wcid* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MT_PACKET_ID_NO_ACK, align 4
  store i32 %18, i32* %4, align 4
  br label %93

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @MT_PACKET_ID_NO_ACK, align 4
  store i32 %27, i32* %4, align 4
  br label %93

28:                                               ; preds = %19
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %33 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @MT_PACKET_ID_NO_SKB, align 4
  store i32 %38, i32* %4, align 4
  br label %93

39:                                               ; preds = %28
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %9, align 8
  %45 = call i32 @memset(%struct.mt76_tx_cb* %44, i32 0, i32 12)
  %46 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %47 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @MT_PACKET_ID_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %53 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %55 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MT_PACKET_ID_NO_ACK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %39
  %60 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %61 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MT_PACKET_ID_NO_SKB, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %39
  %66 = load i32, i32* @MT_PACKET_ID_FIRST, align 4
  %67 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %68 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %71 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.mt76_wcid*, %struct.mt76_wcid** %6, align 8
  %74 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %9, align 8
  %77 = getelementptr inbounds %struct.mt76_tx_cb, %struct.mt76_tx_cb* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %9, align 8
  %80 = getelementptr inbounds %struct.mt76_tx_cb, %struct.mt76_tx_cb* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @jiffies, align 4
  %82 = load %struct.mt76_tx_cb*, %struct.mt76_tx_cb** %9, align 8
  %83 = getelementptr inbounds %struct.mt76_tx_cb, %struct.mt76_tx_cb* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %85 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %84, i32 0, i32 0
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @__skb_queue_tail(%struct.TYPE_2__* %85, %struct.sk_buff* %86)
  %88 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %89 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %69, %37, %26, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.mt76_tx_cb* @mt76_tx_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memset(%struct.mt76_tx_cb*, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
