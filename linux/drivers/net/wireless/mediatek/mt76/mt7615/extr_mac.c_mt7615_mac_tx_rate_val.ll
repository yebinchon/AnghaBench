; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_tx_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mac.c_mt7615_mac_tx_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.ieee80211_rate* }

@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_VHT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT_GF = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MT_TX_RATE_STBC = common dso_local global i32 0, align 4
@MT_TX_RATE_IDX = common dso_local global i32 0, align 4
@MT_TX_RATE_MODE = common dso_local global i32 0, align 4
@MT_TX_RATE_NSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7615_dev*, %struct.ieee80211_tx_rate*, i32, i32*)* @mt7615_mac_tx_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_mac_tx_rate_val(%struct.mt7615_dev* %0, %struct.ieee80211_tx_rate* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt7615_dev*, align 8
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
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %5, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %25 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %27 = call i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @MT_PHY_TYPE_VHT, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32*, i32** %8, align 8
  store i32 1, i32* %36, align 4
  br label %57

37:                                               ; preds = %23
  %38 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32*, i32** %8, align 8
  store i32 2, i32* %45, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_TX_RC_160_MHZ_WIDTH, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  store i32 3, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %35
  br label %138

58:                                               ; preds = %4
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 3
  %73 = add nsw i32 1, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @MT_PHY_TYPE_HT, align 4
  store i32 %74, i32* %9, align 4
  %75 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i32, i32* @MT_PHY_TYPE_HT_GF, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %65
  %84 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %85 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32*, i32** %8, align 8
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %83
  br label %137

93:                                               ; preds = %58
  %94 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %95 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %14, align 4
  store i32 1, i32* %10, align 4
  %101 = load %struct.mt7615_dev*, %struct.mt7615_dev** %5, align 8
  %102 = call %struct.TYPE_12__* @mt76_hw(%struct.mt7615_dev* %101)
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %106, i64 %108
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %111, align 8
  %113 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %112, i64 %116
  store %struct.ieee80211_rate* %117, %struct.ieee80211_rate** %13, align 8
  %118 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %93
  %125 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %126 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %15, align 4
  br label %132

128:                                              ; preds = %93
  %129 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %13, align 8
  %130 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %15, align 4
  %134 = ashr i32 %133, 8
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 255
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %132, %92
  br label %138

138:                                              ; preds = %137, %57
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @MT_TX_RATE_STBC, align 4
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %144, %141, %138
  %151 = load i32, i32* @MT_TX_RATE_IDX, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @FIELD_PREP(i32 %151, i32 %152)
  %154 = load i32, i32* @MT_TX_RATE_MODE, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @FIELD_PREP(i32 %154, i32 %155)
  %157 = or i32 %153, %156
  %158 = load i32, i32* @MT_TX_RATE_NSS, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @FIELD_PREP(i32 %158, i32 %160)
  %162 = or i32 %157, %161
  %163 = load i32, i32* %12, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  ret i32 %165
}

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate*) #1

declare dso_local %struct.TYPE_12__* @mt76_hw(%struct.mt7615_dev*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
