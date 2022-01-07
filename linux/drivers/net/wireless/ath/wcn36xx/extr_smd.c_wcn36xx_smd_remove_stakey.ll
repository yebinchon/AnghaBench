; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_remove_stakey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_remove_stakey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_remove_sta_key_req_msg = type { i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_RMV_STAKEY_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Sending hal_remove_stakey failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"hal_remove_stakey response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_remove_stakey(%struct.wcn36xx* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wcn36xx_hal_remove_sta_key_req_msg, align 8
  %10 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %12 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @WCN36XX_HAL_RMV_STAKEY_REQ, align 4
  %15 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_remove_sta_key_req_msg* byval(%struct.wcn36xx_hal_remove_sta_key_req_msg) align 8 %9, i32 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_hal_remove_sta_key_req_msg, %struct.wcn36xx_hal_remove_sta_key_req_msg* %9, i32 0, i32 3
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.wcn36xx_hal_remove_sta_key_req_msg, %struct.wcn36xx_hal_remove_sta_key_req_msg* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_remove_sta_key_req_msg, %struct.wcn36xx_hal_remove_sta_key_req_msg* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PREPARE_HAL_BUF(i32 %24, %struct.wcn36xx_hal_remove_sta_key_req_msg* byval(%struct.wcn36xx_hal_remove_sta_key_req_msg) align 8 %9)
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_remove_sta_key_req_msg, %struct.wcn36xx_hal_remove_sta_key_req_msg* %9, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %49

35:                                               ; preds = %4
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %37 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %40 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wcn36xx_smd_rsp_status_check(i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %45, %33
  %50 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %51 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %10, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_remove_sta_key_req_msg* byval(%struct.wcn36xx_hal_remove_sta_key_req_msg) align 8, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_remove_sta_key_req_msg* byval(%struct.wcn36xx_hal_remove_sta_key_req_msg) align 8) #1

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
