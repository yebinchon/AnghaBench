; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_sband_5g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_init_sband_5g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }
%struct.ieee80211_rate = type { i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@mt76_channels_5ghz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.ieee80211_rate*, i32, i32)* @mt76_init_sband_5g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_init_sband_5g(%struct.mt76_dev* %0, %struct.ieee80211_rate* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.ieee80211_rate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.ieee80211_rate* %1, %struct.ieee80211_rate** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  store i32* %11, i32** %20, align 8
  %21 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %22, i32 0, i32 0
  %24 = load i32, i32* @mt76_channels_5ghz, align 4
  %25 = load i32, i32* @mt76_channels_5ghz, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @mt76_init_sband(%struct.mt76_dev* %21, %struct.TYPE_6__* %23, i32 %24, i32 %26, %struct.ieee80211_rate* %27, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @mt76_init_sband(%struct.mt76_dev*, %struct.TYPE_6__*, i32, i32, %struct.ieee80211_rate*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
