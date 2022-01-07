; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_wowlan = type { i32 }
%struct.wil6210_priv = type { i32, i32, i32 }

@wil_status_suspended = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"trying to suspend while suspended\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"suspending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_wowlan*)* @wil_cfg80211_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_suspend(%struct.wiphy* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %8 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %9 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %6, align 8
  %10 = load i32, i32* @wil_status_suspended, align 4
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %12 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %18 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %21 = call i32 @wil_can_suspend(%struct.wil6210_priv* %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %44

25:                                               ; preds = %19
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %27 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %32 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %35 = call i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv* %34)
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = call i32 @wil_abort_scan_all_vifs(%struct.wil6210_priv* %36, i32 1)
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %39 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %25, %24
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wil_can_suspend(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_abort_scan_all_vifs(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
