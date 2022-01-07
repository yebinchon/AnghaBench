; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_cancel_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_cancel_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32*, i32*, i32*, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@__const.mac80211_hwsim_cancel_hw_scan.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@.str = private unnamed_addr constant [22 x i8] c"hwsim cancel_hw_scan\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mac80211_hwsim_cancel_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_cancel_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.mac80211_hwsim_data*, align 8
  %6 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  store %struct.mac80211_hwsim_data* %9, %struct.mac80211_hwsim_data** %5, align 8
  %10 = bitcast %struct.cfg80211_scan_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.mac80211_hwsim_cancel_hw_scan.info to i8*), i64 4, i1 false)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wiphy_dbg(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %16 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %15, i32 0, i32 5
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %19 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %22 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ieee80211_scan_completed(i32 %23, %struct.cfg80211_scan_info* %6)
  %25 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %26 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %28 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %30 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  %32 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wiphy_dbg(i32, i8*) #2

declare dso_local i32 @cancel_delayed_work_sync(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
