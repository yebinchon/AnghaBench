; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_ba_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_ba_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wcn36xx_hal_add_ba_session_req_msg = type { i32, i32, %struct.TYPE_2__, i8*, i8*, i64, i32, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_ADD_BA_SESSION_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_AGGR_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Sending hal_add_ba_session failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"hal_add_ba_session response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_add_ba_session(%struct.wcn36xx* %0, %struct.ieee80211_sta* %1, i8* %2, i8** %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wcn36xx_hal_add_ba_session_req_msg, align 8
  %14 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @WCN36XX_HAL_ADD_BA_SESSION_REQ, align 4
  %19 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_add_ba_session_req_msg* byval(%struct.wcn36xx_hal_add_ba_session_req_msg) align 8 %13, i32 %18)
  %20 = load i8*, i8** %12, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 9
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %22, i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 0
  store i32 16, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 7
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @WCN36XX_AGGR_BUFFER_SIZE, align 4
  %33 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i8**, i8*** %10, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %6
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %45 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PREPARE_HAL_BUF(i32 %46, %struct.wcn36xx_hal_add_ba_session_req_msg* byval(%struct.wcn36xx_hal_add_ba_session_req_msg) align 8 %13)
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %49 = getelementptr inbounds %struct.wcn36xx_hal_add_ba_session_req_msg, %struct.wcn36xx_hal_add_ba_session_req_msg* %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %48, i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %71

57:                                               ; preds = %41
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %62 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wcn36xx_smd_rsp_status_check(i32 %60, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %67, %55
  %72 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %73 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_add_ba_session_req_msg* byval(%struct.wcn36xx_hal_add_ba_session_req_msg) align 8, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_add_ba_session_req_msg* byval(%struct.wcn36xx_hal_add_ba_session_req_msg) align 8) #1

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
