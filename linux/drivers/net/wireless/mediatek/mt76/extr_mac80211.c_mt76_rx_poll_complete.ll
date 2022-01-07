; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_poll_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_rx_poll_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32* }
%struct.napi_struct = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_rx_poll_complete(%struct.mt76_dev* %0, i32 %1, %struct.napi_struct* %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.sk_buff_head, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.napi_struct* %2, %struct.napi_struct** %6, align 8
  %9 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %7)
  br label %10

10:                                               ; preds = %19, %3
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call %struct.sk_buff* @__skb_dequeue(i32* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call i32 @mt76_check_sta(%struct.mt76_dev* %20, %struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i32 @mt76_rx_aggr_reorder(%struct.sk_buff* %23, %struct.sk_buff_head* %7)
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %27 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %28 = call i32 @mt76_rx_complete(%struct.mt76_dev* %26, %struct.sk_buff_head* %7, %struct.napi_struct* %27)
  ret void
}

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @mt76_check_sta(%struct.mt76_dev*, %struct.sk_buff*) #1

declare dso_local i32 @mt76_rx_aggr_reorder(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @mt76_rx_complete(%struct.mt76_dev*, %struct.sk_buff_head*, %struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
