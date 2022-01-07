; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.ath_hw* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ath_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.ath_buf = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.ath_common = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ath_tx_info = type { i32, i32, i32, %struct.TYPE_12__*, i32, i32*, i32*, i32, i32, i32*, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@FCS_LEN = common dso_local global i64 0, align 8
@ATH9K_PKT_TYPE_BEACON = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@ATH9K_TXKEYIX_INVALID = common dso_local global i32 0, align 4
@ATH9K_KEY_TYPE_CLEAR = common dso_local global i32 0, align 4
@ATH9K_TXDESC_NOACK = common dso_local global i32 0, align 4
@ATH9K_TXDESC_CLRDMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ieee80211_vif*, %struct.ath_buf*, i32)* @ath9k_beacon_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_setup(%struct.ath_softc* %0, %struct.ieee80211_vif* %1, %struct.ath_buf* %2, i32 %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ath_hw*, align 8
  %11 = alloca %struct.ath_common*, align 8
  %12 = alloca %struct.ath_tx_info, align 8
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ath_buf* %2, %struct.ath_buf** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %18 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %9, align 8
  %20 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %20, i32 0, i32 2
  %22 = load %struct.ath_hw*, %struct.ath_hw** %21, align 8
  store %struct.ath_hw* %22, %struct.ath_hw** %10, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %24 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %23)
  store %struct.ath_common* %24, %struct.ath_common** %11, align 8
  %25 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %28 = load %struct.ath_common*, %struct.ath_common** %11, align 8
  %29 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  %31 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i64 %36
  store %struct.ieee80211_supported_band* %37, %struct.ieee80211_supported_band** %13, align 8
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %4
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %53 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %16, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %51, %4
  %63 = call i32 @memset(%struct.ath_tx_info* %12, i32 0, i32 80)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FCS_LEN, align 8
  %68 = add nsw i64 %66, %67
  %69 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 11
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* @ATH9K_PKT_TYPE_BEACON, align 4
  %71 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 10
  store i32 %70, i32* %71, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %82, %62
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* @MAX_RATE_POWER, align 4
  %77 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 9
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %76, i32* %81, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load i32, i32* @ATH9K_TXKEYIX_INVALID, align 4
  %87 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @ATH9K_KEY_TYPE_CLEAR, align 4
  %89 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 7
  store i32 %88, i32* %89, align 8
  %90 = load i32, i32* @ATH9K_TXDESC_NOACK, align 4
  %91 = load i32, i32* @ATH9K_TXDESC_CLRDMASK, align 4
  %92 = or i32 %90, %91
  %93 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %95 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @roundup(i64 %102, i32 4)
  %104 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %103, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %110 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* %16, align 4
  %119 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @ath_txchainmask_reduction(%struct.ath_softc* %123, i32 %124, i32 %125)
  %127 = getelementptr inbounds %struct.ath_tx_info, %struct.ath_tx_info* %12, i32 0, i32 3
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  store i32 %126, i32* %130, align 4
  %131 = load %struct.ath_hw*, %struct.ath_hw** %10, align 8
  %132 = load %struct.ath_buf*, %struct.ath_buf** %7, align 8
  %133 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @ath9k_hw_set_txdesc(%struct.ath_hw* %131, i32 %134, %struct.ath_tx_info* %12)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @memset(%struct.ath_tx_info*, i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @ath_txchainmask_reduction(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath9k_hw_set_txdesc(%struct.ath_hw*, i32, %struct.ath_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
