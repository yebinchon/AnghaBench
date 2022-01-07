; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*, i64*)* @ath10k_htt_rx_h_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_filter(%struct.ath10k* %0, %struct.sk_buff_head* %1, %struct.ieee80211_rx_status* %2, i64* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i64*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %10 = call i64 @skb_queue_empty(%struct.sk_buff_head* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %32

13:                                               ; preds = %4
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %16 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %17 = call i64 @ath10k_htt_rx_amsdu_allowed(%struct.ath10k* %14, %struct.sk_buff_head* %15, %struct.ieee80211_rx_status* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %32

20:                                               ; preds = %13
  %21 = load i64*, i64** %8, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %25 = call i64 @skb_queue_len(%struct.sk_buff_head* %24)
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %31 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %30)
  br label %32

32:                                               ; preds = %29, %19, %12
  ret void
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i64 @ath10k_htt_rx_amsdu_allowed(%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
