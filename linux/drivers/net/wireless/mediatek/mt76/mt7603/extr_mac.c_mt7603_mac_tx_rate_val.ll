; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_tx_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_mac_tx_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.ieee80211_rate* }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT_GF = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MT_TX_RATE_IDX = common dso_local global i32 0, align 4
@MT_TX_RATE_MODE = common dso_local global i32 0, align 4
@MT_TX_RATE_STBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*, %struct.ieee80211_tx_rate*, i32, i32*)* @mt7603_mac_tx_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_mac_tx_rate_val(%struct.mt7603_dev* %0, %struct.ieee80211_tx_rate* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_rate*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %5, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MT_PHY_TYPE_HT, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @MT_PHY_TYPE_HT_GF, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %41
  br label %95

51:                                               ; preds = %4
  %52 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %53 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  store i32 1, i32* %10, align 4
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %60 = call %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev* %59)
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %64, i64 %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %69, align 8
  %71 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %70, i64 %74
  store %struct.ieee80211_rate* %75, %struct.ieee80211_rate** %13, align 8
  %76 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %51
  %83 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %84 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  br label %90

86:                                               ; preds = %51
  %87 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %15, align 4
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, 255
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %90, %50
  %96 = load i32, i32* @MT_TX_RATE_IDX, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @FIELD_PREP(i32 %96, i32 %97)
  %99 = load i32, i32* @MT_TX_RATE_MODE, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @FIELD_PREP(i32 %99, i32 %100)
  %102 = or i32 %98, %101
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* @MT_TX_RATE_STBC, align 4
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %105, %95
  %113 = load i32, i32* %12, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
