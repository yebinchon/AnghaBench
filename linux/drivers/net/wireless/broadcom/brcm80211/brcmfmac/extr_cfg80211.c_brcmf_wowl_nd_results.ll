; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_wowl_nd_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_wowl_nd_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { %struct.brcmf_cfg80211_info* }
%struct.brcmf_cfg80211_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__** }
%struct.brcmf_event_msg = type { i32, i64 }
%struct.brcmf_pno_scanresults_le = type { i32 }
%struct.brcmf_pno_net_info_le = type { i64, i64, i32 }

@SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Event data to small. Ignore\0A\00", align 1
@BRCMF_E_PFN_NET_LOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"PFN NET LOST event. Ignore\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid result count, expected 1 (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i64 0, align 8
@CH_MAX_2G_CHANNEL = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, %struct.brcmf_event_msg*, i8*)* @brcmf_wowl_nd_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_wowl_nd_results(%struct.brcmf_if* %0, %struct.brcmf_event_msg* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca %struct.brcmf_event_msg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.brcmf_pub*, align 8
  %9 = alloca %struct.brcmf_cfg80211_info*, align 8
  %10 = alloca %struct.brcmf_pno_scanresults_le*, align 8
  %11 = alloca %struct.brcmf_pno_net_info_le*, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store %struct.brcmf_event_msg* %1, %struct.brcmf_event_msg** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %8, align 8
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %16 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %15, i32 0, i32 0
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %16, align 8
  store %struct.brcmf_cfg80211_info* %17, %struct.brcmf_cfg80211_info** %9, align 8
  %18 = load i32, i32* @SCAN, align 4
  %19 = call i32 @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 28
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @SCAN, align 4
  %27 = call i32 @brcmf_dbg(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %140

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.brcmf_pno_scanresults_le*
  store %struct.brcmf_pno_scanresults_le* %30, %struct.brcmf_pno_scanresults_le** %10, align 8
  %31 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %6, align 8
  %32 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BRCMF_E_PFN_NET_LOST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @SCAN, align 4
  %38 = call i32 @brcmf_dbg(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %140

39:                                               ; preds = %28
  %40 = load %struct.brcmf_pno_scanresults_le*, %struct.brcmf_pno_scanresults_le** %10, align 8
  %41 = getelementptr inbounds %struct.brcmf_pno_scanresults_le, %struct.brcmf_pno_scanresults_le* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  %47 = load %struct.brcmf_pno_scanresults_le*, %struct.brcmf_pno_scanresults_le** %10, align 8
  %48 = getelementptr inbounds %struct.brcmf_pno_scanresults_le, %struct.brcmf_pno_scanresults_le* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = call i32 @bphy_err(%struct.brcmf_pub* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %140

54:                                               ; preds = %39
  %55 = load %struct.brcmf_pno_scanresults_le*, %struct.brcmf_pno_scanresults_le** %10, align 8
  %56 = call %struct.brcmf_pno_net_info_le* @brcmf_get_netinfo_array(%struct.brcmf_pno_scanresults_le* %55)
  store %struct.brcmf_pno_net_info_le* %56, %struct.brcmf_pno_net_info_le** %11, align 8
  %57 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %58 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i64, i64* @IEEE80211_MAX_SSID_LEN, align 8
  %64 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %65 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %54
  %67 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %68 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %75 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %78 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @memcpy(i32 %73, i32 %76, i64 %79)
  %81 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %82 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %85 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %83, i64* %89, align 8
  %90 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %91 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %96 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.brcmf_pno_net_info_le*, %struct.brcmf_pno_net_info_le** %11, align 8
  %99 = getelementptr inbounds %struct.brcmf_pno_net_info_le, %struct.brcmf_pno_net_info_le* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CH_MAX_2G_CHANNEL, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %66
  %104 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %107

105:                                              ; preds = %66
  %106 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @ieee80211_channel_to_frequency(i64 %97, i32 %108)
  %110 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %111 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %109, i32* %116, align 4
  %117 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %118 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %123 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %127 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %131, i64 0
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %132, align 8
  %133 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %134 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %9, align 8
  %137 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = call i32 @wake_up(i32* %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %107, %45, %36, %25
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local %struct.brcmf_pno_net_info_le* @brcmf_get_netinfo_array(%struct.brcmf_pno_scanresults_le*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
