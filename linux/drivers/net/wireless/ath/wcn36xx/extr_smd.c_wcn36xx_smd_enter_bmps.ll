; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_enter_bmps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_enter_bmps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wcn36xx_hal_enter_bmps_req_msg = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wcn36xx_vif = type { i32, i32 }

@WCN36XX_HAL_ENTER_BMPS_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending hal_enter_bmps failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hal_enter_bmps response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_enter_bmps(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wcn36xx_hal_enter_bmps_req_msg, align 4
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
  %13 = load i32, i32* @WCN36XX_HAL_ENTER_BMPS_REQ, align 4
  %14 = bitcast %struct.wcn36xx_hal_enter_bmps_req_msg* %5 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 4
  %19 = call i32 @INIT_HAL_MSG(i64 %16, i64 %18, i32 %13)
  %20 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.wcn36xx_hal_enter_bmps_req_msg, %struct.wcn36xx_hal_enter_bmps_req_msg* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.wcn36xx_hal_enter_bmps_req_msg, %struct.wcn36xx_hal_enter_bmps_req_msg* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.wcn36xx_hal_enter_bmps_req_msg, %struct.wcn36xx_hal_enter_bmps_req_msg* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %34 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %struct.wcn36xx_hal_enter_bmps_req_msg* %5 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @PREPARE_HAL_BUF(i32 %35, i64 %38, i64 %40)
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_enter_bmps_req_msg, %struct.wcn36xx_hal_enter_bmps_req_msg* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

51:                                               ; preds = %2
  %52 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %53 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %56 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @wcn36xx_smd_rsp_status_check(i32 %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %61, %49
  %66 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %67 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

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
