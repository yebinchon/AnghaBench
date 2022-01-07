; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_recvctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_recvctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.d11rxhdr = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@D11_PHY_HDR_LEN = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, %struct.d11rxhdr*, %struct.sk_buff*)* @brcms_c_recvctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_recvctl(%struct.brcms_c_info* %0, %struct.d11rxhdr* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca %struct.d11rxhdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rx_status, align 4
  %9 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store %struct.d11rxhdr* %1, %struct.d11rxhdr** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = call i32 @memset(%struct.ieee80211_rx_status* %8, i32 0, i32 4)
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %12 = load %struct.d11rxhdr*, %struct.d11rxhdr** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @prep_mac80211_status(%struct.brcms_c_info* %11, %struct.d11rxhdr* %12, %struct.sk_buff* %13, %struct.ieee80211_rx_status* %8)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load i32, i32* @FCS_LEN, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %24 = call i32 @skb_pull(%struct.sk_buff* %22, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__skb_trim(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %29 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %38, %struct.ieee80211_hdr** %9, align 8
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ieee80211_is_beacon(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %46 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @brcms_b_mute(%struct.TYPE_4__* %47, i32 0)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %51)
  %53 = call i32 @memcpy(i32 %52, %struct.ieee80211_rx_status* %8, i32 4)
  %54 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %55 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call i32 @ieee80211_rx_irqsafe(i32 %58, %struct.sk_buff* %59)
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @prep_mac80211_status(%struct.brcms_c_info*, %struct.d11rxhdr*, %struct.sk_buff*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @brcms_b_mute(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
