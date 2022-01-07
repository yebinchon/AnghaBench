; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_3__*, %struct.ieee80211_conf, %struct.mwl8k_priv* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, i32* }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.mwl8k_priv = type { i32, i32*, i64 }
%struct.survey_info = type { i32, i32, i32* }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @mwl8k_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.mwl8k_priv*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 2
  %13 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %12, align 8
  store %struct.mwl8k_priv* %13, %struct.mwl8k_priv** %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  store %struct.ieee80211_conf* %15, %struct.ieee80211_conf** %9, align 8
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %17 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %24, align 8
  %26 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, i64 %26
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  store %struct.ieee80211_supported_band* %28, %struct.ieee80211_supported_band** %10, align 8
  %29 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %30 = icmp ne %struct.ieee80211_supported_band* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %10, align 8
  br label %43

43:                                               ; preds = %37, %31, %20
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %45 = icmp ne %struct.ieee80211_supported_band* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %50, align 8
  %52 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %53 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %51, i64 %52
  %54 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %53, align 8
  store %struct.ieee80211_supported_band* %54, %struct.ieee80211_supported_band** %10, align 8
  br label %55

55:                                               ; preds = %46, %43
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %57 = icmp ne %struct.ieee80211_supported_band* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %55
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %105

67:                                               ; preds = %58
  %68 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %69 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %70 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @memcpy(%struct.survey_info* %68, i32* %74, i32 16)
  %76 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %83 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  store i32 0, i32* %4, align 4
  br label %105

84:                                               ; preds = %3
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %105

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %96 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %98 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %99 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  %101 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %104 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %90, %87, %67, %64
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @memcpy(%struct.survey_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
