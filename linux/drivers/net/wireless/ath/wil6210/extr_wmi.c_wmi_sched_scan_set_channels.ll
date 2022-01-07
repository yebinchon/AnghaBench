; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wmi_start_sched_scan_cmd = type { i32, i64* }
%struct.ieee80211_channel = type { i64 }

@WMI_MAX_CHANNEL_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"too many channels (%d), use first %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wmi_start_sched_scan_cmd*, i32, %struct.ieee80211_channel**)* @wmi_sched_scan_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_sched_scan_set_channels(%struct.wil6210_priv* %0, %struct.wmi_start_sched_scan_cmd* %1, i32 %2, %struct.ieee80211_channel** %3) #0 {
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wmi_start_sched_scan_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wmi_start_sched_scan_cmd* %1, %struct.wmi_start_sched_scan_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_channel** %3, %struct.ieee80211_channel*** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @WMI_MAX_CHANNEL_NUM, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WMI_MAX_CHANNEL_NUM, align 4
  %18 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @WMI_MAX_CHANNEL_NUM, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %44, %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %29, i64 %31
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %32, align 8
  store %struct.ieee80211_channel* %33, %struct.ieee80211_channel** %10, align 8
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %24

47:                                               ; preds = %24
  ret void
}

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
