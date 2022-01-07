; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_bss_connect_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_bss_connect_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { i32 }
%struct.net_device = type { i32 }
%struct.brcmf_event_msg = type { i32 }
%struct.brcmf_if = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.brcmf_cfg80211_profile }
%struct.brcmf_cfg80211_profile = type { i32 }
%struct.brcmf_cfg80211_connect_info = type { i32, i32, i32, i32 }
%struct.cfg80211_connect_resp_params = type { i32, i32, i32, i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_VIF_STATUS_CONNECTING = common dso_local global i32 0, align 4
@BRCMF_VIF_STATUS_CONNECTED = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_STATUS_AUTH_TIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Report connect result - connection %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*, %struct.net_device*, %struct.brcmf_event_msg*, i32)* @brcmf_bss_connect_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_bss_connect_done(%struct.brcmf_cfg80211_info* %0, %struct.net_device* %1, %struct.brcmf_event_msg* %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_cfg80211_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.brcmf_event_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_if*, align 8
  %10 = alloca %struct.brcmf_cfg80211_profile*, align 8
  %11 = alloca %struct.brcmf_cfg80211_connect_info*, align 8
  %12 = alloca %struct.cfg80211_connect_resp_params, align 4
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.brcmf_event_msg* %2, %struct.brcmf_event_msg** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.brcmf_if* @netdev_priv(%struct.net_device* %13)
  store %struct.brcmf_if* %14, %struct.brcmf_if** %9, align 8
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %16 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store %struct.brcmf_cfg80211_profile* %18, %struct.brcmf_cfg80211_profile** %10, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %20 = call %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info* %19)
  store %struct.brcmf_cfg80211_connect_info* %20, %struct.brcmf_cfg80211_connect_info** %11, align 8
  %21 = load i32, i32* @TRACE, align 4
  %22 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTING, align 4
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i64 @test_and_clear_bit(i32 %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %4
  %31 = call i32 @memset(%struct.cfg80211_connect_resp_params* %12, i32 0, i32 24)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %37 = call i32 @brcmf_get_assoc_ies(%struct.brcmf_cfg80211_info* %35, %struct.brcmf_if* %36)
  %38 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %5, align 8
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %40 = call i32 @brcmf_update_bss_info(%struct.brcmf_cfg80211_info* %38, %struct.brcmf_if* %39)
  %41 = load i32, i32* @BRCMF_VIF_STATUS_CONNECTED, align 4
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %43 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %41, i32* %45)
  %47 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %48 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  br label %52

49:                                               ; preds = %30
  %50 = load i32, i32* @WLAN_STATUS_AUTH_TIMEOUT, align 4
  %51 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %34
  %53 = load %struct.brcmf_cfg80211_profile*, %struct.brcmf_cfg80211_profile** %10, align 8
  %54 = getelementptr inbounds %struct.brcmf_cfg80211_profile, %struct.brcmf_cfg80211_profile* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %11, align 8
  %58 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %11, align 8
  %62 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %11, align 8
  %66 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.brcmf_cfg80211_connect_info*, %struct.brcmf_cfg80211_connect_info** %11, align 8
  %70 = getelementptr inbounds %struct.brcmf_cfg80211_connect_info, %struct.brcmf_cfg80211_connect_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.cfg80211_connect_resp_params, %struct.cfg80211_connect_resp_params* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %6, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @cfg80211_connect_done(%struct.net_device* %73, %struct.cfg80211_connect_resp_params* %12, i32 %74)
  %76 = load i32, i32* @CONN, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %81 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %52, %4
  %83 = load i32, i32* @TRACE, align 4
  %84 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.brcmf_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.brcmf_cfg80211_connect_info* @cfg_to_conn(%struct.brcmf_cfg80211_info*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.cfg80211_connect_resp_params*, i32, i32) #1

declare dso_local i32 @brcmf_get_assoc_ies(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*) #1

declare dso_local i32 @brcmf_update_bss_info(%struct.brcmf_cfg80211_info*, %struct.brcmf_if*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cfg80211_connect_done(%struct.net_device*, %struct.cfg80211_connect_resp_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
