; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.survey_info = type { i32, i32, i32 }
%struct.b43legacy_wl = type { %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @b43legacy_op_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_op_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.b43legacy_wl*, align 8
  %9 = alloca %struct.b43legacy_wldev*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %11)
  store %struct.b43legacy_wl* %12, %struct.b43legacy_wl** %8, align 8
  %13 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %8, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %13, i32 0, i32 0
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %14, align 8
  store %struct.b43legacy_wldev* %15, %struct.b43legacy_wldev** %9, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  store %struct.ieee80211_conf* %17, %struct.ieee80211_conf** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %29 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %31 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %32 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %9, align 8
  %34 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %38 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
