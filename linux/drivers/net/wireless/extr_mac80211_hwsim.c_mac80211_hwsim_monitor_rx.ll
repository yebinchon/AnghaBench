; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_monitor_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.hwsim_radiotap_hdr = type { i32, i8*, i8*, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_rate = type { i32, i32 }

@hwsim_mon = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PKTHDR_RADIOTAP_VERSION = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_RATE = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_TSFT = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_OFDM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_CCK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*)* @mac80211_hwsim_monitor_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hwsim_radiotap_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %14, align 8
  store %struct.mac80211_hwsim_data* %15, %struct.mac80211_hwsim_data** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %20 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %18, %struct.ieee80211_tx_info* %19)
  store %struct.ieee80211_rate* %20, %struct.ieee80211_rate** %12, align 8
  %21 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %22 = icmp ne %struct.ieee80211_rate* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %128

28:                                               ; preds = %3
  %29 = load i32, i32* @hwsim_mon, align 4
  %30 = call i32 @netif_running(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %128

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %34, i32 72, i32 0, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = icmp eq %struct.sk_buff* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %128

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call %struct.hwsim_radiotap_hdr* @skb_push(%struct.sk_buff* %41, i32 72)
  store %struct.hwsim_radiotap_hdr* %42, %struct.hwsim_radiotap_hdr** %9, align 8
  %43 = load i32, i32* @PKTHDR_RADIOTAP_VERSION, align 4
  %44 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %48 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = call i8* @cpu_to_le16(i32 72)
  %51 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %52 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i32, i32* @IEEE80211_RADIOTAP_FLAGS, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* @IEEE80211_RADIOTAP_RATE, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @IEEE80211_RADIOTAP_TSFT, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @IEEE80211_RADIOTAP_CHANNEL, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %70 = call i32 @__mac80211_hwsim_get_tsf(%struct.mac80211_hwsim_data* %69)
  %71 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %72 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %74 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 5
  %79 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %80 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %86 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %40
  %95 = load i32, i32* @IEEE80211_CHAN_OFDM, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %40
  %99 = load i32, i32* @IEEE80211_CHAN_CCK, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %10, align 4
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = load %struct.hwsim_radiotap_hdr*, %struct.hwsim_radiotap_hdr** %9, align 8
  %106 = getelementptr inbounds %struct.hwsim_radiotap_hdr, %struct.hwsim_radiotap_hdr* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @hwsim_mon, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = call i32 @skb_reset_mac_header(%struct.sk_buff* %110)
  %112 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @PACKET_OTHERHOST, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @ETH_P_802_2, align 4
  %119 = call i32 @htons(i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memset(i32 %124, i32 0, i32 4)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = call i32 @netif_rx(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %102, %39, %32, %27
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.hwsim_radiotap_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__mac80211_hwsim_get_tsf(%struct.mac80211_hwsim_data*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
