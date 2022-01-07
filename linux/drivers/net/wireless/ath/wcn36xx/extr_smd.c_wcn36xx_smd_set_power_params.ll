; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_power_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_power_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32 }
%struct.wcn36xx_hal_set_power_params_req_msg = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_SET_POWER_PARAMS_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Sending hal_set_power_params failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_set_power_params(%struct.wcn36xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx_hal_set_power_params_req_msg, align 4
  %6 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %8 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @WCN36XX_HAL_SET_POWER_PARAMS_REQ, align 4
  %11 = bitcast %struct.wcn36xx_hal_set_power_params_req_msg* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @INIT_HAL_MSG(i64 %13, i64 %15, i32 %10)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.wcn36xx_hal_set_power_params_req_msg, %struct.wcn36xx_hal_set_power_params_req_msg* %5, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.wcn36xx_hal_set_power_params_req_msg, %struct.wcn36xx_hal_set_power_params_req_msg* %5, i32 0, i32 1
  store i32 2, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %24 = call i32 @WCN36XX_LISTEN_INTERVAL(%struct.wcn36xx* %23)
  %25 = getelementptr inbounds %struct.wcn36xx_hal_set_power_params_req_msg, %struct.wcn36xx_hal_set_power_params_req_msg* %5, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %struct.wcn36xx_hal_set_power_params_req_msg* %5 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @PREPARE_HAL_BUF(i32 %28, i64 %31, i64 %33)
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %36 = getelementptr inbounds %struct.wcn36xx_hal_set_power_params_req_msg, %struct.wcn36xx_hal_set_power_params_req_msg* %5, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %22
  %43 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44, %42
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @WCN36XX_LISTEN_INTERVAL(%struct.wcn36xx*) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i64) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
