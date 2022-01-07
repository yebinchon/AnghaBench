; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_connect_status_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_notify_connect_status_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_event_msg = type { i64, i64, i32, i32 }
%struct.station_info = type { i32, i32, i8* }

@brcmf_notify_connect_status_ap.generation = internal global i32 0, align 4
@CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"event %s (%u), reason %d\0A\00", align 1
@BRCMF_E_LINK = common dso_local global i64 0, align 8
@BRCMF_E_REASON_LINK_BSSCFG_DIS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"AP mode link down\0A\00", align 1
@BRCMF_E_ASSOC_IND = common dso_local global i64 0, align 8
@BRCMF_E_REASSOC_IND = common dso_local global i64 0, align 8
@BRCMF_E_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"No IEs present in ASSOC/REASSOC_IND\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_E_DISASSOC_IND = common dso_local global i64 0, align 8
@BRCMF_E_DEAUTH_IND = common dso_local global i64 0, align 8
@BRCMF_E_DEAUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.net_device*, %struct.brcmf_event_msg*, i8*)* @brcmf_notify_connect_status_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_notify_connect_status_ap(%struct.brcmf_cfg80211_info* %0, %struct.net_device* %1, %struct.brcmf_event_msg* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_cfg80211_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.brcmf_event_msg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.brcmf_pub*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.station_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.brcmf_event_msg* %2, %struct.brcmf_event_msg** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %15 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %14, i32 0, i32 1
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %15, align 8
  store %struct.brcmf_pub* %16, %struct.brcmf_pub** %10, align 8
  %17 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %8, align 8
  %18 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %8, align 8
  %21 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* @CONN, align 4
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @brcmf_fweh_event_name(i64 %24)
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %26, i64 %27)
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @BRCMF_E_LINK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @BRCMF_E_REASON_LINK_BSSCFG_DIS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %39 = call %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info* %38)
  %40 = icmp ne %struct.net_device* %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @CONN, align 4
  %43 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %6, align 8
  %45 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %44, i32 0, i32 0
  %46 = call i32 @complete(i32* %45)
  store i32 0, i32* %5, align 4
  br label %119

47:                                               ; preds = %36, %32, %4
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @BRCMF_E_ASSOC_IND, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @BRCMF_E_REASSOC_IND, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @BRCMF_E_STATUS_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.brcmf_pub*, %struct.brcmf_pub** %10, align 8
  %64 = call i32 @bphy_err(%struct.brcmf_pub* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %119

67:                                               ; preds = %59
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.station_info* @kzalloc(i32 16, i32 %68)
  store %struct.station_info* %69, %struct.station_info** %13, align 8
  %70 = load %struct.station_info*, %struct.station_info** %13, align 8
  %71 = icmp ne %struct.station_info* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %119

75:                                               ; preds = %67
  %76 = load i8*, i8** %9, align 8
  %77 = load %struct.station_info*, %struct.station_info** %13, align 8
  %78 = getelementptr inbounds %struct.station_info, %struct.station_info* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %8, align 8
  %80 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.station_info*, %struct.station_info** %13, align 8
  %83 = getelementptr inbounds %struct.station_info, %struct.station_info* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @brcmf_notify_connect_status_ap.generation, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @brcmf_notify_connect_status_ap.generation, align 4
  %86 = load i32, i32* @brcmf_notify_connect_status_ap.generation, align 4
  %87 = load %struct.station_info*, %struct.station_info** %13, align 8
  %88 = getelementptr inbounds %struct.station_info, %struct.station_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.net_device*, %struct.net_device** %7, align 8
  %90 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %8, align 8
  %91 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.station_info*, %struct.station_info** %13, align 8
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i32 @cfg80211_new_sta(%struct.net_device* %89, i32 %92, %struct.station_info* %93, i32 %94)
  %96 = load %struct.station_info*, %struct.station_info** %13, align 8
  %97 = call i32 @kfree(%struct.station_info* %96)
  br label %118

98:                                               ; preds = %55, %51
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @BRCMF_E_DISASSOC_IND, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @BRCMF_E_DEAUTH_IND, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @BRCMF_E_DEAUTH, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106, %102, %98
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = load %struct.brcmf_event_msg*, %struct.brcmf_event_msg** %8, align 8
  %113 = getelementptr inbounds %struct.brcmf_event_msg, %struct.brcmf_event_msg* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @cfg80211_del_sta(%struct.net_device* %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %106
  br label %118

118:                                              ; preds = %117, %75
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %72, %62, %41
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_fweh_event_name(i64) #1

declare dso_local %struct.net_device* @cfg_to_ndev(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local %struct.station_info* @kzalloc(i32, i32) #1

declare dso_local i32 @cfg80211_new_sta(%struct.net_device*, i32, %struct.station_info*, i32) #1

declare dso_local i32 @kfree(%struct.station_info*) #1

declare dso_local i32 @cfg80211_del_sta(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
