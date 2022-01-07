; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.ieee80211_hw*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { i32, i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_rate = type { i32 }

@NL80211_FEATURE_ACTIVE_MONITOR = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@SUPPORT_FAST_XMIT = common dso_local global i32 0, align 4
@SUPPORTS_CLONED_SKBS = common dso_local global i32 0, align 4
@SUPPORTS_AMSDU_IN_AMPDU = common dso_local global i32 0, align 4
@TX_AMSDU = common dso_local global i32 0, align 4
@TX_FRAG_LIST = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@AP_LINK_PS = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@NEEDS_UNIQUE_STA_ADDR = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@CONFIG_MT76_LEDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_register_device(%struct.mt76_dev* %0, i32 %1, %struct.ieee80211_rate* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.wiphy*, align 8
  %12 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_rate* %2, %struct.ieee80211_rate** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 2
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %11, align 8
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %23 = call i32 @dev_set_drvdata(i32 %21, %struct.mt76_dev* %22)
  %24 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %25 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %24, i32 0, i32 5
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %28 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %29 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %27, i32 %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %33 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %34 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %32, i32 %35)
  %37 = load i32, i32* @NL80211_FEATURE_ACTIVE_MONITOR, align 4
  %38 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %39 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %43 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %44 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %42, i32 %43)
  %45 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %46 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %51 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %54 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 1
  store i32 16, i32* %58, align 4
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %60 = load i32, i32* @SIGNAL_DBM, align 4
  %61 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %59, i32 %60)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %63 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %64 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %62, i32 %63)
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %66 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %67 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %65, i32 %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %69 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %70 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %68, i32 %69)
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %72 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %73 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %71, i32 %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %75 = load i32, i32* @SUPPORT_FAST_XMIT, align 4
  %76 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %74, i32 %75)
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %78 = load i32, i32* @SUPPORTS_CLONED_SKBS, align 4
  %79 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %77, i32 %78)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %81 = load i32, i32* @SUPPORTS_AMSDU_IN_AMPDU, align 4
  %82 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %80, i32 %81)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %84 = load i32, i32* @TX_AMSDU, align 4
  %85 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %83, i32 %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %87 = load i32, i32* @TX_FRAG_LIST, align 4
  %88 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %86, i32 %87)
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %90 = load i32, i32* @MFP_CAPABLE, align 4
  %91 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %89, i32 %90)
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %93 = load i32, i32* @AP_LINK_PS, align 4
  %94 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %92, i32 %93)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %96 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %97 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %95, i32 %96)
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %99 = load i32, i32* @NEEDS_UNIQUE_STA_ADDR, align 4
  %100 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %98, i32 %99)
  %101 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %102 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %103 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %107 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %4
  %112 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %113 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @mt76_init_sband_2g(%struct.mt76_dev* %112, %struct.ieee80211_rate* %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %167

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %4
  %122 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %123 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %129 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %130 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %129, i64 4
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @mt76_init_sband_5g(%struct.mt76_dev* %128, %struct.ieee80211_rate* %130, i32 %132, i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %5, align 4
  br label %167

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %121
  %141 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %142 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %141, i32 0, i32 0
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %142, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %143, i32 0, i32 2
  %145 = load %struct.wiphy*, %struct.wiphy** %144, align 8
  %146 = call i32 @wiphy_read_of_freq_limits(%struct.wiphy* %145)
  %147 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %148 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %149 = call i32 @mt76_check_sband(%struct.mt76_dev* %147, i32 %148)
  %150 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %151 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %152 = call i32 @mt76_check_sband(%struct.mt76_dev* %150, i32 %151)
  %153 = load i32, i32* @CONFIG_MT76_LEDS, align 4
  %154 = call i64 @IS_ENABLED(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %140
  %157 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %158 = call i32 @mt76_led_init(%struct.mt76_dev* %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %5, align 4
  br label %167

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %140
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %166 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %165)
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %164, %161, %137, %118
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @dev_set_drvdata(i32, %struct.mt76_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.wiphy*, i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mt76_init_sband_2g(%struct.mt76_dev*, %struct.ieee80211_rate*, i32) #1

declare dso_local i32 @mt76_init_sband_5g(%struct.mt76_dev*, %struct.ieee80211_rate*, i32, i32) #1

declare dso_local i32 @wiphy_read_of_freq_limits(%struct.wiphy*) #1

declare dso_local i32 @mt76_check_sband(%struct.mt76_dev*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mt76_led_init(%struct.mt76_dev*) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
