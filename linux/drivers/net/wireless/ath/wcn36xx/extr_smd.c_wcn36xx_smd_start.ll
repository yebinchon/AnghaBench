; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.wcn36xx = type { i32, i32, i64 }
%struct.wcn36xx_hal_mac_start_req_msg = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@WCN36XX_HAL_START_REQ = common dso_local global i32 0, align 4
@DRIVER_TYPE_PRODUCTION = common dso_local global i32 0, align 4
@wcn36xx_cfg_vals = common dso_local global %struct.TYPE_7__* null, align 8
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hal start type %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Sending hal_start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hal_start response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_start(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.wcn36xx_hal_mac_start_req_msg, align 8
  %4 = alloca %struct.wcn36xx_hal_mac_start_req_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* @WCN36XX_HAL_START_REQ, align 4
  %12 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_mac_start_req_msg* byval(%struct.wcn36xx_hal_mac_start_req_msg) align 8 %3, i32 %11)
  %13 = load i32, i32* @DRIVER_TYPE_PRODUCTION, align 4
  %14 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @PREPARE_HAL_BUF(i64 %20, %struct.wcn36xx_hal_mac_start_req_msg* byval(%struct.wcn36xx_hal_mac_start_req_msg) align 8 %3)
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.wcn36xx_hal_mac_start_req_msg*
  store %struct.wcn36xx_hal_mac_start_req_msg* %25, %struct.wcn36xx_hal_mac_start_req_msg** %4, align 8
  %26 = load %struct.wcn36xx_hal_mac_start_req_msg*, %struct.wcn36xx_hal_mac_start_req_msg** %4, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %54, %1
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcn36xx_cfg_vals, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcn36xx_cfg_vals, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wcn36xx_cfg_vals, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @put_cfg_tlv_u32(%struct.wcn36xx* %36, i64* %7, i32 %42, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %97

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %30

57:                                               ; preds = %30
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.wcn36xx_hal_mac_start_req_msg*, %struct.wcn36xx_hal_mac_start_req_msg** %4, align 8
  %60 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, 24
  %64 = load %struct.wcn36xx_hal_mac_start_req_msg*, %struct.wcn36xx_hal_mac_start_req_msg** %4, align 8
  %65 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %68 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %3, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wcn36xx_dbg(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %73 = load %struct.wcn36xx_hal_mac_start_req_msg*, %struct.wcn36xx_hal_mac_start_req_msg** %4, align 8
  %74 = getelementptr inbounds %struct.wcn36xx_hal_mac_start_req_msg, %struct.wcn36xx_hal_mac_start_req_msg* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %72, i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %57
  %81 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %97

82:                                               ; preds = %57
  %83 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %84 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %85 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %88 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wcn36xx_smd_start_rsp(%struct.wcn36xx* %83, i64 %86, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %97

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %93, %80, %52
  %98 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %99 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_mac_start_req_msg* byval(%struct.wcn36xx_hal_mac_start_req_msg) align 8, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i64, %struct.wcn36xx_hal_mac_start_req_msg* byval(%struct.wcn36xx_hal_mac_start_req_msg) align 8) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @put_cfg_tlv_u32(%struct.wcn36xx*, i64*, i32, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i64) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_start_rsp(%struct.wcn36xx*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
