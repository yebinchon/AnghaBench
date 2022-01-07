; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_exit_bmps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_exit_bmps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_exit_bmps_req_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_vif = type { i32 }

@WCN36XX_HAL_EXIT_BMPS_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Sending hal_exit_bmps failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"hal_exit_bmps response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_exit_bmps(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wcn36xx_hal_exit_bmps_req_msg, align 4
  %6 = alloca %struct.wcn36xx_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %8)
  store %struct.wcn36xx_vif* %9, %struct.wcn36xx_vif** %6, align 8
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @WCN36XX_HAL_EXIT_BMPS_REQ, align 4
  %14 = bitcast %struct.wcn36xx_hal_exit_bmps_req_msg* %5 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @INIT_HAL_MSG(i64 %15, i32 %13)
  %17 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.wcn36xx_hal_exit_bmps_req_msg, %struct.wcn36xx_hal_exit_bmps_req_msg* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %22 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %struct.wcn36xx_hal_exit_bmps_req_msg* %5 to i64*
  %25 = load i64, i64* %24, align 4
  %26 = call i32 @PREPARE_HAL_BUF(i32 %23, i64 %25)
  %27 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_hal_exit_bmps_req_msg, %struct.wcn36xx_hal_exit_bmps_req_msg* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %50

36:                                               ; preds = %2
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %38 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wcn36xx_smd_rsp_status_check(i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %46, %34
  %51 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %52 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64) #1

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
