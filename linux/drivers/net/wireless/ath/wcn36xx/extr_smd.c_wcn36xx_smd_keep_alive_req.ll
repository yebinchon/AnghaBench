; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_keep_alive_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_keep_alive_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_keep_alive_req_msg = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_vif = type { i32 }

@WCN36XX_HAL_KEEP_ALIVE_REQ = common dso_local global i32 0, align 4
@WCN36XX_HAL_KEEP_ALIVE_NULL_PKT = common dso_local global i32 0, align 4
@WCN36XX_KEEP_ALIVE_TIME_PERIOD = common dso_local global i32 0, align 4
@WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unknown keep alive packet type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Sending hal_keep_alive failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"hal_keep_alive response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_keep_alive_req(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx_hal_keep_alive_req_msg, align 4
  %8 = alloca %struct.wcn36xx_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %10)
  store %struct.wcn36xx_vif* %11, %struct.wcn36xx_vif** %8, align 8
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %13 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* @WCN36XX_HAL_KEEP_ALIVE_REQ, align 4
  %16 = bitcast %struct.wcn36xx_hal_keep_alive_req_msg* %7 to { i64, i64 }*
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1
  %20 = load i64, i64* %19, align 4
  %21 = call i32 @INIT_HAL_MSG(i64 %18, i64 %20, i32 %15)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @WCN36XX_HAL_KEEP_ALIVE_NULL_PKT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %8, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.wcn36xx_hal_keep_alive_req_msg, %struct.wcn36xx_hal_keep_alive_req_msg* %7, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @WCN36XX_HAL_KEEP_ALIVE_NULL_PKT, align 4
  %31 = getelementptr inbounds %struct.wcn36xx_hal_keep_alive_req_msg, %struct.wcn36xx_hal_keep_alive_req_msg* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @WCN36XX_KEEP_ALIVE_TIME_PERIOD, align 4
  %33 = getelementptr inbounds %struct.wcn36xx_hal_keep_alive_req_msg, %struct.wcn36xx_hal_keep_alive_req_msg* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  br label %45

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @WCN36XX_HAL_KEEP_ALIVE_UNSOLICIT_ARP_RSP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %78

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %struct.wcn36xx_hal_keep_alive_req_msg* %7 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 4
  %54 = call i32 @PREPARE_HAL_BUF(i32 %48, i64 %51, i64 %53)
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %56 = getelementptr inbounds %struct.wcn36xx_hal_keep_alive_req_msg, %struct.wcn36xx_hal_keep_alive_req_msg* %7, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %78

64:                                               ; preds = %45
  %65 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %66 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %69 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wcn36xx_smd_rsp_status_check(i32 %67, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %78

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %74, %62, %39
  %79 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %80 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @wcn36xx_warn(i8*, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i64) #1

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
