; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32*, i32, i32 }

@WCN36XX_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mac stop\0A\00", align 1
@__const.wcn36xx_stop.scan_info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @wcn36xx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.wcn36xx*, %struct.wcn36xx** %6, align 8
  store %struct.wcn36xx* %7, %struct.wcn36xx** %3, align 8
  %8 = load i32, i32* @WCN36XX_DBG_MAC, align 4
  %9 = call i32 @wcn36xx_dbg(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %11 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %10, i32 0, i32 4
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %14 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %17 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = bitcast %struct.cfg80211_scan_info* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.wcn36xx_stop.scan_info to i8*), i64 4, i1 false)
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ieee80211_scan_completed(i32 %24, %struct.cfg80211_scan_info* %4)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %28 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %33 = call i32 @wcn36xx_debugfs_exit(%struct.wcn36xx* %32)
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %35 = call i32 @wcn36xx_smd_stop(%struct.wcn36xx* %34)
  %36 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %37 = call i32 @wcn36xx_dxe_deinit(%struct.wcn36xx* %36)
  %38 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %39 = call i32 @wcn36xx_smd_close(%struct.wcn36xx* %38)
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %41 = call i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx* %40)
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %43 = call i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx* %42)
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %45 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kfree(i32 %46)
  ret void
}

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wcn36xx_debugfs_exit(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_stop(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_deinit(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_smd_close(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_free_mem_pools(%struct.wcn36xx*) #1

declare dso_local i32 @wcn36xx_dxe_free_ctl_blks(%struct.wcn36xx*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
