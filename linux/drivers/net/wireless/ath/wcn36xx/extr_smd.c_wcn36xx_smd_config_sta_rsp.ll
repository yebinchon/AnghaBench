; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_sta_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_hal_config_sta_rsp_msg = type { %struct.config_sta_rsp_params }
%struct.config_sta_rsp_params = type { i64, i32, i32, i32, i32, i32 }
%struct.wcn36xx_sta = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WCN36XX_FW_MSG_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"hal config sta response failure: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"hal config sta rsp status %d sta_index %d bssid_index %d uc_ucast_sig %d p2p %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.ieee80211_sta*, i8*, i64)* @wcn36xx_smd_config_sta_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_config_sta_rsp(%struct.wcn36xx* %0, %struct.ieee80211_sta* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wcn36xx*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wcn36xx_hal_config_sta_rsp_msg*, align 8
  %11 = alloca %struct.config_sta_rsp_params*, align 8
  %12 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %13)
  store %struct.wcn36xx_sta* %14, %struct.wcn36xx_sta** %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %15, 32
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %70

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.wcn36xx_hal_config_sta_rsp_msg*
  store %struct.wcn36xx_hal_config_sta_rsp_msg* %22, %struct.wcn36xx_hal_config_sta_rsp_msg** %10, align 8
  %23 = load %struct.wcn36xx_hal_config_sta_rsp_msg*, %struct.wcn36xx_hal_config_sta_rsp_msg** %10, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_config_sta_rsp_msg, %struct.wcn36xx_hal_config_sta_rsp_msg* %23, i32 0, i32 0
  store %struct.config_sta_rsp_params* %24, %struct.config_sta_rsp_params** %11, align 8
  %25 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %26 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WCN36XX_FW_MSG_RESULT_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %20
  %31 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %32 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %70

37:                                               ; preds = %20
  %38 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %39 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %12, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %44 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %12, align 8
  %47 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %49 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %12, align 8
  %52 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %54 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %55 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %58 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %61 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %64 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.config_sta_rsp_params*, %struct.config_sta_rsp_params** %11, align 8
  %67 = getelementptr inbounds %struct.config_sta_rsp_params, %struct.config_sta_rsp_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wcn36xx_dbg(i32 %53, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %37, %30, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

declare dso_local i32 @wcn36xx_warn(i8*, i64) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
