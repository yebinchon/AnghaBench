; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netif_mon_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_netif_mon_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i64 }
%struct.wlc_d11rxhdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_radiotap_header = type { i8* }

@BRCMF_FEAT_MONITOR_FMT_RADIOTAP = common dso_local global i32 0, align 4
@BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR = common dso_local global i32 0, align 4
@RXS_PBPRES = common dso_local global i32 0, align 4
@D11_PHY_HDR_LEN = common dso_local global i64 0, align 8
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_netif_mon_rx(%struct.brcmf_if* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wlc_d11rxhdr*, align 8
  %6 = alloca %struct.ieee80211_radiotap_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_radiotap_header*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %11 = load i32, i32* @BRCMF_FEAT_MONITOR_FMT_RADIOTAP, align 4
  %12 = call i64 @brcmf_feat_is_enabled(%struct.brcmf_if* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %17 = load i32, i32* @BRCMF_FEAT_MONITOR_FMT_HW_RX_HDR, align 4
  %18 = call i64 @brcmf_feat_is_enabled(%struct.brcmf_if* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %15
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.wlc_d11rxhdr*
  store %struct.wlc_d11rxhdr* %24, %struct.wlc_d11rxhdr** %5, align 8
  %25 = load %struct.wlc_d11rxhdr*, %struct.wlc_d11rxhdr** %5, align 8
  %26 = getelementptr inbounds %struct.wlc_d11rxhdr, %struct.wlc_d11rxhdr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 4, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RXS_PBPRES, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 2
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %20
  %38 = load i64, i64* @D11_PHY_HDR_LEN, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @skb_pull(%struct.sk_buff* %43, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.ieee80211_radiotap_header* @skb_push(%struct.sk_buff* %46, i32 8)
  store %struct.ieee80211_radiotap_header* %47, %struct.ieee80211_radiotap_header** %6, align 8
  %48 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %49 = call i32 @memset(%struct.ieee80211_radiotap_header* %48, i32 0, i32 8)
  %50 = call i8* @cpu_to_le16(i32 8)
  %51 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 4
  store i32 %56, i32* %54, align 8
  br label %69

57:                                               ; preds = %15
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call %struct.ieee80211_radiotap_header* @skb_push(%struct.sk_buff* %58, i32 8)
  store %struct.ieee80211_radiotap_header* %59, %struct.ieee80211_radiotap_header** %9, align 8
  %60 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %9, align 8
  %61 = call i32 @memset(%struct.ieee80211_radiotap_header* %60, i32 0, i32 8)
  %62 = call i8* @cpu_to_le16(i32 8)
  %63 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 4
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %57, %37
  br label %70

70:                                               ; preds = %69, %14
  %71 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %72 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @skb_reset_mac_header(%struct.sk_buff* %76)
  %78 = load i32, i32* @PACKET_OTHERHOST, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @ETH_P_802_2, align 4
  %82 = call i32 @htons(i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @brcmf_netif_rx(%struct.brcmf_if* %85, %struct.sk_buff* %86)
  ret void
}

declare dso_local i64 @brcmf_feat_is_enabled(%struct.brcmf_if*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_radiotap_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_radiotap_header*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @brcmf_netif_rx(%struct.brcmf_if*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
