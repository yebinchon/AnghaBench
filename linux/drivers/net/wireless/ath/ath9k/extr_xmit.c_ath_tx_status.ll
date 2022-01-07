; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_xmit.c_ath_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_xmit.c_ath_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_sta** }
%struct.ieee80211_sta = type { i32 }

@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_STATUS_EOSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @ath_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_status(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %7)
  store %struct.ieee80211_tx_info* %8, %struct.ieee80211_tx_info** %5, align 8
  %9 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_sta**, %struct.ieee80211_sta*** %11, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, i64 0
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %13, align 8
  store %struct.ieee80211_sta* %14, %struct.ieee80211_sta** %6, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %19 = load i32, i32* @IEEE80211_TX_STATUS_EOSP, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @ieee80211_tx_status(%struct.ieee80211_hw* %24, %struct.sk_buff* %25)
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %29 = icmp ne %struct.ieee80211_sta* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %33 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %34 = call i32 @ieee80211_tx_status_noskb(%struct.ieee80211_hw* %31, %struct.ieee80211_sta* %32, %struct.ieee80211_tx_info* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %35, %23
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_status(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_status_noskb(%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
