; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_prism2_sta_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_prism2_sta_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.hostap_ieee80211_mgmt = type { i32, i32, i32, i32 }
%struct.hostap_skb_tx_data = type { i32, i32 }

@IEEE80211_MGMT_HDR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@HOSTAP_SKB_TX_DATA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_sta_send_mgmt(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.hostap_ieee80211_mgmt*, align 8
  %14 = alloca %struct.hostap_skb_tx_data*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %15, align 8
  %19 = load i64, i64* @IEEE80211_MGMT_HDR_LEN, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %19, %20
  %22 = call %struct.sk_buff* @dev_alloc_skb(i64 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %88

28:                                               ; preds = %5
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = load i64, i64* @IEEE80211_MGMT_HDR_LEN, align 8
  %31 = call %struct.hostap_ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %29, i64 %30)
  store %struct.hostap_ieee80211_mgmt* %31, %struct.hostap_ieee80211_mgmt** %13, align 8
  %32 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %37 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %39 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  %44 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %45 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net_device*, %struct.net_device** %15, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %46, i32* %49, i32 %50)
  %52 = load %struct.hostap_ieee80211_mgmt*, %struct.hostap_ieee80211_mgmt** %13, align 8
  %53 = getelementptr inbounds %struct.hostap_ieee80211_mgmt, %struct.hostap_ieee80211_mgmt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %54, i32* %55, i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %28
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @skb_put_data(%struct.sk_buff* %61, i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %60, %28
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %69, %struct.hostap_skb_tx_data** %14, align 8
  %70 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %71 = call i32 @memset(%struct.hostap_skb_tx_data* %70, i32 0, i32 8)
  %72 = load i32, i32* @HOSTAP_SKB_TX_DATA_MAGIC, align 4
  %73 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %74 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.net_device*, %struct.net_device** %15, align 8
  %76 = call i32 @netdev_priv(%struct.net_device* %75)
  %77 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %14, align 8
  %78 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %15, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store %struct.net_device* %79, %struct.net_device** %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = call i32 @skb_reset_mac_header(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = call i32 @skb_reset_network_header(%struct.sk_buff* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = call i32 @dev_queue_xmit(%struct.sk_buff* %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %65, %25
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local %struct.hostap_ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @memset(%struct.hostap_skb_tx_data*, i32, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
