; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_hal_config_sta_req_msg = type { %struct.TYPE_2__, %struct.wcn36xx_hal_config_sta_params }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_hal_config_sta_params = type { i32, i32, i32, i32, i32, i32, i32 }

@WCN36XX_HAL_CONFIG_STA_REQ = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"hal config sta action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Sending hal_config_sta failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"hal_config_sta response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_config_sta(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.wcn36xx_hal_config_sta_req_msg, align 8
  %8 = alloca %struct.wcn36xx_hal_config_sta_params*, align 8
  %9 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @WCN36XX_HAL_CONFIG_STA_REQ, align 4
  %14 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_config_sta_req_msg* byval(%struct.wcn36xx_hal_config_sta_req_msg) align 8 %7, i32 %13)
  %15 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, %struct.wcn36xx_hal_config_sta_req_msg* %7, i32 0, i32 1
  store %struct.wcn36xx_hal_config_sta_params* %15, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %16 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %20 = call i32 @wcn36xx_smd_set_sta_params(%struct.wcn36xx* %16, %struct.ieee80211_vif* %17, %struct.ieee80211_sta* %18, %struct.wcn36xx_hal_config_sta_params* %19)
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %22 = call i32 @wcn36xx_is_fw_version(%struct.wcn36xx* %21, i32 1, i32 2, i32 2, i32 24)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %26 = call i32 @wcn36xx_smd_config_sta_v1(%struct.wcn36xx* %25, %struct.wcn36xx_hal_config_sta_req_msg* %7)
  store i32 %26, i32* %9, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %29 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PREPARE_HAL_BUF(i32 %30, %struct.wcn36xx_hal_config_sta_req_msg* byval(%struct.wcn36xx_hal_config_sta_req_msg) align 8 %7)
  %32 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %33 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wcn36xx_hal_config_sta_params*, %struct.wcn36xx_hal_config_sta_params** %8, align 8
  %52 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_params, %struct.wcn36xx_hal_config_sta_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wcn36xx_dbg(i32 %32, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %56 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_req_msg, %struct.wcn36xx_hal_config_sta_req_msg* %7, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %55, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %27, %24
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %81

65:                                               ; preds = %60
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %68 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %69 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %72 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wcn36xx_smd_config_sta_rsp(%struct.wcn36xx* %66, %struct.ieee80211_sta* %67, i32 %70, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %77, %63
  %82 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %83 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_config_sta_req_msg* byval(%struct.wcn36xx_hal_config_sta_req_msg) align 8, i32) #1

declare dso_local i32 @wcn36xx_smd_set_sta_params(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wcn36xx_hal_config_sta_params*) #1

declare dso_local i32 @wcn36xx_is_fw_version(%struct.wcn36xx*, i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_config_sta_v1(%struct.wcn36xx*, %struct.wcn36xx_hal_config_sta_req_msg*) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_config_sta_req_msg* byval(%struct.wcn36xx_hal_config_sta_req_msg) align 8) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_config_sta_rsp(%struct.wcn36xx*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
