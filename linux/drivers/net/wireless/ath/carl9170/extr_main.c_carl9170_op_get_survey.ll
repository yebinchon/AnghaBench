; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { %struct.TYPE_6__, %struct.ieee80211_channel*, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_channel* }
%struct.survey_info = type { i32, %struct.ieee80211_channel* }

@ENODEV = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @carl9170_op_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.ar9170*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.ar9170*, %struct.ar9170** %15, align 8
  store %struct.ar9170* %16, %struct.ar9170** %8, align 8
  %17 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %18 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %18, align 8
  store %struct.ieee80211_channel* %19, %struct.ieee80211_channel** %9, align 8
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %21 = icmp ne %struct.ieee80211_channel* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %144

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %33 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %32, i32 0, i32 4
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %36 = call i32 @carl9170_update_survey(%struct.ar9170* %35, i32 0, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 4
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %144

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %25
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %46
  %51 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %57, i64 %59
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %60, align 8
  store %struct.ieee80211_supported_band* %61, %struct.ieee80211_supported_band** %10, align 8
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %63 = icmp ne %struct.ieee80211_supported_band* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %95

65:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %91, %65
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %66
  %73 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %74 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %73, i32 0, i32 1
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i64 %77
  %79 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %85 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %84, i32 0, i32 1
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %86, i64 %88
  store %struct.ieee80211_channel* %89, %struct.ieee80211_channel** %9, align 8
  br label %101

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %66

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %46

98:                                               ; preds = %46
  %99 = load i32, i32* @ENOENT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %144

101:                                              ; preds = %83
  %102 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %103 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %104 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @memcpy(%struct.survey_info* %102, i32* %108, i32 16)
  %110 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %111 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %112 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %111, i32 0, i32 1
  store %struct.ieee80211_channel* %110, %struct.ieee80211_channel** %112, align 8
  %113 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %114 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %115 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %117 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %116, i32 0, i32 1
  %118 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %117, align 8
  %119 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %120 = icmp eq %struct.ieee80211_channel* %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %101
  %122 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %123 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %124 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %101
  %128 = load %struct.ar9170*, %struct.ar9170** %8, align 8
  %129 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %135 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %140 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %133, %127
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %98, %42, %22
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @carl9170_update_survey(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.survey_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
