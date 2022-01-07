; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.lbs_private = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@NL80211_STA_INFO_TX_BYTES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_BYTES = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@lbs_rates = common dso_local global %struct.TYPE_9__* null, align 8
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_info*)* @lbs_cfg_get_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cfg_get_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_info* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.station_info*, align 8
  %9 = alloca %struct.lbs_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.station_info* %3, %struct.station_info** %8, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %15 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %14)
  store %struct.lbs_private* %15, %struct.lbs_private** %9, align 8
  %16 = load i32, i32* @NL80211_STA_INFO_TX_BYTES, align 4
  %17 = call i32 @BIT_ULL(i32 %16)
  %18 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %19 = call i32 @BIT_ULL(i32 %18)
  %20 = or i32 %17, %19
  %21 = load i32, i32* @NL80211_STA_INFO_RX_BYTES, align 4
  %22 = call i32 @BIT_ULL(i32 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %25 = call i32 @BIT_ULL(i32 %24)
  %26 = or i32 %23, %25
  %27 = load %struct.station_info*, %struct.station_info** %8, align 8
  %28 = getelementptr inbounds %struct.station_info, %struct.station_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.station_info*, %struct.station_info** %8, align 8
  %38 = getelementptr inbounds %struct.station_info, %struct.station_info* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.station_info*, %struct.station_info** %8, align 8
  %46 = getelementptr inbounds %struct.station_info, %struct.station_info* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.station_info*, %struct.station_info** %8, align 8
  %54 = getelementptr inbounds %struct.station_info, %struct.station_info* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.station_info*, %struct.station_info** %8, align 8
  %62 = getelementptr inbounds %struct.station_info, %struct.station_info* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %64 = call i32 @lbs_get_rssi(%struct.lbs_private* %63, i32* %10, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.station_info*, %struct.station_info** %8, align 8
  %70 = getelementptr inbounds %struct.station_info, %struct.station_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %72 = call i32 @BIT_ULL(i32 %71)
  %73 = load %struct.station_info*, %struct.station_info** %8, align 8
  %74 = getelementptr inbounds %struct.station_info, %struct.station_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %4
  store i64 0, i64* %13, align 8
  br label %78

78:                                               ; preds = %109, %77
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lbs_rates, align 8
  %81 = call i64 @ARRAY_SIZE(%struct.TYPE_9__* %80)
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = load %struct.lbs_private*, %struct.lbs_private** %9, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lbs_rates, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %83
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** @lbs_rates, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.station_info*, %struct.station_info** %8, align 8
  %100 = getelementptr inbounds %struct.station_info, %struct.station_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %103 = call i32 @BIT_ULL(i32 %102)
  %104 = load %struct.station_info*, %struct.station_info** %8, align 8
  %105 = getelementptr inbounds %struct.station_info, %struct.station_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %112

108:                                              ; preds = %83
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %13, align 8
  br label %78

112:                                              ; preds = %93, %78
  ret i32 0
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @lbs_get_rssi(%struct.lbs_private*, i32*, i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
