; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_scan_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_scan_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_update_scan_params_req_ex = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_UPDATE_SCAN_PARAM_REQ = common dso_local global i32 0, align 4
@PHY_SINGLE_CHANNEL_CENTERED = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hal update scan params channel_count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Sending hal_update_scan_params failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"hal_update_scan_params response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_update_scan_params(%struct.wcn36xx* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wcn36xx_hal_update_scan_params_req_ex, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @WCN36XX_HAL_UPDATE_SCAN_PARAM_REQ, align 4
  %13 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_update_scan_params_req_ex* byval(%struct.wcn36xx_hal_update_scan_params_req_ex) align 8 %7, i32 %12)
  %14 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 2
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @memcpy(i32 %19, i32* %20, i64 %21)
  %23 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 3
  store i32 60, i32* %23, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 4
  store i32 120, i32* %24, align 4
  %25 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 5
  store i32 60, i32* %25, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 6
  store i32 110, i32* %26, align 4
  %27 = load i32, i32* @PHY_SINGLE_CHANNEL_CENTERED, align 4
  %28 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PREPARE_HAL_BUF(i32 %31, %struct.wcn36xx_hal_update_scan_params_req_ex* byval(%struct.wcn36xx_hal_update_scan_params_req_ex) align 8 %7)
  %33 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %34 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wcn36xx_dbg(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %38 = getelementptr inbounds %struct.wcn36xx_hal_update_scan_params_req_ex, %struct.wcn36xx_hal_update_scan_params_req_ex* %7, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %60

46:                                               ; preds = %3
  %47 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %48 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %51 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @wcn36xx_smd_update_scan_params_rsp(i32 %49, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %60

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %56, %44
  %61 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %62 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_update_scan_params_req_ex* byval(%struct.wcn36xx_hal_update_scan_params_req_ex) align 8, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_update_scan_params_req_ex* byval(%struct.wcn36xx_hal_update_scan_params_req_ex) align 8) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i64) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_update_scan_params_rsp(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
