; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.sk_buff = type { i32 }

@RX_FLAG_AMSDU_MORE = common dso_local global i32 0, align 4
@RX_FLAG_ALLOW_SAME_PN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*)* @ath10k_htt_rx_h_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_enqueue(%struct.ath10k* %0, %struct.sk_buff_head* %1, %struct.ieee80211_rx_status* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff_head*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %5, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %6, align 8
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %10 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %8, align 8
  br label %11

11:                                               ; preds = %49, %3
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %13 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %5, align 8
  %17 = call i64 @skb_queue_empty(%struct.sk_buff_head* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %32

26:                                               ; preds = %15
  %27 = load i32, i32* @RX_FLAG_AMSDU_MORE, align 4
  %28 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = icmp eq %struct.sk_buff* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %37 = load i32, i32* @RX_FLAG_ALLOW_SAME_PN, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @RX_FLAG_ALLOW_SAME_PN, align 4
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i32 @ath10k_htt_rx_h_queue_msdu(%struct.ath10k* %50, %struct.ieee80211_rx_status* %51, %struct.sk_buff* %52)
  br label %11

54:                                               ; preds = %11
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @ath10k_htt_rx_h_queue_msdu(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
