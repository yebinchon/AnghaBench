; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas_tf/extr_main.c_lbtf_op_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.lbtf_private* }
%struct.ieee80211_conf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lbtf_private = type { i32 }
%struct.survey_info = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @lbtf_op_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbtf_op_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.lbtf_private*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 1
  %12 = load %struct.lbtf_private*, %struct.lbtf_private** %11, align 8
  store %struct.lbtf_private* %12, %struct.lbtf_private** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  store %struct.ieee80211_conf* %14, %struct.ieee80211_conf** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %26 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %28 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %29 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.lbtf_private*, %struct.lbtf_private** %8, align 8
  %31 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %34 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
