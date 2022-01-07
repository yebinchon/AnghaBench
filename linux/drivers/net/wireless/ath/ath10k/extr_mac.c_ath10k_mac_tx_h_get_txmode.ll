; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_get_txmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_tx_h_get_txmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ath10k_skb_cb = type { i32 }

@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@ATH10K_HW_TXRX_RAW = common dso_local global i32 0, align 4
@ATH10K_HW_TXRX_MGMT = common dso_local global i32 0, align 4
@ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX = common dso_local global i32 0, align 4
@ATH10K_HW_TXRX_ETHERNET = common dso_local global i32 0, align 4
@ATH10K_FLAG_RAW_MODE = common dso_local global i32 0, align 4
@ATH10K_SKB_F_RAW_TX = common dso_local global i32 0, align 4
@ATH10K_HW_TXRX_NATIVE_WIFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.sk_buff*)* @ath10k_mac_tx_h_get_txmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_tx_h_get_txmode(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ath10k_skb_cb*, align 8
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff* %18)
  store %struct.ath10k_skb_cb* %19, %struct.ath10k_skb_cb** %11, align 8
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %24 = icmp ne %struct.ieee80211_vif* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %4
  %32 = load i32, i32* @ATH10K_HW_TXRX_RAW, align 4
  store i32 %32, i32* %5, align 4
  br label %96

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @ieee80211_is_mgmt(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ATH10K_HW_TXRX_MGMT, align 4
  store i32 %38, i32* %5, align 4
  br label %96

39:                                               ; preds = %33
  %40 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @ieee80211_is_nullfunc(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @ieee80211_is_qos_nullfunc(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @ATH10K_FW_FEATURE_HAS_WMI_MGMT_TX, align 4
  %55 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %56 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @test_bit(i32 %54, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ATH10K_HW_TXRX_MGMT, align 4
  store i32 %64, i32* %5, align 4
  br label %96

65:                                               ; preds = %53, %49, %39
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @ieee80211_is_data_present(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %71 = icmp ne %struct.ieee80211_sta* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @ATH10K_HW_TXRX_ETHERNET, align 4
  store i32 %78, i32* %5, align 4
  br label %96

79:                                               ; preds = %72, %69, %65
  %80 = load i32, i32* @ATH10K_FLAG_RAW_MODE, align 4
  %81 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %82 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %81, i32 0, i32 0
  %83 = call i64 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load %struct.ath10k_skb_cb*, %struct.ath10k_skb_cb** %11, align 8
  %87 = getelementptr inbounds %struct.ath10k_skb_cb, %struct.ath10k_skb_cb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATH10K_SKB_F_RAW_TX, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85, %79
  %93 = load i32, i32* @ATH10K_HW_TXRX_RAW, align 4
  store i32 %93, i32* %5, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @ATH10K_HW_TXRX_NATIVE_WIFI, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %92, %77, %63, %37, %31
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.ath10k_skb_cb* @ATH10K_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_data_present(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
