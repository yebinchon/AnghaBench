; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_sta_self.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_add_sta_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wcn36xx_hal_add_sta_self_req = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_ADD_STA_SELF_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"hal add sta self self_addr %pM status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Sending hal_add_sta_self failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hal_add_sta_self response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_add_sta_self(%struct.wcn36xx* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wcn36xx_hal_add_sta_self_req, align 4
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @WCN36XX_HAL_ADD_STA_SELF_REQ, align 4
  %13 = bitcast { i64, i32 }* %7 to i8*
  %14 = bitcast %struct.wcn36xx_hal_add_sta_self_req* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 4
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @INIT_HAL_MSG(i64 %16, i32 %18, i32 %12)
  %20 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, %struct.wcn36xx_hal_add_sta_self_req* %5, i32 0, i32 2
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = call i32 @memcpy(i32* %20, i32 %23, i32 %24)
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = bitcast { i64, i32 }* %8 to i8*
  %30 = bitcast %struct.wcn36xx_hal_add_sta_self_req* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 4
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PREPARE_HAL_BUF(i32 %28, i64 %32, i32 %34)
  %36 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %37 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, %struct.wcn36xx_hal_add_sta_self_req* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, %struct.wcn36xx_hal_add_sta_self_req* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wcn36xx_dbg(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = getelementptr inbounds %struct.wcn36xx_hal_add_sta_self_req, %struct.wcn36xx_hal_add_sta_self_req* %5, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %67

51:                                               ; preds = %2
  %52 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %54 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %55 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %58 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wcn36xx_smd_add_sta_self_rsp(%struct.wcn36xx* %52, %struct.ieee80211_vif* %53, i32 %56, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %51
  br label %67

67:                                               ; preds = %66, %63, %49
  %68 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %69 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, i64, i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_add_sta_self_rsp(%struct.wcn36xx*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
