; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_cfg.c_orinoco_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32 }
%struct.orinoco_private = type { %struct.cfg80211_scan_request* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @orinoco_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.orinoco_private*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %8)
  store %struct.orinoco_private* %9, %struct.orinoco_private** %6, align 8
  %10 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %11 = icmp ne %struct.cfg80211_scan_request* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 0
  %18 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %17, align 8
  %19 = icmp ne %struct.cfg80211_scan_request* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %22 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %21, i32 0, i32 0
  %23 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %22, align 8
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %25 = icmp ne %struct.cfg80211_scan_request* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %20, %15
  %30 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %31 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %32 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %31, i32 0, i32 0
  store %struct.cfg80211_scan_request* %30, %struct.cfg80211_scan_request** %32, align 8
  %33 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %34 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %35 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @orinoco_hw_trigger_scan(%struct.orinoco_private* %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.orinoco_private*, %struct.orinoco_private** %6, align 8
  %42 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %41, i32 0, i32 0
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %42, align 8
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %26, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @orinoco_hw_trigger_scan(%struct.orinoco_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
