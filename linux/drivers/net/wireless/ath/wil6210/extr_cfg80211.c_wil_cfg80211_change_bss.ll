; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_bss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.bss_parameters = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"change_bss: ap_isolate MID %d, %d => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.bss_parameters*)* @wil_cfg80211_change_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_change_bss(%struct.wiphy* %0, %struct.net_device* %1, %struct.bss_parameters* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bss_parameters*, align 8
  %7 = alloca %struct.wil6210_priv*, align 8
  %8 = alloca %struct.wil6210_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.bss_parameters* %2, %struct.bss_parameters** %6, align 8
  %9 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %10 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %9)
  store %struct.wil6210_priv* %10, %struct.wil6210_priv** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %11)
  store %struct.wil6210_vif* %12, %struct.wil6210_vif** %8, align 8
  %13 = load %struct.bss_parameters*, %struct.bss_parameters** %6, align 8
  %14 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %7, align 8
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %20 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %23 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bss_parameters*, %struct.bss_parameters** %6, align 8
  %26 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = load %struct.bss_parameters*, %struct.bss_parameters** %6, align 8
  %30 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %33 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %17, %3
  ret i32 0
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
