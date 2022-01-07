; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bsskey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_set_bsskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_set_bss_key_req_msg = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i64, i32, i64, i8* }

@WCN36XX_HAL_SET_BSSKEY_REQ = common dso_local global i32 0, align 4
@WCN36XX_HAL_RX_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending hal_set_bsskey failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hal_set_bsskey response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_set_bsskey(%struct.wcn36xx* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.wcn36xx_hal_set_bss_key_req_msg, align 8
  %14 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @WCN36XX_HAL_SET_BSSKEY_REQ, align 4
  %19 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_set_bss_key_req_msg* byval(%struct.wcn36xx_hal_set_bss_key_req_msg) align 8 %13, i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i8* %25, i8** %29, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @WCN36XX_HAL_RX_ONLY, align 4
  %35 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %34, i32* %38, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8**, i8*** %12, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @memcpy(i32 %52, i8** %53, i8* %54)
  %56 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %57 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PREPARE_HAL_BUF(i32 %58, %struct.wcn36xx_hal_set_bss_key_req_msg* byval(%struct.wcn36xx_hal_set_bss_key_req_msg) align 8 %13)
  %60 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %61 = getelementptr inbounds %struct.wcn36xx_hal_set_bss_key_req_msg, %struct.wcn36xx_hal_set_bss_key_req_msg* %13, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %60, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %6
  %68 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %83

69:                                               ; preds = %6
  %70 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %71 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %74 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wcn36xx_smd_rsp_status_check(i32 %72, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %79, %67
  %84 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %85 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %14, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_set_bss_key_req_msg* byval(%struct.wcn36xx_hal_set_bss_key_req_msg) align 8, i32) #1

declare dso_local i32 @memcpy(i32, i8**, i8*) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_set_bss_key_req_msg* byval(%struct.wcn36xx_hal_set_bss_key_req_msg) align 8) #1

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
