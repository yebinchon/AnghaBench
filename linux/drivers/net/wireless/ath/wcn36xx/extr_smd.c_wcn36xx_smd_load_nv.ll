; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_load_nv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_load_nv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.nv_data = type { %struct.wcn36xx_hal_nv_img_download_req_msg }
%struct.wcn36xx_hal_nv_img_download_req_msg = type { i32, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WLAN_NV_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to load nv file %s: %d\0A\00", align 1
@WCN36XX_HAL_DOWNLOAD_NV_REQ = common dso_local global i32 0, align 4
@WCN36XX_NV_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"hal_load_nv response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_load_nv(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.nv_data*, align 8
  %4 = alloca %struct.wcn36xx_hal_nv_img_download_req_msg, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %9 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %1
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 3
  %15 = load i32, i32* @WLAN_NV_FILE, align 4
  %16 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %17 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @request_firmware(%struct.TYPE_4__** %14, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* @WLAN_NV_FILE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, i32, ...) @wcn36xx_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %125

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %29 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.nv_data*
  store %struct.nv_data* %33, %struct.nv_data** %3, align 8
  %34 = load i32, i32* @WCN36XX_HAL_DOWNLOAD_NV_REQ, align 4
  %35 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_nv_img_download_req_msg* byval(%struct.wcn36xx_hal_nv_img_download_req_msg) align 8 %4, i32 %34)
  %36 = load i32, i32* @WCN36XX_NV_FRAGMENT_SIZE, align 4
  %37 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %43 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  br label %45

45:                                               ; preds = %116, %27
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @WCN36XX_NV_FRAGMENT_SIZE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @WCN36XX_NV_FRAGMENT_SIZE, align 4
  %60 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %71

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 24, %66
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %61, %57
  %72 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %73 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @memcpy(i64 %74, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 24)
  %76 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %77 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 24
  %80 = load %struct.nv_data*, %struct.nv_data** %3, align 8
  %81 = getelementptr inbounds %struct.nv_data, %struct.nv_data* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %81, i64 %83
  %85 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i64 %79, %struct.wcn36xx_hal_nv_img_download_req_msg* %84, i32 %86)
  %88 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %89 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %88, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  br label %121

96:                                               ; preds = %71
  %97 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %98 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %101 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @wcn36xx_smd_rsp_status_check(i64 %99, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, i32, ...) @wcn36xx_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %121

109:                                              ; preds = %96
  %110 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load i32, i32* @WCN36XX_NV_FRAGMENT_SIZE, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.wcn36xx_hal_nv_img_download_req_msg, %struct.wcn36xx_hal_nv_img_download_req_msg* %4, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %45, label %120

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %106, %95
  %122 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %123 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  br label %125

125:                                              ; preds = %121, %22
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, i32, ...) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_nv_img_download_req_msg* byval(%struct.wcn36xx_hal_nv_img_download_req_msg) align 8, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i64, %struct.wcn36xx_hal_nv_img_download_req_msg*, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
