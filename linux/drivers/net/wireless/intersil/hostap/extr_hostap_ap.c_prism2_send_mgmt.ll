; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_send_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_send_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %struct.net_device*, i64 }
%struct.hostap_skb_tx_data = type { i32, %struct.hostap_interface*, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%s: prism2_send_mgmt - device is not UP - cannot send frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: prism2_send_mgmt failed to allocate skb\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@HOSTAP_SKB_TX_DATA_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i32, i32*, i32)* @prism2_send_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_send_mgmt(%struct.net_device* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostap_interface*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.hostap_skb_tx_data*, align 8
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %20)
  store %struct.hostap_interface* %21, %struct.hostap_interface** %13, align 8
  %22 = load %struct.hostap_interface*, %struct.hostap_interface** %13, align 8
  %23 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %14, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %28)
  store %struct.hostap_interface* %29, %struct.hostap_interface** %13, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @DEBUG_AP, align 4
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PDEBUG(i32 %37, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %165

42:                                               ; preds = %6
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 16, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.sk_buff* @dev_alloc_skb(i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %17, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @DEBUG_AP, align 4
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PDEBUG(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %165

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = call i32 @hostap_80211_get_hdrlen(i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %62 = load i32, i32* %19, align 4
  %63 = call %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff* %61, i32 %62)
  store %struct.ieee80211_hdr* %63, %struct.ieee80211_hdr** %15, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @skb_put_data(%struct.sk_buff* %67, i8* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %73 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @memcpy(i32 %74, i32* %75, i32 %76)
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ieee80211_is_data(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %71
  %84 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %85 = load i32, i32* %16, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %16, align 4
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @ETH_ALEN, align 4
  %94 = call i32 @memcpy(i32 %89, i32* %92, i32 %93)
  %95 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.net_device*, %struct.net_device** %7, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ETH_ALEN, align 4
  %102 = call i32 @memcpy(i32 %97, i32* %100, i32 %101)
  br label %136

103:                                              ; preds = %71
  %104 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @ieee80211_is_ctl(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @eth_zero_addr(i32 %112)
  %114 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %115 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @eth_zero_addr(i32 %116)
  br label %135

118:                                              ; preds = %103
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %120 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i32 @memcpy(i32 %121, i32* %124, i32 %125)
  %127 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.net_device*, %struct.net_device** %7, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @ETH_ALEN, align 4
  %134 = call i32 @memcpy(i32 %129, i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %118, %109
  br label %136

136:                                              ; preds = %135, %83
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @cpu_to_le16(i32 %137)
  %139 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %140 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.hostap_skb_tx_data*
  store %struct.hostap_skb_tx_data* %144, %struct.hostap_skb_tx_data** %18, align 8
  %145 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %146 = call i32 @memset(%struct.hostap_skb_tx_data* %145, i32 0, i32 24)
  %147 = load i32, i32* @HOSTAP_SKB_TX_DATA_MAGIC, align 4
  %148 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %149 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.hostap_interface*, %struct.hostap_interface** %13, align 8
  %151 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %152 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %151, i32 0, i32 1
  store %struct.hostap_interface* %150, %struct.hostap_interface** %152, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.hostap_skb_tx_data*, %struct.hostap_skb_tx_data** %18, align 8
  %155 = getelementptr inbounds %struct.hostap_skb_tx_data, %struct.hostap_skb_tx_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.net_device*, %struct.net_device** %7, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  store %struct.net_device* %156, %struct.net_device** %158, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %160 = call i32 @skb_reset_mac_header(%struct.sk_buff* %159)
  %161 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %162 = call i32 @skb_reset_network_header(%struct.sk_buff* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %164 = call i32 @dev_queue_xmit(%struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %136, %50, %36
  ret void
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @hostap_80211_get_hdrlen(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @memset(%struct.hostap_skb_tx_data*, i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
