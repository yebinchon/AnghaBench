; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_delete_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_delete_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_delete_bss_req_msg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_vif = type { i64 }

@WCN36XX_HAL_BSS_INVALID_IDX = common dso_local global i64 0, align 8
@WCN36XX_HAL_DELETE_BSS_REQ = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hal delete bss %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Sending hal_delete_bss failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"hal_delete_bss response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_delete_bss(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wcn36xx_hal_delete_bss_req_msg, align 8
  %6 = alloca %struct.wcn36xx_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = call %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif* %8)
  store %struct.wcn36xx_vif* %9, %struct.wcn36xx_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WCN36XX_HAL_BSS_INVALID_IDX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %70

19:                                               ; preds = %2
  %20 = load i32, i32* @WCN36XX_HAL_DELETE_BSS_REQ, align 4
  %21 = bitcast %struct.wcn36xx_hal_delete_bss_req_msg* %5 to { i64, i32 }*
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @INIT_HAL_MSG(i64 %23, i32 %25, i32 %20)
  %27 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_delete_bss_req_msg, %struct.wcn36xx_hal_delete_bss_req_msg* %5, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %struct.wcn36xx_hal_delete_bss_req_msg* %5 to { i64, i32 }*
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PREPARE_HAL_BUF(i32 %33, i64 %36, i32 %38)
  %40 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %41 = getelementptr inbounds %struct.wcn36xx_hal_delete_bss_req_msg, %struct.wcn36xx_hal_delete_bss_req_msg* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @wcn36xx_dbg(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %45 = getelementptr inbounds %struct.wcn36xx_hal_delete_bss_req_msg, %struct.wcn36xx_hal_delete_bss_req_msg* %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %19
  %52 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %70

53:                                               ; preds = %19
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %55 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %58 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wcn36xx_smd_rsp_status_check(i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %70

66:                                               ; preds = %53
  %67 = load i64, i64* @WCN36XX_HAL_BSS_INVALID_IDX, align 8
  %68 = load %struct.wcn36xx_vif*, %struct.wcn36xx_vif** %6, align 8
  %69 = getelementptr inbounds %struct.wcn36xx_vif, %struct.wcn36xx_vif* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %63, %51, %18
  %71 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %72 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.wcn36xx_vif* @wcn36xx_vif_to_priv(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i64) #1

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
