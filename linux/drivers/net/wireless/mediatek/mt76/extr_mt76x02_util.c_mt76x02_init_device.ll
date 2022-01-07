; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_util.c_mt76x02_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32, i8*, i8*, i32 }

@mt76x02_mac_work = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@mt76x02u_if_comb = common dso_local global i8* null, align 8
@mt76x02_wdt_work = common dso_local global i32 0, align 4
@mt76x02_regd_notifier = common dso_local global i32 0, align 4
@mt76x02_if_comb = common dso_local global i8* null, align 8
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@CONFIG_MT76_LEDS = common dso_local global i32 0, align 4
@mt76x02_led_set_brightness = common dso_local global i32 0, align 4
@mt76x02_led_set_blink = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_VHT_IBSS = common dso_local global i32 0, align 4
@SUPPORTS_HT_CCK_RATES = common dso_local global i32 0, align 4
@SUPPORTS_REORDERING_BUFFER = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_init_device(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.wiphy*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = call %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 7
  %9 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  store %struct.wiphy* %9, %struct.wiphy** %4, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 6
  %13 = load i32, i32* @mt76x02_mac_work, align 4
  %14 = call i32 @INIT_DELAYED_WORK(i32* %12, i32 %13)
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 2
  store i32 7, i32* %20, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 4
  store i32 2, i32* %24, align 8
  %25 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = or i32 %29, %31
  %33 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %34 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = call i64 @mt76_is_usb(%struct.mt76x02_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %1
  %39 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %40 = add i64 4, %39
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  %47 = load i8*, i8** @mt76x02u_if_comb, align 8
  %48 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %49 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @mt76x02u_if_comb, align 8
  %51 = call i8* @ARRAY_SIZE(i8* %50)
  %52 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %53 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %91

54:                                               ; preds = %1
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %55, i32 0, i32 2
  %57 = load i32, i32* @mt76x02_wdt_work, align 4
  %58 = call i32 @INIT_DELAYED_WORK(i32* %56, i32 %57)
  %59 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %60 = call i32 @mt76x02_dfs_init_detector(%struct.mt76x02_dev* %59)
  %61 = load i32, i32* @mt76x02_regd_notifier, align 4
  %62 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %63 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @mt76x02_if_comb, align 8
  %65 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %66 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @mt76x02_if_comb, align 8
  %68 = call i8* @ARRAY_SIZE(i8* %67)
  %69 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %70 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %72 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %73 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @CONFIG_MT76_LEDS, align 4
  %77 = call i64 @IS_ENABLED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %54
  %80 = load i32, i32* @mt76x02_led_set_brightness, align 4
  %81 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %82 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @mt76x02_led_set_blink, align 4
  %86 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %87 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %54
  br label %91

91:                                               ; preds = %90, %38
  %92 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %93 = load i32, i32* @NL80211_EXT_FEATURE_VHT_IBSS, align 4
  %94 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %92, i32 %93)
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %95, i32 0, i32 5
  store i32 4, i32* %96, align 4
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %97, i32 0, i32 6
  store i32 4, i32* %98, align 8
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load i32, i32* @SUPPORTS_HT_CCK_RATES, align 4
  %101 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %99, i32 %100)
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load i32, i32* @SUPPORTS_REORDERING_BUFFER, align 4
  %104 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %102, i32 %103)
  %105 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %106 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  store i32 255, i32* %108, align 4
  %109 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %110 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 4
  %113 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %114 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %113, i32 0, i32 0
  store i32 9, i32* %114, align 4
  %115 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %116 = call i64 @is_mt76x2(%struct.mt76x02_dev* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %91
  %119 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %120 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %121 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %119
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %129 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %130 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %128
  store i32 %136, i32* %134, align 4
  %137 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %138 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i32 514, i32* %139, align 4
  %140 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %141 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  store i32 3, i32* %142, align 4
  br label %150

143:                                              ; preds = %91
  %144 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %145 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  store i32 257, i32* %146, align 4
  %147 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %148 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %118
  ret void
}

declare dso_local %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @mt76_is_usb(%struct.mt76x02_dev*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @mt76x02_dfs_init_detector(%struct.mt76x02_dev*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.wiphy*, i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @is_mt76x2(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
