; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_pick_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_pick_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ar9170 = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.carl9170_tx_info = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ar9170*, %struct.sk_buff_head*)* @carl9170_tx_pick_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @carl9170_tx_pick_skb(%struct.ar9170* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.carl9170_tx_info*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  %9 = call i32 @BUILD_BUG_ON(i32 0)
  %10 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %14 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i64 @carl9170_alloc_dev_space(%struct.ar9170* %23, %struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %46

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %31 = call i32 @__skb_unlink(%struct.sk_buff* %29, %struct.sk_buff_head* %30)
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %35)
  store %struct.ieee80211_tx_info* %36, %struct.ieee80211_tx_info** %7, align 8
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to %struct.carl9170_tx_info*
  store %struct.carl9170_tx_info* %41, %struct.carl9170_tx_info** %8, align 8
  %42 = load i32, i32* @jiffies, align 4
  %43 = load %struct.carl9170_tx_info*, %struct.carl9170_tx_info** %8, align 8
  %44 = getelementptr inbounds %struct.carl9170_tx_info, %struct.carl9170_tx_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %3, align 8
  br label %50

46:                                               ; preds = %27, %21
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %50

50:                                               ; preds = %46, %28
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %51
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @carl9170_alloc_dev_space(%struct.ar9170*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
