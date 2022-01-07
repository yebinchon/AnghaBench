; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_del_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_del_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_del_ba_req_msg = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_DEL_BA_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Sending hal_del_ba failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"hal_del_ba response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_del_ba(%struct.wcn36xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wcn36xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wcn36xx_hal_del_ba_req_msg, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @WCN36XX_HAL_DEL_BA_REQ, align 4
  %13 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_del_ba_req_msg* byval(%struct.wcn36xx_hal_del_ba_req_msg) align 8 %7, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.wcn36xx_hal_del_ba_req_msg, %struct.wcn36xx_hal_del_ba_req_msg* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.wcn36xx_hal_del_ba_req_msg, %struct.wcn36xx_hal_del_ba_req_msg* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.wcn36xx_hal_del_ba_req_msg, %struct.wcn36xx_hal_del_ba_req_msg* %7, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %20 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PREPARE_HAL_BUF(i32 %21, %struct.wcn36xx_hal_del_ba_req_msg* byval(%struct.wcn36xx_hal_del_ba_req_msg) align 8 %7)
  %23 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_del_ba_req_msg, %struct.wcn36xx_hal_del_ba_req_msg* %7, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %34 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %37 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @wcn36xx_smd_rsp_status_check(i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %42, %30
  %47 = load %struct.wcn36xx*, %struct.wcn36xx** %4, align 8
  %48 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_del_ba_req_msg* byval(%struct.wcn36xx_hal_del_ba_req_msg) align 8, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_del_ba_req_msg* byval(%struct.wcn36xx_hal_del_ba_req_msg) align 8) #1

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
