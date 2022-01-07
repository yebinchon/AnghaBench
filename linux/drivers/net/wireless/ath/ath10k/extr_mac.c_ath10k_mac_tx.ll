; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ath10k_skb_cb = type { i32 }

@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"IEEE80211_TX_CTL_NO_CCK_RATE\0A\00", align 1
@ATH10K_FLAG_RAW_MODE = common dso_local global i32 0, align 4
@ATH10K_SKB_F_RAW_TX = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"queued offchannel skb %pK\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to submit frame: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_vif*, i32, i32, %struct.sk_buff*)* @ath10k_mac_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_tx(%struct.ath10k* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_hw*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ath10k_skb_cb*, align 8
  %15 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %11, align 8
  %16 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %17, align 8
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %22 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %21)
  store %struct.ath10k_skb_cb* %22, %struct.ath10k_skb_cb** %14, align 8
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %31 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %32 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %30, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %70 [
    i32 130, label %35
    i32 129, label %35
    i32 131, label %46
    i32 128, label %49
  ]

35:                                               ; preds = %33, %33
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = call i32 @ath10k_tx_h_nwifi(%struct.ieee80211_hw* %36, %struct.sk_buff* %37)
  %39 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = call i32 @ath10k_tx_h_add_p2p_noa_ie(%struct.ath10k* %39, %struct.ieee80211_vif* %40, %struct.sk_buff* %41)
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = call i32 @ath10k_tx_h_seq_no(%struct.ieee80211_vif* %43, %struct.sk_buff* %44)
  br label %70

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = call i32 @ath10k_tx_h_8023(%struct.sk_buff* %47)
  br label %70

49:                                               ; preds = %33
  %50 = load i32, i32* @ATH10K_FLAG_RAW_MODE, align 4
  %51 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 2
  %53 = call i32 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  %56 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %14, align 8
  %57 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ATH10K_SKB_F_RAW_TX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = call i32 @WARN_ON_ONCE(i32 1)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %64, %struct.sk_buff* %65)
  %67 = load i32, i32* @ENOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %109

69:                                               ; preds = %55, %49
  br label %70

70:                                               ; preds = %69, %33, %46, %35
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %70
  %78 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %79 = call i32 @ath10k_mac_tx_frm_has_freq(%struct.ath10k* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %83 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %82, i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %84)
  %86 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %87 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %86, i32 0, i32 1
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i32 @skb_queue_tail(i32* %87, %struct.sk_buff* %88)
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  %91 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 0
  %93 = call i32 @ieee80211_queue_work(%struct.ieee80211_hw* %90, i32* %92)
  store i32 0, i32* %6, align 4
  br label %109

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %100 = call i32 @ath10k_mac_tx_submit(%struct.ath10k* %96, i32 %97, i32 %98, %struct.sk_buff* %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @ath10k_warn(%struct.ath10k* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %6, align 4
  br label %109

108:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %103, %81, %62
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @ath10k_tx_h_nwifi(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_tx_h_add_p2p_noa_ie(%struct.ath10k*, %struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_tx_h_seq_no(%struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_tx_h_8023(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_mac_tx_frm_has_freq(%struct.ath10k*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @ath10k_mac_tx_submit(%struct.ath10k*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
