; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_build_tx99_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_build_tx99_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.ieee80211_tx_info* }
%struct.ieee80211_tx_info = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.ieee80211_tx_rate* }
%struct.TYPE_12__ = type { i64 }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.ath_softc = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.ath_hw*, %struct.ieee80211_hw* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ath_hw = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.ieee80211_hdr = type { i32, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info*, i64, i32 }
%struct.ath_vif = type { i32 }

@ath9k_build_tx99_skb.PN9Data = internal global [64 x i32] [i32 255, i32 135, i32 184, i32 89, i32 183, i32 161, i32 204, i32 36, i32 87, i32 94, i32 75, i32 156, i32 14, i32 233, i32 234, i32 80, i32 42, i32 190, i32 180, i32 27, i32 182, i32 176, i32 93, i32 241, i32 230, i32 154, i32 227, i32 69, i32 253, i32 44, i32 83, i32 24, i32 12, i32 202, i32 201, i32 251, i32 73, i32 55, i32 229, i32 168, i32 81, i32 59, i32 47, i32 97, i32 170, i32 114, i32 24, i32 132, i32 2, i32 35, i32 35, i32 171, i32 99, i32 137, i32 81, i32 179, i32 231, i32 139, i32 114, i32 144, i32 76, i32 232, i32 251, i32 192], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath_softc*)* @ath9k_build_tx99_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath9k_build_tx99_skb(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ath_hw*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ath_vif*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store i32 1200, i32* %4, align 4
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %12, i32 0, i32 3
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, align 8
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %6, align 8
  %15 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %15, i32 0, i32 2
  %17 = load %struct.ath_hw*, %struct.ath_hw** %16, align 8
  store %struct.ath_hw* %17, %struct.ath_hw** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %158

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @skb_put(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @memset(%struct.ieee80211_tx_info* %30, i32 0, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %34, align 8
  %36 = bitcast %struct.ieee80211_tx_info* %35 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %36, %struct.ieee80211_hdr** %8, align 8
  %37 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 3
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %44, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(%struct.ieee80211_tx_info* %45, i32* %50, i32 %51)
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 2
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %54, align 8
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcpy(%struct.ieee80211_tx_info* %55, i32* %60, i32 %61)
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %63, i32 0, i32 1
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %64, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = call i32 @memcpy(%struct.ieee80211_tx_info* %65, i32* %70, i32 %71)
  %73 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = icmp ne %struct.TYPE_12__* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %24
  %78 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.ath_vif*
  store %struct.ath_vif* %83, %struct.ath_vif** %11, align 8
  %84 = load %struct.ath_vif*, %struct.ath_vif** %11, align 8
  %85 = getelementptr inbounds %struct.ath_vif, %struct.ath_vif* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %77, %24
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %93)
  store %struct.ieee80211_tx_info* %94, %struct.ieee80211_tx_info** %9, align 8
  %95 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %96 = call i32 @memset(%struct.ieee80211_tx_info* %95, i32 0, i32 24)
  %97 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %99, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %100, i64 0
  store %struct.ieee80211_tx_rate* %101, %struct.ieee80211_tx_rate** %5, align 8
  %102 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %116 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store %struct.TYPE_12__* %117, %struct.TYPE_12__** %120, align 8
  %121 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %124 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %151

127:                                              ; preds = %92
  %128 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %129 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @IS_CHAN_HT(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %151

133:                                              ; preds = %127
  %134 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %135 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %136 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  %140 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @IS_CHAN_HT40(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %146 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %133
  br label %151

151:                                              ; preds = %150, %127, %92
  %152 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  %154 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %153, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %154, i64 48
  %156 = call i32 @memcpy(%struct.ieee80211_tx_info* %155, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @ath9k_build_tx99_skb.PN9Data, i64 0, i64 0), i32 256)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %157, %struct.sk_buff** %2, align 8
  br label %158

158:                                              ; preds = %151, %23
  %159 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %159
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.ieee80211_tx_info*, i32*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @IS_CHAN_HT(i64) #1

declare dso_local i64 @IS_CHAN_HT40(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
