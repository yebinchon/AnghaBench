; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_get_vdev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_get_vdev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ath10k_skb_cb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ath10k_vif = type { i32 }

@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_htt_tx_get_vdev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_htt_tx_get_vdev_id(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ath10k_skb_cb*, align 8
  %8 = alloca %struct.ath10k_vif*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %11)
  store %struct.ath10k_skb_cb* %12, %struct.ath10k_skb_cb** %7, align 8
  %13 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %7, align 8
  %26 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %7, align 8
  %31 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %36, %struct.ath10k_vif** %8, align 8
  %37 = load %struct.ath10k_vif*, %struct.ath10k_vif** %8, align 8
  %38 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45, %29, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
