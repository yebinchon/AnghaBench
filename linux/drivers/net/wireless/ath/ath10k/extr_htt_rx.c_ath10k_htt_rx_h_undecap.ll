; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_undecap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_h_undecap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.htt_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RX_MSDU_START_INFO1_DECAP_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*, i32*, i32, i32)* @ath10k_htt_rx_h_undecap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_h_undecap(%struct.ath10k* %0, %struct.sk_buff* %1, %struct.ieee80211_rx_status* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.htt_rx_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_rx_status* %2, %struct.ieee80211_rx_status** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr i8, i8* %18, i64 -4
  %20 = bitcast i8* %19 to %struct.htt_rx_desc*
  store %struct.htt_rx_desc* %20, %struct.htt_rx_desc** %13, align 8
  %21 = load %struct.htt_rx_desc*, %struct.htt_rx_desc** %13, align 8
  %22 = getelementptr inbounds %struct.htt_rx_desc, %struct.htt_rx_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le32_to_cpu(i32 %25)
  %27 = load i32, i32* @RX_MSDU_START_INFO1_DECAP_FORMAT, align 4
  %28 = call i32 @MS(i32 %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  switch i32 %29, label %59 [
    i32 128, label %30
    i32 129, label %38
    i32 130, label %45
    i32 131, label %52
  ]

30:                                               ; preds = %6
  %31 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @ath10k_htt_rx_h_undecap_raw(%struct.ath10k* %31, %struct.sk_buff* %32, %struct.ieee80211_rx_status* %33, i32 %34, i32 %35, i32* %36)
  br label %59

38:                                               ; preds = %6
  %39 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @ath10k_htt_rx_h_undecap_nwifi(%struct.ath10k* %39, %struct.sk_buff* %40, %struct.ieee80211_rx_status* %41, i32* %42, i32 %43)
  br label %59

45:                                               ; preds = %6
  %46 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @ath10k_htt_rx_h_undecap_eth(%struct.ath10k* %46, %struct.sk_buff* %47, %struct.ieee80211_rx_status* %48, i32* %49, i32 %50)
  br label %59

52:                                               ; preds = %6
  %53 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ath10k_htt_rx_h_undecap_snap(%struct.ath10k* %53, %struct.sk_buff* %54, %struct.ieee80211_rx_status* %55, i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %6, %52, %45, %38, %30
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_htt_rx_h_undecap_raw(%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*, i32, i32, i32*) #1

declare dso_local i32 @ath10k_htt_rx_h_undecap_nwifi(%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*, i32*, i32) #1

declare dso_local i32 @ath10k_htt_rx_h_undecap_eth(%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*, i32*, i32) #1

declare dso_local i32 @ath10k_htt_rx_h_undecap_snap(%struct.ath10k*, %struct.sk_buff*, %struct.ieee80211_rx_status*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
