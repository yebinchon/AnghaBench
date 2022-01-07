; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_vif_prepare_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_vif_prepare_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wireless_dev = type { i64 }
%struct.net_device = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to stop AP, status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_vif_prepare_stop(%struct.wil6210_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_vif*, align 8
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %3, align 8
  %8 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %9 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %8)
  store %struct.wil6210_priv* %9, %struct.wil6210_priv** %4, align 8
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %11 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %10)
  store %struct.wireless_dev* %11, %struct.wireless_dev** %5, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %20 = call %struct.net_device* @vif_to_ndev(%struct.wil6210_vif* %19)
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i64 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %26 = call i32 @wmi_pcp_stop(%struct.wil6210_vif* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @wil_info(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.wil6210_vif*, %struct.wil6210_vif** %3, align 8
  %35 = call i32 @wil_bcast_fini(%struct.wil6210_vif* %34)
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netif_carrier_off(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %33, %18
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local %struct.net_device* @vif_to_ndev(%struct.wil6210_vif*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @wmi_pcp_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_bcast_fini(%struct.wil6210_vif*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
