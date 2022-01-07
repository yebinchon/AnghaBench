; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_complete_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_tx_complete_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

@MT_TX_CB_DMA_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_tx_complete_skb(%struct.mt76_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @ieee80211_free_txskb(i32 %13, %struct.sk_buff* %14)
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %18 = call i32 @mt76_tx_status_lock(%struct.mt76_dev* %17, %struct.sk_buff_head* %5)
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @MT_TX_CB_DMA_DONE, align 4
  %22 = call i32 @__mt76_tx_status_skb_done(%struct.mt76_dev* %19, %struct.sk_buff* %20, i32 %21, %struct.sk_buff_head* %5)
  %23 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %24 = call i32 @mt76_tx_status_unlock(%struct.mt76_dev* %23, %struct.sk_buff_head* %5)
  br label %25

25:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @ieee80211_free_txskb(i32, %struct.sk_buff*) #1

declare dso_local i32 @mt76_tx_status_lock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

declare dso_local i32 @__mt76_tx_status_skb_done(%struct.mt76_dev*, %struct.sk_buff*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @mt76_tx_status_unlock(%struct.mt76_dev*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
