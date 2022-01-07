; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_switch_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_switch_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_switch_channel_req_msg = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_CH_SWITCH_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Sending hal_switch_channel failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"hal_switch_channel response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_switch_channel(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx_hal_switch_channel_req_msg, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @WCN36XX_HAL_CH_SWITCH_REQ, align 4
  %13 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_switch_channel_req_msg* byval(%struct.wcn36xx_hal_switch_channel_req_msg) align 8 %7, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_req_msg, %struct.wcn36xx_hal_switch_channel_req_msg* %7, i32 0, i32 4
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_req_msg, %struct.wcn36xx_hal_switch_channel_req_msg* %7, i32 0, i32 0
  store i32 191, i32* %17, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_req_msg, %struct.wcn36xx_hal_switch_channel_req_msg* %7, i32 0, i32 1
  store i32 191, i32* %18, align 4
  %19 = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_req_msg, %struct.wcn36xx_hal_switch_channel_req_msg* %7, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @memcpy(i32 %20, i32 %23, i32 %24)
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PREPARE_HAL_BUF(i32 %28, %struct.wcn36xx_hal_switch_channel_req_msg* byval(%struct.wcn36xx_hal_switch_channel_req_msg) align 8 %7)
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_switch_channel_req_msg, %struct.wcn36xx_hal_switch_channel_req_msg* %7, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %53

39:                                               ; preds = %3
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %44 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wcn36xx_smd_switch_channel_rsp(i32 %42, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %49, %37
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %55 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_switch_channel_req_msg* byval(%struct.wcn36xx_hal_switch_channel_req_msg) align 8, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_switch_channel_req_msg* byval(%struct.wcn36xx_hal_switch_channel_req_msg) align 8) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_switch_channel_rsp(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
