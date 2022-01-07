; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_stakey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_stakey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_set_sta_key_req_msg = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i64, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i8*, i64, i32, i8* }

@WCN36XX_HAL_SET_STAKEY_REQ = common dso_local global i32 0, align 4
@WCN36XX_HAL_ED_WEP104 = common dso_local global i32 0, align 4
@WCN36XX_HAL_ED_WEP40 = common dso_local global i32 0, align 4
@WCN36XX_HAL_TX_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending hal_set_stakey failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hal_set_stakey response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_set_stakey(%struct.wcn36xx* %0, i32 %1, i8* %2, i8* %3, i8** %4, i8* %5) #0 {
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wcn36xx_hal_set_sta_key_req_msg, align 8
  %14 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @WCN36XX_HAL_SET_STAKEY_REQ, align 4
  %19 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_set_sta_key_req_msg* byval(%struct.wcn36xx_hal_set_sta_key_req_msg) align 8 %13, i32 %18)
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @WCN36XX_HAL_ED_WEP104, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @WCN36XX_HAL_ED_WEP40, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %6
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %77

39:                                               ; preds = %29
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i8* %40, i8** %45, align 8
  %46 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load i32, i32* @WCN36XX_HAL_TX_RX, align 4
  %52 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i32 %51, i32* %56, align 8
  %57 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i8* %62, i8** %67, align 8
  %68 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i8**, i8*** %11, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @memcpy(i32 %73, i8** %74, i8* %75)
  br label %77

77:                                               ; preds = %39, %33
  %78 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %81 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PREPARE_HAL_BUF(i32 %82, %struct.wcn36xx_hal_set_sta_key_req_msg* byval(%struct.wcn36xx_hal_set_sta_key_req_msg) align 8 %13)
  %84 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %85 = getelementptr inbounds %struct.wcn36xx_hal_set_sta_key_req_msg, %struct.wcn36xx_hal_set_sta_key_req_msg* %13, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %84, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %107

93:                                               ; preds = %77
  %94 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %95 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %98 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @wcn36xx_smd_rsp_status_check(i32 %96, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* %14, align 4
  %105 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %107

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %103, %91
  %108 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %109 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %14, align 4
  ret i32 %111
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_set_sta_key_req_msg* byval(%struct.wcn36xx_hal_set_sta_key_req_msg) align 8, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_set_sta_key_req_msg* byval(%struct.wcn36xx_hal_set_sta_key_req_msg) align 8) #1

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
