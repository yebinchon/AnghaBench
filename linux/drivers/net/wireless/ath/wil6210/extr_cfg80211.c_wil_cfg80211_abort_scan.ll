; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_abort_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_abort_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wil6210_priv = type { i32, i32, %struct.wireless_dev*, %struct.wireless_dev* }
%struct.wil6210_vif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wireless_dev* }

@.str = private unnamed_addr constant [21 x i8] c"wdev=0x%p iftype=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"abort scan was called on the wrong iface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.wireless_dev*)* @wil_cfg80211_abort_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_cfg80211_abort_scan(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %7)
  store %struct.wil6210_priv* %8, %struct.wil6210_priv** %5, align 8
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %11 = call %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv* %9, %struct.wireless_dev* %10)
  store %struct.wil6210_vif* %11, %struct.wil6210_vif** %6, align 8
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.wireless_dev* %13, i32 %16)
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %22 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %25 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %31 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %32 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %34, align 8
  %36 = icmp ne %struct.wireless_dev* %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %39 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %61

40:                                               ; preds = %29
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %43 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %42, i32 0, i32 2
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %43, align 8
  %45 = icmp eq %struct.wireless_dev* %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %48 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %47, i32 0, i32 3
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %48, align 8
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %51 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %50, i32 0, i32 2
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %51, align 8
  %53 = icmp eq %struct.wireless_dev* %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %56 = call i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv* %55)
  br label %60

57:                                               ; preds = %46, %40
  %58 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %59 = call i32 @wil_abort_scan(%struct.wil6210_vif* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %37, %28
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %63 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %66 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  ret void
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @wdev_to_vif(%struct.wil6210_priv*, %struct.wireless_dev*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_abort_scan(%struct.wil6210_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
