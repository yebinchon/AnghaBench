; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c___ath6kl_cfg80211_sscan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c___ath6kl_cfg80211_sscan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i64, i32 }

@SCHED_SCANNING = common dso_local global i32 0, align 4
@ATH6KL_STATE_RECOVERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*)* @__ath6kl_cfg80211_sscan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath6kl_cfg80211_sscan_stop(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  %5 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %6 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %5, i32 0, i32 3
  %7 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  store %struct.ath6kl* %7, %struct.ath6kl** %4, align 8
  %8 = load i32, i32* @SCHED_SCANNING, align 4
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 2
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 1
  %17 = call i32 @del_timer_sync(i32* %16)
  %18 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATH6KL_STATE_RECOVERY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %32

24:                                               ; preds = %14
  %25 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %29 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath6kl_wmi_enable_sched_scan_cmd(i32 %27, i32 %30, i32 0)
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %23, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath6kl_wmi_enable_sched_scan_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
