; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_sta_self_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_sta_self_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_add_sta_self_rsp_msg = type { i64, i32, i32 }
%struct.wcn36xx_vif = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WCN36XX_FW_MSG_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"hal add sta self failure: %d\0A\00", align 1
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"hal add sta self status %d self_sta_index %d dpu_index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.ieee80211_vif*, i8*, i64)* @wcn36xx_smd_add_sta_self_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_add_sta_self_rsp(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wcn36xx_hal_add_sta_self_rsp_msg*, align 8
  %11 = alloca %struct.wcn36xx_vif*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %13 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %12)
  store %struct.wcn36xx_vif* %13, %struct.wcn36xx_vif** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.wcn36xx_hal_add_sta_self_rsp_msg*
  store %struct.wcn36xx_hal_add_sta_self_rsp_msg* %21, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %22 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WCN36XX_FW_MSG_RESULT_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %29 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %33 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %59

36:                                               ; preds = %19
  %37 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %38 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wcn36xx_dbg(i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  %49 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %50 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %11, align 8
  %53 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.wcn36xx_hal_add_sta_self_rsp_msg*, %struct.wcn36xx_hal_add_sta_self_rsp_msg** %10, align 8
  %55 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_rsp_msg, %struct.wcn36xx_hal_add_sta_self_rsp_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %11, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %36, %27, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_warn(i8*, i64) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
