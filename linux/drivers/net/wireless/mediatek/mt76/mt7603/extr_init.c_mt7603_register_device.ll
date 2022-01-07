; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, %struct.TYPE_6__, i32, %struct.mt76_bus_ops* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, %struct.mt76_bus_ops*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mt76_bus_ops = type { i32, i32, i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt7603_rr = common dso_local global i32 0, align 4
@mt7603_wr = common dso_local global i32 0, align 4
@mt7603_rmw = common dso_local global i32 0, align 4
@mt7603_mac_work = common dso_local global i32 0, align 4
@mt7603_pre_tbtt_tasklet = common dso_local global i32 0, align 4
@MT_EFUSE_BASE = common dso_local global i64 0, align 8
@if_comb = common dso_local global i32 0, align 4
@SUPPORTS_REORDERING_BUFFER = common dso_local global i32 0, align 4
@TX_STATUS_NO_AMPDU_LEN = common dso_local global i32 0, align 4
@CONFIG_MT76_LEDS = common dso_local global i32 0, align 4
@mt7603_led_set_brightness = common dso_local global i32 0, align 4
@mt7603_led_set_blink = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@mt7603_regd_notifier = common dso_local global i32 0, align 4
@mt7603_rates = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_register_device(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca %struct.mt76_bus_ops*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %8 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %9 = call %struct.ieee80211_hw* @mt76_hw(%struct.mt7603_dev* %8)
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 6
  %12 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  store %struct.wiphy* %12, %struct.wiphy** %6, align 8
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %15, align 8
  %17 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %17, i32 0, i32 3
  store %struct.mt76_bus_ops* %16, %struct.mt76_bus_ops** %18, align 8
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %23, i32 0, i32 3
  %25 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mt76_bus_ops* @devm_kmemdup(i32 %22, %struct.mt76_bus_ops* %25, i32 12, i32 %26)
  store %struct.mt76_bus_ops* %27, %struct.mt76_bus_ops** %4, align 8
  %28 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %4, align 8
  %29 = icmp ne %struct.mt76_bus_ops* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %163

33:                                               ; preds = %1
  %34 = load i32, i32* @mt7603_rr, align 4
  %35 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %4, align 8
  %36 = getelementptr inbounds %struct.mt76_bus_ops, %struct.mt76_bus_ops* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @mt7603_wr, align 4
  %38 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %4, align 8
  %39 = getelementptr inbounds %struct.mt76_bus_ops, %struct.mt76_bus_ops* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @mt7603_rmw, align 4
  %41 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %4, align 8
  %42 = getelementptr inbounds %struct.mt76_bus_ops, %struct.mt76_bus_ops* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mt76_bus_ops*, %struct.mt76_bus_ops** %4, align 8
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 5
  store %struct.mt76_bus_ops* %43, %struct.mt76_bus_ops** %46, align 8
  %47 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %48 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %51 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32, i32* @mt7603_mac_work, align 4
  %54 = call i32 @INIT_DELAYED_WORK(i32* %52, i32 %53)
  %55 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %56 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* @mt7603_pre_tbtt_tasklet, align 4
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %60 = ptrtoint %struct.mt7603_dev* %59 to i64
  %61 = call i32 @tasklet_init(i32* %57, i32 %58, i64 %60)
  %62 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  %65 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %66 = load i64, i64* @MT_EFUSE_BASE, align 8
  %67 = add nsw i64 %66, 100
  %68 = call i32 @mt76_rr(%struct.mt7603_dev* %65, i64 %67)
  %69 = call i32 @BIT(i32 4)
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %33
  %73 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %74 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %72, %33
  %77 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %78 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %77, i32 0, i32 0
  store i32 9, i32* %78, align 8
  %79 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %80 = call i32 @mt7603_init_hardware(%struct.mt7603_dev* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %163

85:                                               ; preds = %76
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %87 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %86, i32 0, i32 0
  store i32 4, i32* %87, align 8
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %88, i32 0, i32 1
  store i32 3, i32* %89, align 4
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %90, i32 0, i32 2
  store i32 7, i32* %91, align 8
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %92, i32 0, i32 3
  store i32 11, i32* %93, align 4
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %94, i32 0, i32 4
  store i32 4, i32* %95, align 8
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %97 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %96, i32 0, i32 5
  store i32 4, i32* %97, align 4
  %98 = load i32, i32* @if_comb, align 4
  %99 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %100 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @if_comb, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %104 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %106 = load i32, i32* @SUPPORTS_REORDERING_BUFFER, align 4
  %107 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %105, i32 %106)
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %109 = load i32, i32* @TX_STATUS_NO_AMPDU_LEN, align 4
  %110 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %108, i32 %109)
  %111 = load i32, i32* @CONFIG_MT76_LEDS, align 4
  %112 = call i64 @IS_ENABLED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %85
  %115 = load i32, i32* @mt7603_led_set_brightness, align 4
  %116 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %117 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* @mt7603_led_set_blink, align 4
  %121 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  br label %125

125:                                              ; preds = %114, %85
  %126 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %127 = call i32 @BIT(i32 %126)
  %128 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %129 = call i32 @BIT(i32 %128)
  %130 = or i32 %127, %129
  %131 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %132 = call i32 @BIT(i32 %131)
  %133 = or i32 %130, %132
  %134 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %135 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @WIPHY_FLAG_HAS_CHANNEL_SWITCH, align 4
  %137 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %138 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @mt7603_regd_notifier, align 4
  %142 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %143 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %144, i32 0, i32 1
  %146 = load i32, i32* @mt7603_rates, align 4
  %147 = load i32, i32* @mt7603_rates, align 4
  %148 = call i32 @ARRAY_SIZE(i32 %147)
  %149 = call i32 @mt76_register_device(%struct.TYPE_6__* %145, i32 1, i32 %146, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %125
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %163

154:                                              ; preds = %125
  %155 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %156 = call i32 @mt7603_init_debugfs(%struct.mt7603_dev* %155)
  %157 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %158 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %159 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = call i32 @mt7603_init_txpower(%struct.mt7603_dev* %157, i32* %161)
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %154, %152, %83, %30
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.ieee80211_hw* @mt76_hw(%struct.mt7603_dev*) #1

declare dso_local %struct.mt76_bus_ops* @devm_kmemdup(i32, %struct.mt76_bus_ops*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7603_init_hardware(%struct.mt7603_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mt76_register_device(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @mt7603_init_debugfs(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_init_txpower(%struct.mt7603_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
