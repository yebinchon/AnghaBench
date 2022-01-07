; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"disconnect: reason=%d, mid=%d\0A\00", align 1
@wil_vif_fwconnecting = common dso_local global i32 0, align 4
@wil_vif_fwconnected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Disconnect was called while disconnected\0A\00", align 1
@WMI_DISCONNECT_CMDID = common dso_local global i32 0, align 4
@WMI_DISCONNECT_EVENTID = common dso_local global i32 0, align 4
@WIL6210_DISCONNECT_TO_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"disconnect error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32)* @wil_cfg80211_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_disconnect(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wil6210_priv*, align 8
  %10 = alloca %struct.wil6210_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %12 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %11)
  store %struct.wil6210_priv* %12, %struct.wil6210_priv** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %13)
  store %struct.wil6210_vif* %14, %struct.wil6210_vif** %10, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %18 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i32, i32* @wil_vif_fwconnecting, align 4
  %22 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %23 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @wil_vif_fwconnected, align 4
  %29 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %30 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @test_bit(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %36 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %56

37:                                               ; preds = %27, %3
  %38 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %39 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %41 = load i32, i32* @WMI_DISCONNECT_CMDID, align 4
  %42 = load %struct.wil6210_vif*, %struct.wil6210_vif** %10, align 8
  %43 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @WMI_DISCONNECT_EVENTID, align 4
  %46 = load i32, i32* @WIL6210_DISCONNECT_TO_MS, align 4
  %47 = call i32 @wmi_call(%struct.wil6210_priv* %40, i32 %41, i32 %44, i32* null, i32 0, i32 %45, i32* null, i32 0, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_err(%struct.wil6210_priv* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %37
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %34
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wmi_call(%struct.wil6210_priv*, i32, i32, i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
