; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_bss_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_config_bss_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_hal_config_bss_rsp_msg = type { %struct.wcn36xx_hal_config_bss_rsp_params }
%struct.wcn36xx_hal_config_bss_rsp_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wcn36xx_vif = type { i32, i32 }
%struct.wcn36xx_sta = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WCN36XX_FW_MSG_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"hal config bss response failure: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [135 x i8] c"hal config bss rsp status %d bss_idx %d dpu_desc_index %d sta_idx %d self_idx %d bcast_idx %d mac %pM power %d ucast_dpu_signature %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i8*, i64)* @wcn36xx_smd_config_bss_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_config_bss_rsp(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wcn36xx_hal_config_bss_rsp_msg*, align 8
  %13 = alloca %struct.wcn36xx_hal_config_bss_rsp_params*, align 8
  %14 = alloca %struct.wcn36xx_vif*, align 8
  %15 = alloca %struct.wcn36xx_sta*, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %17 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %16)
  store %struct.wcn36xx_vif* %17, %struct.wcn36xx_vif** %14, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 40
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %96

23:                                               ; preds = %5
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.wcn36xx_hal_config_bss_rsp_msg*
  store %struct.wcn36xx_hal_config_bss_rsp_msg* %25, %struct.wcn36xx_hal_config_bss_rsp_msg** %12, align 8
  %26 = load %struct.wcn36xx_hal_config_bss_rsp_msg*, %struct.wcn36xx_hal_config_bss_rsp_msg** %12, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_msg, %struct.wcn36xx_hal_config_bss_rsp_msg* %26, i32 0, i32 0
  store %struct.wcn36xx_hal_config_bss_rsp_params* %27, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %28 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %29 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WCN36XX_FW_MSG_RESULT_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wcn36xx_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %96

40:                                               ; preds = %23
  %41 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %42 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %52 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %55 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %61 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %64 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %67 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @wcn36xx_dbg(i32 %41, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0), i64 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %71 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %74 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %76 = icmp ne %struct.ieee80211_sta* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %40
  %78 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %79 = call %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta* %78)
  store %struct.wcn36xx_sta* %79, %struct.wcn36xx_sta** %15, align 8
  %80 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %81 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %15, align 8
  %84 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %86 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wcn36xx_sta*, %struct.wcn36xx_sta** %15, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_sta, %struct.wcn36xx_sta* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %77, %40
  %91 = load %struct.wcn36xx_hal_config_bss_rsp_params*, %struct.wcn36xx_hal_config_bss_rsp_params** %13, align 8
  %92 = getelementptr inbounds %struct.wcn36xx_hal_config_bss_rsp_params, %struct.wcn36xx_hal_config_bss_rsp_params* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %14, align 8
  %95 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %90, %33, %20
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @wcn36xx_warn(i8*, i64) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.wcn36xx_sta* @wcn36xx_sta_to_priv(%struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
