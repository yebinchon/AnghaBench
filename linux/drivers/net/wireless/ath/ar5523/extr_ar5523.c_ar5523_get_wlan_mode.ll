; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_wlan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_get_wlan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }
%struct.ieee80211_sta = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"STA not found!\0A\00", align 1
@WLAN_MODE_11b = common dso_local global i32 0, align 4
@WLAN_MODE_11g = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*, %struct.ieee80211_bss_conf*)* @ar5523_get_wlan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_get_wlan_mode(%struct.ar5523* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar5523*, align 8
  %5 = alloca %struct.ieee80211_bss_conf*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %4, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %5, align 8
  %11 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %16, align 8
  %18 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %19 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, i64 %26
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %6, align 8
  %29 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %30 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %31, i32 %34)
  store %struct.ieee80211_sta* %35, %struct.ieee80211_sta** %8, align 8
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %37 = icmp ne %struct.ieee80211_sta* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %40 = call i32 @ar5523_info(%struct.ar5523* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @WLAN_MODE_11b, align 4
  store i32 %41, i32* %3, align 4
  br label %88

42:                                               ; preds = %2
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ar5523*, %struct.ar5523** %4, align 8
  %47 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %45, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %83, %42
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  switch i32 %76, label %79 [
    i32 60, label %77
    i32 90, label %77
    i32 120, label %77
    i32 180, label %77
    i32 240, label %77
    i32 360, label %77
    i32 480, label %77
    i32 540, label %77
  ]

77:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  %78 = load i32, i32* @WLAN_MODE_11g, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load i32, i32* @WLAN_MODE_11b, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %77, %38
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32) #1

declare dso_local i32 @ar5523_info(%struct.ar5523*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
