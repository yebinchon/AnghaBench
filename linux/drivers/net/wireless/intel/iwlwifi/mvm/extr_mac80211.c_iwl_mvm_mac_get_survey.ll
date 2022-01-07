; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.survey_info = type { i32, i64, i64, i64, i64 }
%struct.iwl_mvm = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_RADIO_BEACON_STATS = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_SCAN = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.survey_info*)* @iwl_mvm_mac_get_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.iwl_mvm*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %10)
  store %struct.iwl_mvm* %11, %struct.iwl_mvm** %8, align 8
  %12 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %13 = call i32 @memset(%struct.survey_info* %12, i32 0, i32 40)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %123

19:                                               ; preds = %3
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @IWL_UCODE_TLV_CAPA_RADIO_BEACON_STATS, align 4
  %25 = call i32 @fw_has_capa(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %123

30:                                               ; preds = %19
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %35 = call i64 @iwl_mvm_firmware_running(%struct.iwl_mvm* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %39 = call i32 @iwl_mvm_request_statistics(%struct.iwl_mvm* %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %118

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %46 = load i32, i32* @SURVEY_INFO_TIME_RX, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SURVEY_INFO_TIME_SCAN, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %53 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %64 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %66 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @USEC_PER_MSEC, align 4
  %69 = call i32 @do_div(i64 %67, i32 %68)
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %80 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %82 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @USEC_PER_MSEC, align 4
  %85 = call i32 @do_div(i64 %83, i32 %84)
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %87 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %89, %93
  %95 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %96 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %98 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @USEC_PER_MSEC, align 4
  %101 = call i32 @do_div(i64 %99, i32 %100)
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %105, %109
  %111 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %112 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %114 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @USEC_PER_MSEC, align 4
  %117 = call i32 @do_div(i64 %115, i32 %116)
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %44, %42
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %8, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %118, %27, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.survey_info*, i32, i32) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_mvm_request_statistics(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
