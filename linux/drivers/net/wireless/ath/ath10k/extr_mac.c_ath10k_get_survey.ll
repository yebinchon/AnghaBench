; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.ath10k* }
%struct.TYPE_2__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32* }
%struct.ath10k = type { i32, i32*, i32, %struct.survey_info* }
%struct.survey_info = type { i32, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @ath10k_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.survey_info*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.survey_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.survey_info* %2, %struct.survey_info** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  store %struct.ath10k* %13, %struct.ath10k** %7, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 3
  %16 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %16, i64 %18
  store %struct.survey_info* %19, %struct.survey_info** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %21 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %26, align 8
  %28 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  store %struct.ieee80211_supported_band* %30, %struct.ieee80211_supported_band** %8, align 8
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %32 = icmp ne %struct.ieee80211_supported_band* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %5, align 4
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %8, align 8
  br label %45

45:                                               ; preds = %39, %33, %3
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %47 = icmp ne %struct.ieee80211_supported_band* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %52, align 8
  %54 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %53, i64 %54
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %55, align 8
  store %struct.ieee80211_supported_band* %56, %struct.ieee80211_supported_band** %8, align 8
  br label %57

57:                                               ; preds = %48, %45
  %58 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %59 = icmp ne %struct.ieee80211_supported_band* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %57
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %109

69:                                               ; preds = %60
  %70 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @ath10k_mac_update_bss_chan_survey(%struct.ath10k* %70, i32* %76)
  %78 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %79 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %78, i32 0, i32 2
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.survey_info*, %struct.survey_info** %6, align 8
  %82 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %83 = call i32 @memcpy(%struct.survey_info* %81, %struct.survey_info* %82, i32 16)
  %84 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 2
  %86 = call i32 @spin_unlock_bh(i32* %85)
  %87 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %88 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.survey_info*, %struct.survey_info** %6, align 8
  %94 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %96 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.survey_info*, %struct.survey_info** %6, align 8
  %99 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %69
  %103 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %104 = load %struct.survey_info*, %struct.survey_info** %6, align 8
  %105 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %69
  br label %109

109:                                              ; preds = %108, %66
  %110 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %111 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_mac_update_bss_chan_survey(%struct.ath10k*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.survey_info*, %struct.survey_info*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
