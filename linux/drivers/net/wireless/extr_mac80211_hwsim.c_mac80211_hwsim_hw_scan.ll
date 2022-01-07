; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32, i32, i32, i32, i64, %struct.ieee80211_vif*, %struct.cfg80211_scan_request*, i64 }
%struct.cfg80211_scan_request = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }

@EBUSY = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"hwsim hw_scan request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @mac80211_hwsim_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.mac80211_hwsim_data*, align 8
  %9 = alloca %struct.cfg80211_scan_request*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 1
  %12 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %11, align 8
  store %struct.mac80211_hwsim_data* %12, %struct.mac80211_hwsim_data** %8, align 8
  %13 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %13, i32 0, i32 0
  store %struct.cfg80211_scan_request* %14, %struct.cfg80211_scan_request** %9, align 8
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %16 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %19 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %24 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %23, i32 0, i32 7
  %25 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %24, align 8
  %26 = icmp ne %struct.cfg80211_scan_request* %25, null
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i1 [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %34 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %93

38:                                               ; preds = %27
  %39 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %40 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %41 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %40, i32 0, i32 7
  store %struct.cfg80211_scan_request* %39, %struct.cfg80211_scan_request** %41, align 8
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %43 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %44 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %43, i32 0, i32 6
  store %struct.ieee80211_vif* %42, %struct.ieee80211_vif** %44, align 8
  %45 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %46 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %9, align 8
  %48 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %38
  %54 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %55 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_random_mask_addr(i32 %56, i32 %60, i32 %64)
  br label %75

66:                                               ; preds = %38
  %67 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %68 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %53
  %76 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %77 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memset(i32 %78, i32 0, i32 4)
  %80 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %81 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @wiphy_dbg(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %88 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %8, align 8
  %91 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %90, i32 0, i32 0
  %92 = call i32 @ieee80211_queue_delayed_work(i32 %89, i32* %91, i32 0)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %75, %32
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_random_mask_addr(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wiphy_dbg(i32, i8*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
