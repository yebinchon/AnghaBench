; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_ibss_start_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_ibss_start_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cfg80211_ibss_params = type { i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.cmd_ds_802_11_ad_hoc_start = type { i32, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_10__, i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.cmd_ds_802_11_ad_hoc_result = type { i32 }

@RADIO_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@CMD_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@WLAN_EID_IBSS_PARAMS = common dso_local global i32 0, align 4
@WLAN_EID_DS_PARAMS = common dso_local global i32 0, align 4
@CMD_SCAN_PROBE_DELAY_TIME = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@CMD_802_11_AD_HOC_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cfg80211_ibss_params*)* @lbs_ibss_start_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ibss_start_new(%struct.lbs_private* %0, %struct.cfg80211_ibss_params* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cfg80211_ibss_params*, align 8
  %5 = alloca %struct.cmd_ds_802_11_ad_hoc_start, align 8
  %6 = alloca %struct.cmd_ds_802_11_ad_hoc_result*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cfg80211_ibss_params* %1, %struct.cfg80211_ibss_params** %4, align 8
  %10 = bitcast %struct.cmd_ds_802_11_ad_hoc_start* %5 to %struct.cmd_ds_802_11_ad_hoc_result*
  store %struct.cmd_ds_802_11_ad_hoc_result* %10, %struct.cmd_ds_802_11_ad_hoc_result** %6, align 8
  %11 = load i32, i32* @RADIO_PREAMBLE_SHORT, align 4
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @lbs_set_radio(%struct.lbs_private* %12, i32 %13, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %94

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 80)
  %20 = call i8* @cpu_to_le16(i32 80)
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %4, align 8
  %29 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @CMD_BSS_TYPE_IBSS, align 4
  %33 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @WLAN_EID_IBSS_PARAMS, align 4
  %40 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @WLAN_EID_DS_PARAMS, align 4
  %49 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %4, align 8
  %56 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MRVL_FW_MAJOR_REV(i32 %65)
  %67 = icmp sle i32 %66, 8
  br i1 %67, label %68, label %72

68:                                               ; preds = %18
  %69 = load i32, i32* @CMD_SCAN_PROBE_DELAY_TIME, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 2
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %18
  %73 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_start, %struct.cmd_ds_802_11_ad_hoc_start* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @lbs_add_rates(i32 %78)
  %80 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %81 = load i32, i32* @CMD_802_11_AD_HOC_START, align 4
  %82 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %80, i32 %81, %struct.cmd_ds_802_11_ad_hoc_start* %5)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %94

86:                                               ; preds = %72
  %87 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %88 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %4, align 8
  %89 = load %struct.cmd_ds_802_11_ad_hoc_result*, %struct.cmd_ds_802_11_ad_hoc_result** %6, align 8
  %90 = getelementptr inbounds %struct.cmd_ds_802_11_ad_hoc_result, %struct.cmd_ds_802_11_ad_hoc_result* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @lbs_join_post(%struct.lbs_private* %87, %struct.cfg80211_ibss_params* %88, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %85, %17
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @lbs_set_radio(%struct.lbs_private*, i32, i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_802_11_ad_hoc_start*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @MRVL_FW_MAJOR_REV(i32) #1

declare dso_local i32 @lbs_add_rates(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_ad_hoc_start*) #1

declare dso_local i32 @lbs_join_post(%struct.lbs_private*, %struct.cfg80211_ibss_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
