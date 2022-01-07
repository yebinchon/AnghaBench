; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_tx_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_tx_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_VHT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT_GF = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MT_RXWI_RATE_INDEX = common dso_local global i32 0, align 4
@MT_RXWI_RATE_PHY = common dso_local global i32 0, align 4
@MT_RXWI_RATE_BW = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MT_RXWI_RATE_SGI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.ieee80211_tx_rate*, i32*)* @mt76x02_mac_tx_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_mac_tx_rate_val(%struct.mt76x02_dev* %0, %struct.ieee80211_tx_rate* %1, i32* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 4
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @MT_PHY_TYPE_VHT, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 2, i32* %10, align 4
  br label %47

38:                                               ; preds = %21
  %39 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %37
  br label %129

48:                                               ; preds = %3
  %49 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %48
  %56 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 3
  %63 = add nsw i32 1, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @MT_PHY_TYPE_HT, align 4
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @MT_PHY_TYPE_HT_GF, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %55
  %74 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %73
  br label %128

82:                                               ; preds = %48
  %83 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %84 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %97, i64 %99
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %102, align 8
  %104 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %103, i64 %107
  store %struct.ieee80211_rate* %108, %struct.ieee80211_rate** %12, align 8
  %109 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %82
  %116 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %14, align 4
  br label %123

119:                                              ; preds = %82
  %120 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i32, i32* %14, align 4
  %125 = ashr i32 %124, 8
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, 255
  store i32 %127, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %123, %81
  br label %129

129:                                              ; preds = %128, %47
  %130 = load i32, i32* @MT_RXWI_RATE_INDEX, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @FIELD_PREP(i32 %130, i32 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @MT_RXWI_RATE_PHY, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @FIELD_PREP(i32 %133, i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* @MT_RXWI_RATE_BW, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @FIELD_PREP(i32 %138, i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  %143 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %144 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %129
  %150 = load i32, i32* @MT_RXWI_RATE_SGI, align 4
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %149, %129
  %154 = load i32, i32* %9, align 4
  %155 = load i32*, i32** %6, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @cpu_to_le16(i32 %156)
  ret i32 %157
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
