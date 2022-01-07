; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { %struct.wil_p2p_info }
%struct.wil_p2p_info = type { i32, i32, i32 }
%struct.cfg80211_scan_request = type { i32, i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"p2p_search: channel %d\0A\00", align 1
@P2P_DMG_SOCIAL_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"search failed. discovery already ongoing\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@P2P_DEFAULT_BI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"wmi_p2p_cfg failed\0A\00", align 1
@P2P_WILDCARD_SSID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"wmi_set_ssid failed\0A\00", align 1
@WMI_FRAME_PROBE_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"wmi_set_ie(WMI_FRAME_PROBE_REQ) failed\0A\00", align 1
@WMI_FRAME_PROBE_RESP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"wmi_set_ie(WMI_FRAME_PROBE_RESP) failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"wmi_start_search failed\0A\00", align 1
@wil_p2p_search_expired = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@P2P_SEARCH_DURATION_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_p2p_search(%struct.wil6210_vif* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wil_p2p_info*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %4, align 8
  %8 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %9 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %5, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %10, i32 0, i32 0
  store %struct.wil_p2p_info* %11, %struct.wil_p2p_info** %7, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = load i32, i32* @P2P_DMG_SOCIAL_CHANNEL, align 4
  %14 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %19 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %24 = call i32 @wil_err(%struct.wil6210_priv* %23, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %107

27:                                               ; preds = %2
  %28 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %29 = load i32, i32* @P2P_DMG_SOCIAL_CHANNEL, align 4
  %30 = load i32, i32* @P2P_DEFAULT_BI, align 4
  %31 = call i32 @wmi_p2p_cfg(%struct.wil6210_vif* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %36 = call i32 @wil_err(%struct.wil6210_priv* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %107

37:                                               ; preds = %27
  %38 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %39 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %42 = call i32 @wmi_set_ssid(%struct.wil6210_vif* %38, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %47 = call i32 @wil_err(%struct.wil6210_priv* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %100

48:                                               ; preds = %37
  %49 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %50 = load i32, i32* @WMI_FRAME_PROBE_REQ, align 4
  %51 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %52 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %55 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wmi_set_ie(%struct.wil6210_vif* %49, i32 %50, i32 %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %62 = call i32 @wil_err(%struct.wil6210_priv* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %100

63:                                               ; preds = %48
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %65 = load i32, i32* @WMI_FRAME_PROBE_RESP, align 4
  %66 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %67 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %70 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wmi_set_ie(%struct.wil6210_vif* %64, i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %77 = call i32 @wil_err(%struct.wil6210_priv* %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %100

78:                                               ; preds = %63
  %79 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %80 = call i32 @wmi_start_search(%struct.wil6210_vif* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %85 = call i32 @wil_err(%struct.wil6210_priv* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %100

86:                                               ; preds = %78
  %87 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %88 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %90 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %89, i32 0, i32 2
  %91 = load i32, i32* @wil_p2p_search_expired, align 4
  %92 = call i32 @INIT_WORK(i32* %90, i32 %91)
  %93 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %7, align 8
  %94 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %93, i32 0, i32 1
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* @P2P_SEARCH_DURATION_MS, align 4
  %97 = call i64 @msecs_to_jiffies(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @mod_timer(i32* %94, i64 %98)
  br label %100

100:                                              ; preds = %86, %83, %75, %60, %45
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %105 = call i32 @wmi_stop_discovery(%struct.wil6210_vif* %104)
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %34, %22
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wmi_p2p_cfg(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @wmi_set_ssid(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wmi_set_ie(%struct.wil6210_vif*, i32, i32, i32) #1

declare dso_local i32 @wmi_start_search(%struct.wil6210_vif*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wmi_stop_discovery(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
