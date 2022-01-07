; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_proberesp_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_proberesp_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wcn36xx_hal_send_probe_resp_req_msg = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ = common dso_local global i32 0, align 4
@BEACON_TEMPLATE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"probe response template is too big: %d\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"hal update probe rsp len %d bssid %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Sending hal_update_proberesp_tmpl failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"hal_update_proberesp_tmpl response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_update_proberesp_tmpl(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wcn36xx_hal_send_probe_resp_req_msg, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @WCN36XX_HAL_UPDATE_PROBE_RSP_TEMPLATE_REQ, align 4
  %13 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_send_probe_resp_req_msg* byval(%struct.wcn36xx_hal_send_probe_resp_req_msg) align 8 %7, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BEACON_TEMPLATE_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @E2BIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32* %31, i32 %34, i32 %37)
  %39 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %43, i32 %44)
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PREPARE_HAL_BUF(i32 %48, %struct.wcn36xx_hal_send_probe_resp_req_msg* byval(%struct.wcn36xx_hal_send_probe_resp_req_msg) align 8 %7)
  %50 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %51 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @wcn36xx_dbg(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32* %54)
  %56 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %57 = getelementptr inbounds %struct.wcn36xx_hal_send_probe_resp_req_msg, %struct.wcn36xx_hal_send_probe_resp_req_msg* %7, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %26
  %64 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %79

65:                                               ; preds = %26
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %67 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %70 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @wcn36xx_smd_rsp_status_check(i32 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %75, %63, %19
  %80 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %81 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_send_probe_resp_req_msg* byval(%struct.wcn36xx_hal_send_probe_resp_req_msg) align 8, i32) #1

declare dso_local i32 @wcn36xx_warn(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_send_probe_resp_req_msg* byval(%struct.wcn36xx_hal_send_probe_resp_req_msg) align 8) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32*) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
