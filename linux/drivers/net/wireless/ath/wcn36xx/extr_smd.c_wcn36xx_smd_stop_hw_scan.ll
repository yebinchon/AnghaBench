; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_stop_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_stop_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_stop_scan_offload_req_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_STOP_SCAN_OFFLOAD_REQ = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"hal stop hw-scan\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Sending hal_stop_scan_offload failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"hal_stop_scan_offload response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_stop_hw_scan(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.wcn36xx_hal_stop_scan_offload_req_msg, align 4
  %4 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %5 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %6 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* @WCN36XX_HAL_STOP_SCAN_OFFLOAD_REQ, align 4
  %9 = getelementptr inbounds %struct.wcn36xx_hal_stop_scan_offload_req_msg, %struct.wcn36xx_hal_stop_scan_offload_req_msg* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @INIT_HAL_MSG(i32 %11, i32 %8)
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.wcn36xx_hal_stop_scan_offload_req_msg, %struct.wcn36xx_hal_stop_scan_offload_req_msg* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PREPARE_HAL_BUF(i32 %15, i32 %18)
  %20 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %21 = call i32 @wcn36xx_dbg(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_hal_stop_scan_offload_req_msg, %struct.wcn36xx_hal_stop_scan_offload_req_msg* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %33 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wcn36xx_smd_rsp_status_check(i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %45

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %41, %29
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

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
