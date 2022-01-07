; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.napi_struct = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_rx_complete(%struct.mt76_dev* %0, %struct.sk_buff_head* %1, %struct.napi_struct* %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.napi_struct* %2, %struct.napi_struct** %6, align 8
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  br label %12

12:                                               ; preds = %23, %20, %3
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %14 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i64 @mt76_check_ccmp_pn(%struct.sk_buff* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @dev_kfree_skb(%struct.sk_buff* %21)
  br label %12

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call %struct.ieee80211_sta* @mt76_rx_convert(%struct.sk_buff* %24)
  store %struct.ieee80211_sta* %25, %struct.ieee80211_sta** %7, align 8
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %32 = call i32 @ieee80211_rx_napi(i32 %28, %struct.ieee80211_sta* %29, %struct.sk_buff* %30, %struct.napi_struct* %31)
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %35 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @mt76_check_ccmp_pn(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_sta* @mt76_rx_convert(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_napi(i32, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.napi_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
