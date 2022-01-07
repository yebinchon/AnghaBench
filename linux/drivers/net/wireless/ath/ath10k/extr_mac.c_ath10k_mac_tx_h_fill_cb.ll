; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_fill_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_fill_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_txq = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath10k_skb_cb = type { i32, %struct.ieee80211_txq*, %struct.ieee80211_vif*, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH10K_SKB_F_NO_HWCRYPT = common dso_local global i32 0, align 4
@ATH10K_SKB_F_MGMT = common dso_local global i32 0, align 4
@ATH10K_SKB_F_QOS = common dso_local global i32 0, align 4
@ATH10K_SKB_F_RAW_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_txq*, %struct.sk_buff*, i32)* @ath10k_mac_tx_h_fill_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_tx_h_fill_cb(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_txq* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_txq*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ath10k_skb_cb*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_txq* %2, %struct.ieee80211_txq** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %20)
  store %struct.ath10k_skb_cb* %21, %struct.ath10k_skb_cb** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %22)
  store %struct.ieee80211_tx_info* %23, %struct.ieee80211_tx_info** %13, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ieee80211_is_data(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ieee80211_is_data_qos(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %29, %5
  %36 = phi i1 [ true, %5 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %39 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %38, i32 0, i32 3
  store i32 0, i32* %39, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = call i32 @ath10k_tx_h_use_hwcrypto(%struct.ieee80211_vif* %40, %struct.sk_buff* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ATH10K_SKB_F_NO_HWCRYPT, align 4
  %46 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %47 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ieee80211_is_mgmt(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* @ATH10K_SKB_F_MGMT, align 4
  %58 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %59 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ieee80211_is_data_qos(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load i32, i32* @ATH10K_SKB_F_QOS, align 4
  %70 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %71 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ieee80211_has_protected(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @ATH10K_SKB_F_NO_HWCRYPT, align 4
  %91 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %92 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @ATH10K_SKB_F_RAW_TX, align 4
  %96 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %97 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %89, %83, %77, %74
  %101 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %102 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %103 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %102, i32 0, i32 2
  store %struct.ieee80211_vif* %101, %struct.ieee80211_vif** %103, align 8
  %104 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %8, align 8
  %105 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %106 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %105, i32 0, i32 1
  store %struct.ieee80211_txq* %104, %struct.ieee80211_txq** %106, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %12, align 8
  %109 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  ret void
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ath10k_tx_h_use_hwcrypto(%struct.ieee80211_vif*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
