; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_stop_p2p_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_stop_p2p_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wil6210_priv = type { i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"stop_p2p_device: entered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.wireless_dev*)* @wil_cfg80211_stop_p2p_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_cfg80211_stop_p2p_device(%struct.wiphy* %0, %struct.wireless_dev* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %4, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %7 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %6)
  store %struct.wil6210_priv* %7, %struct.wil6210_priv** %5, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %9 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %15 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %17 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %20 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %23 = call i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv* %22)
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %25 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %27 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %30 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wil_p2p_stop_radio_operations(%struct.wil6210_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
