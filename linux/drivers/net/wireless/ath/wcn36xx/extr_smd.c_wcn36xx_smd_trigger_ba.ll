; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_trigger_ba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_trigger_ba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i64 }
%struct.wcn36xx_hal_trigger_ba_req_msg = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wcn36xx_hal_trigger_ba_req_candidate = type { i32, i32 }

@WCN36XX_HAL_TRIGGER_BA_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending hal_trigger_ba failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hal_trigger_ba response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_trigger_ba(%struct.wcn36xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx_hal_trigger_ba_req_msg, align 8
  %6 = alloca %struct.wcn36xx_hal_trigger_ba_req_candidate*, align 8
  %7 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* @WCN36XX_HAL_TRIGGER_BA_REQ, align 4
  %12 = bitcast %struct.wcn36xx_hal_trigger_ba_req_msg* %5 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @INIT_HAL_MSG(i64 %14, i64 %16, i32 %11)
  %18 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_msg, %struct.wcn36xx_hal_trigger_ba_req_msg* %5, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_msg, %struct.wcn36xx_hal_trigger_ba_req_msg* %5, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_msg, %struct.wcn36xx_hal_trigger_ba_req_msg* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %struct.wcn36xx_hal_trigger_ba_req_msg* %5 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @PREPARE_HAL_BUF(i64 %28, i64 %31, i64 %33)
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 16
  %39 = inttoptr i64 %38 to %struct.wcn36xx_hal_trigger_ba_req_candidate*
  store %struct.wcn36xx_hal_trigger_ba_req_candidate* %39, %struct.wcn36xx_hal_trigger_ba_req_candidate** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.wcn36xx_hal_trigger_ba_req_candidate*, %struct.wcn36xx_hal_trigger_ba_req_candidate** %6, align 8
  %42 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_candidate, %struct.wcn36xx_hal_trigger_ba_req_candidate* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wcn36xx_hal_trigger_ba_req_candidate*, %struct.wcn36xx_hal_trigger_ba_req_candidate** %6, align 8
  %44 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_candidate, %struct.wcn36xx_hal_trigger_ba_req_candidate* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_hal_trigger_ba_req_msg, %struct.wcn36xx_hal_trigger_ba_req_msg* %5, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %68

54:                                               ; preds = %2
  %55 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %56 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wcn36xx_smd_trigger_ba_rsp(i64 %57, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %64, %52
  %69 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %70 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i64, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i64, i64, i64) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_trigger_ba_rsp(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
