; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_get_rates_from_cfg80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_get_rates_from_cfg80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.cfg80211_scan_request*, %struct.TYPE_3__* }
%struct.cfg80211_scan_request = type { i32* }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_rates_from_cfg80211(%struct.mwifiex_private* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.cfg80211_scan_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  store %struct.wiphy* %18, %struct.wiphy** %8, align 8
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 0
  %21 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %20, align 8
  store %struct.cfg80211_scan_request* %21, %struct.cfg80211_scan_request** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %3
  %25 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %26 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %26, align 8
  %28 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  store %struct.ieee80211_supported_band* %30, %struct.ieee80211_supported_band** %12, align 8
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %32 = icmp ne %struct.ieee80211_supported_band* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %101

38:                                               ; preds = %24
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %40 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %66

45:                                               ; preds = %3
  %46 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %47 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %47, align 8
  %49 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %48, i64 %49
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %50, align 8
  store %struct.ieee80211_supported_band* %51, %struct.ieee80211_supported_band** %12, align 8
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %53 = icmp ne %struct.ieee80211_supported_band* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %101

59:                                               ; preds = %45
  %60 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %61 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %59, %38
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %67
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %96

80:                                               ; preds = %73
  %81 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %82 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 5
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  store i64 %90, i64* %95, align 8
  br label %96

96:                                               ; preds = %80, %79
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %58, %37
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
