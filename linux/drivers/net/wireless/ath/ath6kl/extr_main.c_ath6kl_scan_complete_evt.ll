; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_scan_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_scan_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, i32, %struct.ath6kl* }
%struct.ath6kl = type { i32, i32 }

@WMI_SCAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@CLEAR_BSSFILTER_ON_BEACON = common dso_local global i32 0, align 4
@NONE_BSS_FILTER = common dso_local global i32 0, align 4
@ATH6KL_DBG_WLAN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"scan complete: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_scan_complete_evt(%struct.ath6kl_vif* %0, i32 %1) #0 {
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %7, i32 0, i32 2
  %9 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  store %struct.ath6kl* %9, %struct.ath6kl** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @WMI_SCAN_STATUS_SUCCESS, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ath6kl_cfg80211_scan_complete_event(%struct.ath6kl_vif* %15, i32 %16)
  %18 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @CLEAR_BSSFILTER_ON_BEACON, align 4
  %24 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %24, i32 0, i32 1
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  %27 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NONE_BSS_FILTER, align 4
  %34 = call i32 @ath6kl_wmi_bssfilter_cmd(i32 %29, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %22, %14
  %36 = load i32, i32* @ATH6KL_DBG_WLAN_CFG, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ath6kl_dbg(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @ath6kl_cfg80211_scan_complete_event(%struct.ath6kl_vif*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
