; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_ppdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_ppdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.htt_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RX_ATTENTION_FLAGS_FIRST_MPDU = common dso_local global i32 0, align 4
@RX_ATTENTION_FLAGS_LAST_MPDU = common dso_local global i32 0, align 4
@RX_ENC_LEGACY = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_IS_LAST = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RX_FLAG_AMPDU_LAST_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff_head*, %struct.ieee80211_rx_status*, i32)* @ath10k_htt_rx_h_ppdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_ppdu(%struct.ath10k* %0, %struct.sk_buff_head* %1, %struct.ieee80211_rx_status* %2, i32 %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.htt_rx_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %6, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %14 = call i64 @skb_queue_empty(%struct.sk_buff_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %122

17:                                               ; preds = %4
  %18 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %19 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr i8, i8* %23, i64 -4
  %25 = bitcast i8* %24 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %25, %struct.htt_rx_desc** %10, align 8
  %26 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %27 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RX_ATTENTION_FLAGS_FIRST_MPDU, align 4
  %31 = call i32 @__cpu_to_le32(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %38 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RX_ATTENTION_FLAGS_LAST_MPDU, align 4
  %42 = call i32 @__cpu_to_le32(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %17
  %51 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @RX_ENC_LEGACY, align 4
  %58 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @RATE_INFO_BW_20, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @RX_FLAG_AMPDU_IS_LAST, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %81 = load i32, i32* @RX_FLAG_AMPDU_LAST_KNOWN, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %93 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %94 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %95 = call i32 @ath10k_htt_rx_h_signal(%struct.ath10k* %92, %struct.ieee80211_rx_status* %93, %struct.htt_rx_desc* %94)
  %96 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %98 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ath10k_htt_rx_h_channel(%struct.ath10k* %96, %struct.ieee80211_rx_status* %97, %struct.htt_rx_desc* %98, i32 %99)
  %101 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %103 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %104 = call i32 @ath10k_htt_rx_h_rates(%struct.ath10k* %101, %struct.ieee80211_rx_status* %102, %struct.htt_rx_desc* %103)
  br label %105

105:                                              ; preds = %50, %17
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %110 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %111 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %10, align 8
  %112 = call i32 @ath10k_htt_rx_h_mactime(%struct.ath10k* %109, %struct.ieee80211_rx_status* %110, %struct.htt_rx_desc* %111)
  %113 = load i32, i32* @RX_FLAG_AMPDU_IS_LAST, align 4
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %115 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %119 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %16, %108, %105
  ret void
}

declare dso_local i64 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_htt_rx_h_signal(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*) #1

declare dso_local i32 @ath10k_htt_rx_h_channel(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*, i32) #1

declare dso_local i32 @ath10k_htt_rx_h_rates(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*) #1

declare dso_local i32 @ath10k_htt_rx_h_mactime(%struct.ath10k*, %struct.ieee80211_rx_status*, %struct.htt_rx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
