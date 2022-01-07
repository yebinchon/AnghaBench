; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_init_ieee80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_init_ieee80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32, i32, i32** }

@wcn36xx_init_ieee80211.cipher_suites = internal constant [4 x i32] [i32 128, i32 129, i32 130, i32 131], align 16
@TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@CONNECTION_MONITOR = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@SINGLE_SCAN_ON_ALL_BANDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@wcn_band_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@RF_IRIS_WCN3620 = common dso_local global i64 0, align 8
@wcn_band_5ghz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WCN36XX_MAX_SCAN_SSIDS = common dso_local global i32 0, align 4
@WCN36XX_MAX_SCAN_IE_LEN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@wowlan_support = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*)* @wcn36xx_init_ieee80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_init_ieee80211(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %3 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %4 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @TIMING_BEACON_ONLY, align 4
  %7 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %5, i32 %6)
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %12 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %10, i32 %11)
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @CONNECTION_MONITOR, align 4
  %17 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %15, i32 %16)
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* @SUPPORTS_PS, align 4
  %22 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %20, i32 %21)
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %24 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* @SIGNAL_DBM, align 4
  %27 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %25, i32 %26)
  %28 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %29 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %32 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %30, i32 %31)
  %33 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %34 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* @SINGLE_SCAN_ON_ALL_BANDS, align 4
  %37 = call i32 @ieee80211_hw_set(%struct.TYPE_5__* %35, i32 %36)
  %38 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = or i32 %39, %41
  %43 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = or i32 %45, %47
  %49 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %50 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %56 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  store i32* @wcn_band_2ghz, i32** %63, align 8
  %64 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %65 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RF_IRIS_WCN3620, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %1
  %70 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %71 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 6
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  store i32* @wcn_band_5ghz, i32** %78, align 8
  br label %79

79:                                               ; preds = %69, %1
  %80 = load i32, i32* @WCN36XX_MAX_SCAN_SSIDS, align 4
  %81 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %82 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* @WCN36XX_MAX_SCAN_IE_LEN, align 4
  %88 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %89 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i32 %87, i32* %93, align 8
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %95 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wcn36xx_init_ieee80211.cipher_suites, i64 0, i64 0), i32** %99, align 8
  %100 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @wcn36xx_init_ieee80211.cipher_suites, i64 0, i64 0))
  %101 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %102 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %100, i32* %106, align 8
  %107 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %108 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 200, i32* %110, align 8
  %111 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %112 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i32 4, i32* %114, align 4
  %115 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %116 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %119 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_5__* %117, i32 %120)
  %122 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %123 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %122, i32 0, i32 1
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i32 4, i32* %125, align 8
  %126 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %127 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  store i32 4, i32* %129, align 4
  %130 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %131 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %136 = call i32 @wiphy_ext_feature_set(%struct.TYPE_4__* %134, i32 %135)
  ret i32 0
}

declare dso_local i32 @ieee80211_hw_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
