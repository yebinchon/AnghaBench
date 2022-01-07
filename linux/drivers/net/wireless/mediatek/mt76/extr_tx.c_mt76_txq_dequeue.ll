; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mt76_dev = type { i32 }
%struct.mt76_txq = type { i32 }
%struct.ieee80211_txq = type { i32 }

@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.mt76_dev*, %struct.mt76_txq*, i32)* @mt76_txq_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev* %0, %struct.mt76_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.mt76_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_txq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.mt76_txq* %1, %struct.mt76_txq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mt76_txq*, %struct.mt76_txq** %6, align 8
  %12 = call %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq* %11)
  store %struct.ieee80211_txq* %12, %struct.ieee80211_txq** %8, align 8
  %13 = load %struct.mt76_txq*, %struct.mt76_txq** %6, align 8
  %14 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %13, i32 0, i32 0
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.mt76_txq*, %struct.mt76_txq** %6, align 8
  %28 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %27, i32 0, i32 0
  %29 = call i64 @skb_queue_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %8, align 8
  %33 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ieee80211_sta_set_buffered(i32 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %31, %26, %18
  %38 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %4, align 8
  br label %50

39:                                               ; preds = %3
  %40 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %8, align 8
  %44 = call %struct.sk_buff* @ieee80211_tx_dequeue(i32 %42, %struct.ieee80211_txq* %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %9, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %4, align 8
  br label %50

50:                                               ; preds = %48, %47, %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %51
}

declare dso_local %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @ieee80211_sta_set_buffered(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_tx_dequeue(i32, %struct.ieee80211_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
