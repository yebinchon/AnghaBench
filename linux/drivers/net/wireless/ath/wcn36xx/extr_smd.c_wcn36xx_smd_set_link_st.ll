; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_link_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_link_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_set_link_state_req_msg = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_SET_LINK_ST_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"hal set link state bssid %pM self_mac_addr %pM state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Sending hal_set_link_st failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"hal_set_link_st response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_set_link_st(%struct.wcn36xx* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wcn36xx_hal_set_link_state_req_msg, align 4
  %10 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %12 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @WCN36XX_HAL_SET_LINK_ST_REQ, align 4
  %15 = bitcast %struct.wcn36xx_hal_set_link_state_req_msg* %9 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @INIT_HAL_MSG(i64 %17, i64 %19, i32 %14)
  %21 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 3
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = call i32 @memcpy(i32* %21, i32* %22, i32 %23)
  %25 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 2
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32* %25, i32* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %struct.wcn36xx_hal_set_link_state_req_msg* %9 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 4
  %39 = call i32 @PREPARE_HAL_BUF(i32 %33, i64 %36, i64 %38)
  %40 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %41 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @wcn36xx_dbg(i32 %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %44, i32 %46)
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_hal_set_link_state_req_msg, %struct.wcn36xx_hal_set_link_state_req_msg* %9, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %4
  %56 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %71

57:                                               ; preds = %4
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %62 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wcn36xx_smd_rsp_status_check(i32 %60, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %67, %55
  %72 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %73 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i64) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32, i32) #1

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
