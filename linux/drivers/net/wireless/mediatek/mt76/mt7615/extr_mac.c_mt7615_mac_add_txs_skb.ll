; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_add_txs_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_add_txs_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.mt76_dev }
%struct.mt76_dev = type { i32 }
%struct.mt7615_sta = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MT_PACKET_ID_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, %struct.mt7615_sta*, i32, i32*)* @mt7615_mac_add_txs_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_mac_add_txs_skb(%struct.mt7615_dev* %0, %struct.mt7615_sta* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7615_dev*, align 8
  %7 = alloca %struct.mt7615_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mt76_dev*, align 8
  %11 = alloca %struct.sk_buff_head, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %6, align 8
  store %struct.mt7615_sta* %1, %struct.mt7615_sta** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %14, i32 0, i32 0
  store %struct.mt76_dev* %15, %struct.mt76_dev** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MT_PACKET_ID_FIRST, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  %21 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %22 = call i32 @mt76_tx_status_lock(%struct.mt76_dev* %21, %struct.sk_buff_head* %11)
  %23 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %24 = load %struct.mt7615_sta*, %struct.mt7615_sta** %7, align 8
  %25 = getelementptr inbounds %struct.mt7615_sta, %struct.mt7615_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.sk_buff* @mt76_tx_status_skb_get(%struct.mt76_dev* %23, i32* %25, i32 %26, %struct.sk_buff_head* %11)
  store %struct.sk_buff* %27, %struct.sk_buff** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %31)
  store %struct.ieee80211_tx_info* %32, %struct.ieee80211_tx_info** %13, align 8
  %33 = load %struct.mt7615_dev*, %struct.mt7615_dev** %6, align 8
  %34 = load %struct.mt7615_sta*, %struct.mt7615_sta** %7, align 8
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @mt7615_fill_txs(%struct.mt7615_dev* %33, %struct.mt7615_sta* %34, %struct.ieee80211_tx_info* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %41 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %40)
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = call i32 @mt76_tx_status_skb_done(%struct.mt76_dev* %49, %struct.sk_buff* %50, %struct.sk_buff_head* %11)
  br label %52

52:                                               ; preds = %48, %20
  %53 = load %struct.mt76_dev*, %struct.mt76_dev** %10, align 8
  %54 = call i32 @mt76_tx_status_unlock(%struct.mt76_dev* %53, %struct.sk_buff_head* %11)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @mt76_tx_status_lock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @mt76_tx_status_skb_get(%struct.mt76_dev*, i32*, i32, %struct.sk_buff_head*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @mt7615_fill_txs(%struct.mt7615_dev*, %struct.mt7615_sta*, %struct.ieee80211_tx_info*, i32*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @mt76_tx_status_skb_done(%struct.mt76_dev*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @mt76_tx_status_unlock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
