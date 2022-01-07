; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx_get_max_txpwr_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_txrx.c_mt76x02_tx_get_max_txpwr_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.mt76_rate_power, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.mt76_rate_power = type { i32*, i32*, i32*, i32* }
%struct.TYPE_8__ = type { %struct.wiphy* }
%struct.wiphy = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_tx_get_max_txpwr_adj(%struct.mt76x02_dev* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.ieee80211_tx_rate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca %struct.mt76_rate_power*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %4, align 8
  %13 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %21 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %27, label %35

27:                                               ; preds = %24, %19
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %24
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %37 = call i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, 1
  %40 = shl i32 %39, 3
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %35, %27
  br label %153

54:                                               ; preds = %2
  %55 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  br label %152

74:                                               ; preds = %54
  %75 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %138

85:                                               ; preds = %74
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.wiphy*, %struct.wiphy** %90, align 8
  store %struct.wiphy* %91, %struct.wiphy** %11, align 8
  %92 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %93 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store %struct.mt76_rate_power* %94, %struct.mt76_rate_power** %12, align 8
  %95 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %96 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %97, i64 %99
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %102, align 8
  %104 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %103, i64 %107
  store %struct.ieee80211_rate* %108, %struct.ieee80211_rate** %10, align 8
  %109 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %110 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %85
  %116 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %12, align 8
  %117 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 3
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %5, align 4
  br label %137

126:                                              ; preds = %85
  %127 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %12, align 8
  %128 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 7
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %126, %115
  br label %151

138:                                              ; preds = %74
  %139 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %140 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %4, align 8
  %145 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 7
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %138, %137
  br label %152

152:                                              ; preds = %151, %61
  br label %153

153:                                              ; preds = %152, %53
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
