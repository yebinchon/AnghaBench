; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_cancel_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_cancel_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@SCAN_OFFLOAD = common dso_local global i32 0, align 4
@__const.wcn36xx_cancel_hw_scan.scan_info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wcn36xx_cancel_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_cancel_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wcn36xx*, align 8
  %6 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  store %struct.wcn36xx* %9, %struct.wcn36xx** %5, align 8
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 4
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 4
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %19 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCAN_OFFLOAD, align 4
  %22 = call i64 @get_feat_caps(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %26 = call i32 @wcn36xx_smd_stop_hw_scan(%struct.wcn36xx* %25)
  br label %36

27:                                               ; preds = %2
  %28 = bitcast %struct.cfg80211_scan_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.wcn36xx_cancel_hw_scan.scan_info to i8*), i64 4, i1 false)
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 2
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %5, align 8
  %33 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ieee80211_scan_completed(i32 %34, %struct.cfg80211_scan_info* %6)
  br label %36

36:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @get_feat_caps(i32, i32) #1

declare dso_local i32 @wcn36xx_smd_stop_hw_scan(%struct.wcn36xx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
