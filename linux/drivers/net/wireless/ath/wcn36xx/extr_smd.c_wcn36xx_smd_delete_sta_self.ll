; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_delete_sta_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_delete_sta_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_del_sta_self_req_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_DEL_STA_SELF_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Sending hal_delete_sta_self failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"hal_delete_sta_self response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_delete_sta_self(%struct.wcn36xx* %0, i32* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wcn36xx_hal_del_sta_self_req_msg, align 4
  %6 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %8 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @WCN36XX_HAL_DEL_STA_SELF_REQ, align 4
  %11 = bitcast %struct.wcn36xx_hal_del_sta_self_req_msg* %5 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = call i32 @INIT_HAL_MSG(i64 %12, i32 %10)
  %14 = getelementptr inbounds %struct.wcn36xx_hal_del_sta_self_req_msg, %struct.wcn36xx_hal_del_sta_self_req_msg* %5, i32 0, i32 1
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memcpy(i32* %14, i32* %15, i32 %16)
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.wcn36xx_hal_del_sta_self_req_msg* %5 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @PREPARE_HAL_BUF(i32 %20, i64 %22)
  %24 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_hal_del_sta_self_req_msg, %struct.wcn36xx_hal_del_sta_self_req_msg* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %38 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wcn36xx_smd_rsp_status_check(i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46, %43, %31
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %49 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

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
