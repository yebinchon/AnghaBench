; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_main.c_ath9k_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_2__*, %struct.ath_softc* }
%struct.TYPE_2__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.ath_softc = type { i32*, i32 }
%struct.survey_info = type { %struct.ieee80211_channel* }
%struct.ath_common = type { i32 }

@CONFIG_ATH9K_TX99 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @ath9k_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.ath_softc*, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 1
  %16 = load %struct.ath_softc*, %struct.ath_softc** %15, align 8
  store %struct.ath_softc* %16, %struct.ath_softc** %8, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.ath_common* @ath9k_hw_common(i32 %19)
  store %struct.ath_common* %20, %struct.ath_common** %9, align 8
  %21 = load i32, i32* @CONFIG_ATH9K_TX99, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %113

27:                                               ; preds = %3
  %28 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %29 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %28, i32 0, i32 0
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %36 = call i32 @ath_update_survey_stats(%struct.ath_softc* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %41, align 8
  %43 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %44 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %42, i64 %43
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %44, align 8
  store %struct.ieee80211_supported_band* %45, %struct.ieee80211_supported_band** %10, align 8
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %47 = icmp ne %struct.ieee80211_supported_band* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %6, align 4
  store %struct.ieee80211_supported_band* null, %struct.ieee80211_supported_band** %10, align 8
  br label %60

60:                                               ; preds = %54, %48, %37
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %62 = icmp ne %struct.ieee80211_supported_band* %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %67, align 8
  %69 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %70 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %68, i64 %69
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %70, align 8
  store %struct.ieee80211_supported_band* %71, %struct.ieee80211_supported_band** %10, align 8
  br label %72

72:                                               ; preds = %63, %60
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %74 = icmp ne %struct.ieee80211_supported_band* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75, %72
  %82 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %83 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %82, i32 0, i32 0
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %113

88:                                               ; preds = %75
  %89 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %89, i32 0, i32 1
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i64 %93
  store %struct.ieee80211_channel* %94, %struct.ieee80211_channel** %11, align 8
  %95 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %99 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  %100 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @memcpy(%struct.survey_info* %98, i32* %104, i32 8)
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %107 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %108 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %107, i32 0, i32 0
  store %struct.ieee80211_channel* %106, %struct.ieee80211_channel** %108, align 8
  %109 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %110 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %109, i32 0, i32 0
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %88, %81, %24
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ath_update_survey_stats(%struct.ath_softc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.survey_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
