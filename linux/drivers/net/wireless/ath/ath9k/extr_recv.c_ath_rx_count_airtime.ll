; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_count_airtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_recv.c_ath_rx_count_airtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_rx_status = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ath_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_rx_status = type { i32, i64, i64, i64, i64 }

@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i64 0, align 8
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i64 0, align 8
@WLAN_RC_PHY_CCK = common dso_local global i32 0, align 4
@WLAN_RC_PHY_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_rx_status*, %struct.sk_buff*)* @ath_rx_count_airtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rx_count_airtime(%struct.ath_softc* %0, %struct.ath_rx_status* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_rx_status*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_rx_status*, align 8
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_rx_status* %1, %struct.ath_rx_status** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %7, align 8
  %24 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = load %struct.ath_hw*, %struct.ath_hw** %25, align 8
  store %struct.ath_hw* %26, %struct.ath_hw** %8, align 8
  %27 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %28 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %27)
  store %struct.ath_common* %28, %struct.ath_common** %9, align 8
  %29 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %30 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ieee80211_is_data(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  br label %151

38:                                               ; preds = %3
  %39 = call i32 (...) @rcu_read_lock()
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32 %42, i32 %45, i32* null)
  store %struct.ieee80211_sta* %46, %struct.ieee80211_sta** %10, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %48 = icmp ne %struct.ieee80211_sta* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %149

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %19, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %56)
  store %struct.ieee80211_rx_status* %57, %struct.ieee80211_rx_status** %11, align 8
  %58 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %13, align 4
  %67 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RATE_INFO_BW_40, align 8
  %71 = icmp eq i64 %69, %70
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %14, align 4
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RX_ENC_HT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %50
  %90 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %91 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i64 @ath_pkt_duration(%struct.ath_softc* %90, i64 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  br label %144

103:                                              ; preds = %50
  %104 = load %struct.ath_rx_status*, %struct.ath_rx_status** %5, align 8
  %105 = getelementptr inbounds %struct.ath_rx_status, %struct.ath_rx_status* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @IS_CCK_RATE(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @WLAN_RC_PHY_CCK, align 4
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @WLAN_RC_PHY_OFDM, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %16, align 4
  %115 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %116 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %122, align 8
  %124 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %123, i64 %126
  store %struct.ieee80211_rate* %127, %struct.ieee80211_rate** %12, align 8
  %128 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 100
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %11, align 8
  %136 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i64 @ath9k_hw_computetxtime(%struct.ath_hw* %128, i32 %129, i32 %133, i32 %134, i64 %137, i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %113, %89
  %145 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @ieee80211_sta_register_airtime(%struct.ieee80211_sta* %145, i32 %146, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %144, %49
  %150 = call i32 (...) @rcu_read_unlock()
  br label %151

151:                                              ; preds = %149, %37
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta_by_ifaddr(i32, i32, i32*) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @ath_pkt_duration(%struct.ath_softc*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @IS_CCK_RATE(i32) #1

declare dso_local i64 @ath9k_hw_computetxtime(%struct.ath_hw*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ieee80211_sta_register_airtime(%struct.ieee80211_sta*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
