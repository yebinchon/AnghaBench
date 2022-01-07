; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_update_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i64 }
%struct.wcn36xx_hal_update_cfg_req_msg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WCN36XX_HAL_UPDATE_CFG_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending hal_update_cfg failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hal_update_cfg response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_update_cfg(%struct.wcn36xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx_hal_update_cfg_req_msg, align 8
  %8 = alloca %struct.wcn36xx_hal_update_cfg_req_msg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %12 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @WCN36XX_HAL_UPDATE_CFG_REQ, align 4
  %15 = bitcast %struct.wcn36xx_hal_update_cfg_req_msg* %7 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @INIT_HAL_MSG(i64 %17, i64 %19, i32 %14)
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %22 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.wcn36xx_hal_update_cfg_req_msg* %7 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @PREPARE_HAL_BUF(i64 %23, i64 %26, i64 %28)
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %31 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wcn36xx_hal_update_cfg_req_msg*
  store %struct.wcn36xx_hal_update_cfg_req_msg* %33, %struct.wcn36xx_hal_update_cfg_req_msg** %8, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_hal_update_cfg_req_msg, %struct.wcn36xx_hal_update_cfg_req_msg* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @put_cfg_tlv_u32(%struct.wcn36xx* %37, i64* %9, i32 %38, i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.wcn36xx_hal_update_cfg_req_msg*, %struct.wcn36xx_hal_update_cfg_req_msg** %8, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_update_cfg_req_msg, %struct.wcn36xx_hal_update_cfg_req_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %45, 16
  %47 = load %struct.wcn36xx_hal_update_cfg_req_msg*, %struct.wcn36xx_hal_update_cfg_req_msg** %8, align 8
  %48 = getelementptr inbounds %struct.wcn36xx_hal_update_cfg_req_msg, %struct.wcn36xx_hal_update_cfg_req_msg* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %50 = load %struct.wcn36xx_hal_update_cfg_req_msg*, %struct.wcn36xx_hal_update_cfg_req_msg** %8, align 8
  %51 = getelementptr inbounds %struct.wcn36xx_hal_update_cfg_req_msg, %struct.wcn36xx_hal_update_cfg_req_msg* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %49, i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %73

59:                                               ; preds = %3
  %60 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %61 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %64 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wcn36xx_smd_rsp_status_check(i64 %62, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %69, %57
  %74 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %75 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i64, i64, i64) #1

declare dso_local i32 @put_cfg_tlv_u32(%struct.wcn36xx*, i64*, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i64) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
