; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_init.c_mt7615_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_dev = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32, i32, i32, i32 }

@mt7615_mac_work = common dso_local global i32 0, align 4
@if_comb = common dso_local global i32 0, align 4
@mt7615_regd_notifier = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@SUPPORTS_REORDERING_BUFFER = common dso_local global i32 0, align 4
@TX_STATUS_NO_AMPDU_LEN = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@mt7615_rates = common dso_local global i32 0, align 4
@MT_TXP_MAX_BUF_NUM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7615_register_device(%struct.mt7615_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7615_dev*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  store %struct.mt7615_dev* %0, %struct.mt7615_dev** %3, align 8
  %7 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %8 = call %struct.ieee80211_hw* @mt76_hw(%struct.mt7615_dev* %7)
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 7
  %11 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  store %struct.wiphy* %11, %struct.wiphy** %5, align 8
  %12 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %13 = call i32 @mt7615_init_hardware(%struct.mt7615_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %133

18:                                               ; preds = %1
  %19 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  %22 = load i32, i32* @mt7615_mac_work, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %26, i32 0, i32 1
  store i32 3, i32* %27, align 4
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %28, i32 0, i32 2
  store i32 7, i32* %29, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %30, i32 0, i32 3
  store i32 11, i32* %31, align 4
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %32, i32 0, i32 4
  store i32 4, i32* %33, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %34, i32 0, i32 5
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @if_comb, align 4
  %37 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %38 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @if_comb, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %42 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @mt7615_regd_notifier, align 4
  %44 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %45 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %47 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %48 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %52 = load i32, i32* @SUPPORTS_REORDERING_BUFFER, align 4
  %53 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %51, i32 %52)
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load i32, i32* @TX_STATUS_NO_AMPDU_LEN, align 4
  %56 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %54, i32 %55)
  %57 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %58 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %59 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %67 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %68 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %66
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_160, align 4
  %76 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %81
  store i32 %89, i32* %87, align 4
  %90 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %91 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 1028, i32* %92, align 4
  %93 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 15, i32* %95, align 4
  %96 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 4
  %98 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = or i32 %99, %101
  %103 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %104 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %105, i32 0, i32 1
  %107 = load i32, i32* @mt7615_rates, align 4
  %108 = load i32, i32* @mt7615_rates, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = call i32 @mt76_register_device(%struct.TYPE_11__* %106, i32 1, i32 %107, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %18
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %133

115:                                              ; preds = %18
  %116 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %117 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %118 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = call i32 @mt7615_init_txpower(%struct.mt7615_dev* %116, %struct.TYPE_12__* %120)
  %122 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %123 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %124 = getelementptr inbounds %struct.mt7615_dev, %struct.mt7615_dev* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = call i32 @mt7615_init_txpower(%struct.mt7615_dev* %122, %struct.TYPE_12__* %126)
  %128 = load i32, i32* @MT_TXP_MAX_BUF_NUM, align 4
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load %struct.mt7615_dev*, %struct.mt7615_dev** %3, align 8
  %132 = call i32 @mt7615_init_debugfs(%struct.mt7615_dev* %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %115, %113, %16
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.ieee80211_hw* @mt76_hw(%struct.mt7615_dev*) #1

declare dso_local i32 @mt7615_init_hardware(%struct.mt7615_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_register_device(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @mt7615_init_txpower(%struct.mt7615_dev*, %struct.TYPE_12__*) #1

declare dso_local i32 @mt7615_init_debugfs(%struct.mt7615_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
