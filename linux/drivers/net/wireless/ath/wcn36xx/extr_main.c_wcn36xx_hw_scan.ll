; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_main.c_wcn36xx_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32, i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SCAN_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @wcn36xx_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_scan_request*, align 8
  %8 = alloca %struct.wcn36xx*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %7, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wcn36xx*, %struct.wcn36xx** %10, align 8
  store %struct.wcn36xx* %11, %struct.wcn36xx** %8, align 8
  %12 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %13 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %21 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %20, i32 0, i32 3
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %28, i32 0, i32 0
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %31 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %33 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %32, i32 0, i32 3
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %36 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SCAN_OFFLOAD, align 4
  %39 = call i32 @get_feat_caps(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %43 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %42, i32 0, i32 1
  %44 = call i32 @schedule_work(i32* %43)
  store i32 0, i32* %4, align 4
  br label %51

45:                                               ; preds = %25
  %46 = load %struct.wcn36xx*, %struct.wcn36xx** %8, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %48, i32 0, i32 0
  %50 = call i32 @wcn36xx_smd_start_hw_scan(%struct.wcn36xx* %46, %struct.ieee80211_vif* %47, i32* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %41, %19
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @get_feat_caps(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wcn36xx_smd_start_hw_scan(%struct.wcn36xx*, %struct.ieee80211_vif*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
