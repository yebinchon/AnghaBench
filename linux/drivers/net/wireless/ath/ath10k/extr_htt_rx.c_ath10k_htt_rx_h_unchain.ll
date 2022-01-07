; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_unchain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_unchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i64 }
%struct.htt_rx_desc = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RX_MSDU_START_INFO1_DECAP_FORMAT = common dso_local global i32 0, align 4
@RX_MSDU_DECAP_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff_head*, i64*, i64*)* @ath10k_htt_rx_h_unchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_unchain(%struct.ath10k* %0, %struct.sk_buff_head* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.htt_rx_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %13 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr i8, i8* %17, i64 -16
  %19 = bitcast i8* %18 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %19, %struct.htt_rx_desc** %10, align 8
  %20 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %21 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__le32_to_cpu(i32 %24)
  %26 = load i32, i32* @RX_MSDU_START_INFO1_DECAP_FORMAT, align 4
  %27 = call i32 @MS(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RX_MSDU_DECAP_RAW, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %4
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %33 = call i64 @skb_queue_len(%struct.sk_buff_head* %32)
  %34 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %35 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 1, %37
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31, %4
  %41 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %42 = call i64 @skb_queue_len(%struct.sk_buff_head* %41)
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, %42
  store i64 %45, i64* %43, align 8
  %46 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %47 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %46)
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @ath10k_unchain_msdu(%struct.sk_buff_head* %49, i64* %50)
  br label %52

52:                                               ; preds = %48, %40
  ret void
}

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i64 @skb_queue_len(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @ath10k_unchain_msdu(%struct.sk_buff_head*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
