; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_mac_stop_req_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@WCN36XX_HAL_STOP_REQ = common dso_local global i32 0, align 4
@HAL_STOP_TYPE_RF_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending hal_stop failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"hal_stop response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_stop(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.wcn36xx_hal_mac_stop_req_msg, align 4
  %4 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %5 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %6 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* @WCN36XX_HAL_STOP_REQ, align 4
  %9 = bitcast %struct.wcn36xx_hal_mac_stop_req_msg* %3 to i64*
  %10 = load i64, i64* %9, align 4
  %11 = call i32 @INIT_HAL_MSG(i64 %10, i32 %8)
  %12 = load i32, i32* @HAL_STOP_TYPE_RF_KILL, align 4
  %13 = getelementptr inbounds %struct.wcn36xx_hal_mac_stop_req_msg, %struct.wcn36xx_hal_mac_stop_req_msg* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %struct.wcn36xx_hal_mac_stop_req_msg* %3 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @PREPARE_HAL_BUF(i32 %17, i64 %19)
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_hal_mac_stop_req_msg, %struct.wcn36xx_hal_mac_stop_req_msg* %3, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @wcn36xx_smd_rsp_status_check(i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %40, %28
  %45 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %46 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64) #1

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
