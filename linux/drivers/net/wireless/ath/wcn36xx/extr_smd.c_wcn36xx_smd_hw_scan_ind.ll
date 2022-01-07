; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_hw_scan_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_hw_scan_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32, i32* }
%struct.wcn36xx_hal_scan_offload_ind = type { i32 }
%struct.cfg80211_scan_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Corrupted delete scan indication\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"scan indication (type %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unknown scan indication type %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i8*, i64)* @wcn36xx_smd_hw_scan_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_hw_scan_ind(%struct.wcn36xx* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wcn36xx_hal_scan_offload_ind*, align 8
  %9 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.wcn36xx_hal_scan_offload_ind*
  store %struct.wcn36xx_hal_scan_offload_ind* %11, %struct.wcn36xx_hal_scan_offload_ind** %8, align 8
  %12 = bitcast %struct.cfg80211_scan_info* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @wcn36xx_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %21 = load %struct.wcn36xx_hal_scan_offload_ind*, %struct.wcn36xx_hal_scan_offload_ind** %8, align 8
  %22 = getelementptr inbounds %struct.wcn36xx_hal_scan_offload_ind, %struct.wcn36xx_hal_scan_offload_ind* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wcn36xx_dbg(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.wcn36xx_hal_scan_offload_ind*, %struct.wcn36xx_hal_scan_offload_ind** %8, align 8
  %26 = getelementptr inbounds %struct.wcn36xx_hal_scan_offload_ind, %struct.wcn36xx_hal_scan_offload_ind* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %51 [
    i32 132, label %28
    i32 133, label %28
    i32 134, label %30
    i32 128, label %50
    i32 131, label %50
    i32 130, label %50
    i32 129, label %50
  ]

28:                                               ; preds = %19, %19
  %29 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %28
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %35 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %37 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %9, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %44 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %47 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ieee80211_scan_completed(i32 %48, %struct.cfg80211_scan_info* %9)
  br label %56

50:                                               ; preds = %19, %19, %19, %19
  br label %56

51:                                               ; preds = %19
  %52 = load %struct.wcn36xx_hal_scan_offload_ind*, %struct.wcn36xx_hal_scan_offload_ind** %8, align 8
  %53 = getelementptr inbounds %struct.wcn36xx_hal_scan_offload_ind, %struct.wcn36xx_hal_scan_offload_ind* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @wcn36xx_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %50, %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wcn36xx_warn(i8*, ...) #2

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
