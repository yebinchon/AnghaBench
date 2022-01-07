; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_plans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_sched_scan_set_plans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wmi_start_sched_scan_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }

@WMI_MAX_PLANS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"too many plans (%d), use first %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.wmi_start_sched_scan_cmd*, %struct.cfg80211_sched_scan_plan*, i32)* @wmi_sched_scan_set_plans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wmi_sched_scan_set_plans(%struct.wil6210_priv* %0, %struct.wmi_start_sched_scan_cmd* %1, %struct.cfg80211_sched_scan_plan* %2, i32 %3) #0 {
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wmi_start_sched_scan_cmd*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_plan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cfg80211_sched_scan_plan*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wmi_start_sched_scan_cmd* %1, %struct.wmi_start_sched_scan_cmd** %6, align 8
  store %struct.cfg80211_sched_scan_plan* %2, %struct.cfg80211_sched_scan_plan** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @WMI_MAX_PLANS_NUM, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @WMI_MAX_PLANS_NUM, align 4
  %18 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @WMI_MAX_PLANS_NUM, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %14, %4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %26, i64 %28
  store %struct.cfg80211_sched_scan_plan* %29, %struct.cfg80211_sched_scan_plan** %10, align 8
  %30 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %10, align 8
  %31 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i8* %33, i8** %40, align 8
  %41 = load %struct.cfg80211_sched_scan_plan*, %struct.cfg80211_sched_scan_plan** %10, align 8
  %42 = getelementptr inbounds %struct.cfg80211_sched_scan_plan, %struct.cfg80211_sched_scan_plan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.wmi_start_sched_scan_cmd*, %struct.wmi_start_sched_scan_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.wmi_start_sched_scan_cmd, %struct.wmi_start_sched_scan_cmd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %44, i8** %51, align 8
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %21

55:                                               ; preds = %21
  ret void
}

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
