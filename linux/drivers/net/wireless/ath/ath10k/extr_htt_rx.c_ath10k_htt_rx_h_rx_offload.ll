; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_rx_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_rx_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.ath10k_htt }
%struct.ath10k_htt = type { %struct.ieee80211_rx_status }
%struct.ieee80211_rx_status = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.htt_rx_offload_msdu = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }

@.str = private unnamed_addr constant [48 x i8] c"dropping frame: offloaded rx msdu is too long!\0A\00", align 1
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff_head*)* @ath10k_htt_rx_h_rx_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_rx_offload(%struct.ath10k* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.ath10k_htt*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.htt_rx_offload_msdu*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  store %struct.ath10k_htt* %11, %struct.ath10k_htt** %5, align 8
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %5, align 8
  %13 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %12, i32 0, i32 0
  store %struct.ieee80211_rx_status* %13, %struct.ieee80211_rx_status** %6, align 8
  br label %14

14:                                               ; preds = %40, %35, %2
  %15 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %16 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %90

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.htt_rx_offload_msdu*
  store %struct.htt_rx_offload_msdu* %23, %struct.htt_rx_offload_msdu** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i32 @skb_put(%struct.sk_buff* %24, i64 8)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @skb_pull(%struct.sk_buff* %26, i64 8)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call i64 @skb_tailroom(%struct.sk_buff* %28)
  %30 = load %struct.htt_rx_offload_msdu*, %struct.htt_rx_offload_msdu** %7, align 8
  %31 = getelementptr inbounds %struct.htt_rx_offload_msdu, %struct.htt_rx_offload_msdu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @__le16_to_cpu(i32 %32)
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = call i32 @ath10k_warn(%struct.ath10k* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %38)
  br label %14

40:                                               ; preds = %18
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load %struct.htt_rx_offload_msdu*, %struct.htt_rx_offload_msdu** %7, align 8
  %43 = getelementptr inbounds %struct.htt_rx_offload_msdu, %struct.htt_rx_offload_msdu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @__le16_to_cpu(i32 %44)
  %46 = call i32 @skb_put(%struct.sk_buff* %41, i64 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, 3
  %51 = sub i64 4, %50
  store i64 %51, i64* %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @skb_put(%struct.sk_buff* %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memmove(i64 %59, i64 %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @skb_pull(%struct.sk_buff* %67, i64 %68)
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %71 = call i32 @memset(%struct.ieee80211_rx_status* %70, i32 0, i32 4)
  %72 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %73 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = call i32 @ath10k_htt_rx_h_rx_offload_prot(%struct.ieee80211_rx_status* %77, %struct.sk_buff* %78)
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %82 = load %struct.htt_rx_offload_msdu*, %struct.htt_rx_offload_msdu** %7, align 8
  %83 = getelementptr inbounds %struct.htt_rx_offload_msdu, %struct.htt_rx_offload_msdu* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ath10k_htt_rx_h_channel(%struct.ath10k* %80, %struct.ieee80211_rx_status* %81, i32* null, i32 %84)
  %86 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %87 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @ath10k_htt_rx_h_queue_msdu(%struct.ath10k* %86, %struct.ieee80211_rx_status* %87, %struct.sk_buff* %88)
  br label %14

90:                                               ; preds = %14
  ret void
}

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @ath10k_htt_rx_h_rx_offload_prot(%struct.ieee80211_rx_status*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_htt_rx_h_channel(%struct.ath10k*, %struct.ieee80211_rx_status*, i32*, i32) #1

declare dso_local i32 @ath10k_htt_rx_h_queue_msdu(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
