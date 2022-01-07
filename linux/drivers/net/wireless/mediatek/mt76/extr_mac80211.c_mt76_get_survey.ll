; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76_dev* }
%struct.mt76_dev = type { i32, %struct.ieee80211_channel*, %struct.mt76_sband, %struct.mt76_sband, %struct.TYPE_3__* }
%struct.ieee80211_channel = type { i32 }
%struct.mt76_sband = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ieee80211_channel* }
%struct.TYPE_3__ = type { i32 (%struct.mt76_dev*)* }
%struct.survey_info = type { i32, i8*, i8*, %struct.ieee80211_channel* }
%struct.mt76_channel_state = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.mt76_dev*, align 8
  %9 = alloca %struct.mt76_sband*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.mt76_channel_state*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %14, align 8
  store %struct.mt76_dev* %15, %struct.mt76_dev** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mt76_dev*)*, i32 (%struct.mt76_dev*)** %22, align 8
  %24 = icmp ne i32 (%struct.mt76_dev*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %27 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.mt76_dev*)*, i32 (%struct.mt76_dev*)** %29, align 8
  %31 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %32 = call i32 %30(%struct.mt76_dev* %31)
  br label %33

33:                                               ; preds = %25, %18, %3
  %34 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %35 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %34, i32 0, i32 3
  store %struct.mt76_sband* %35, %struct.mt76_sband** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mt76_sband*, %struct.mt76_sband** %9, align 8
  %38 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.mt76_sband*, %struct.mt76_sband** %9, align 8
  %44 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %50 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %49, i32 0, i32 2
  store %struct.mt76_sband* %50, %struct.mt76_sband** %9, align 8
  br label %51

51:                                               ; preds = %42, %33
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.mt76_sband*, %struct.mt76_sband** %9, align 8
  %54 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %113

61:                                               ; preds = %51
  %62 = load %struct.mt76_sband*, %struct.mt76_sband** %9, align 8
  %63 = getelementptr inbounds %struct.mt76_sband, %struct.mt76_sband* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %65, i64 %67
  store %struct.ieee80211_channel* %68, %struct.ieee80211_channel** %10, align 8
  %69 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %71 = call %struct.mt76_channel_state* @mt76_channel_state(%struct.mt76_dev* %69, %struct.ieee80211_channel* %70)
  store %struct.mt76_channel_state* %71, %struct.mt76_channel_state** %11, align 8
  %72 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %73 = call i32 @memset(%struct.survey_info* %72, i32 0, i32 32)
  %74 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %75 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %76 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %75, i32 0, i32 3
  store %struct.ieee80211_channel* %74, %struct.ieee80211_channel** %76, align 8
  %77 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %78 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %81 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %83 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %84 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %83, i32 0, i32 1
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %84, align 8
  %86 = icmp eq %struct.ieee80211_channel* %82, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %61
  %88 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %89 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %90 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %61
  %94 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %95 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_bh(i32* %95)
  %97 = load %struct.mt76_channel_state*, %struct.mt76_channel_state** %11, align 8
  %98 = getelementptr inbounds %struct.mt76_channel_state, %struct.mt76_channel_state* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @div_u64(i32 %99, i32 1000)
  %101 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %102 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.mt76_channel_state*, %struct.mt76_channel_state** %11, align 8
  %104 = getelementptr inbounds %struct.mt76_channel_state, %struct.mt76_channel_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @div_u64(i32 %105, i32 1000)
  %107 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %108 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.mt76_dev*, %struct.mt76_dev** %8, align 8
  %110 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %93, %58
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.mt76_channel_state* @mt76_channel_state(%struct.mt76_dev*, %struct.ieee80211_channel*) #1

declare dso_local i32 @memset(%struct.survey_info*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i8* @div_u64(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
