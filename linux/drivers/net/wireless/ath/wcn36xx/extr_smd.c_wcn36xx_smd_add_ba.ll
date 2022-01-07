; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_add_ba_req_msg = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_ADD_BA_REQ = common dso_local global i32 0, align 4
@WCN36XX_AGGR_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sending hal_add_ba failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"hal_add_ba response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_add_ba(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.wcn36xx_hal_add_ba_req_msg, align 8
  %4 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %5 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %6 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load i32, i32* @WCN36XX_HAL_ADD_BA_REQ, align 4
  %9 = bitcast %struct.wcn36xx_hal_add_ba_req_msg* %3 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @INIT_HAL_MSG(i64 %11, i64 %13, i32 %8)
  %15 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_req_msg, %struct.wcn36xx_hal_add_ba_req_msg* %3, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @WCN36XX_AGGR_BUFFER_SIZE, align 4
  %17 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_req_msg, %struct.wcn36xx_hal_add_ba_req_msg* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %struct.wcn36xx_hal_add_ba_req_msg* %3 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @PREPARE_HAL_BUF(i32 %20, i64 %23, i64 %25)
  %27 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_req_msg, %struct.wcn36xx_hal_add_ba_req_msg* %3, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %50

36:                                               ; preds = %1
  %37 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %38 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wcn36xx_smd_rsp_status_check(i32 %39, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %46, %34
  %51 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %52 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i64) #1

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
