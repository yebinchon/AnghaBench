; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_del_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wil_sta_info = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"del_key: %pM %s[%d]\0A\00", align 1
@key_usage_str = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Not connected, %pM %s[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32, i32*)* @wil_cfg80211_del_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_del_key(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wil6210_vif*, align 8
  %12 = alloca %struct.wil6210_priv*, align 8
  %13 = alloca %struct.wireless_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wil_sta_info*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %16)
  store %struct.wil6210_vif* %17, %struct.wil6210_vif** %11, align 8
  %18 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %19 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %18)
  store %struct.wil6210_priv* %19, %struct.wil6210_priv** %12, align 8
  %20 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %21 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %20)
  store %struct.wireless_dev* %21, %struct.wireless_dev** %13, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @wil_detect_key_usage(%struct.wireless_dev* %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %27 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call %struct.wil_sta_info* @wil_find_sta_by_key_usage(%struct.wil6210_priv* %25, i32 %28, i32 %29, i32* %30)
  store %struct.wil_sta_info* %31, %struct.wil_sta_info** %15, align 8
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** @key_usage_str, align 8
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %33, i32 %38, i32 %39)
  %41 = load %struct.wil_sta_info*, %struct.wil_sta_info** %15, align 8
  %42 = call i64 @IS_ERR(%struct.wil_sta_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %5
  %45 = load %struct.wil6210_priv*, %struct.wil6210_priv** %12, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** @key_usage_str, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @wil_info(%struct.wil6210_priv* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %46, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %5
  %55 = load %struct.wil_sta_info*, %struct.wil_sta_info** %15, align 8
  %56 = call i32 @IS_ERR_OR_NULL(%struct.wil_sta_info* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.wil_sta_info*, %struct.wil_sta_info** %15, align 8
  %62 = call i32 @wil_del_rx_key(i32 %59, i32 %60, %struct.wil_sta_info* %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @wmi_del_cipher_key(%struct.wil6210_vif* %64, i32 %65, i32* %66, i32 %67)
  ret i32 %68
}

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_detect_key_usage(%struct.wireless_dev*, i32) #1

declare dso_local %struct.wil_sta_info* @wil_find_sta_by_key_usage(%struct.wil6210_priv*, i32, i32, i32*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wil_sta_info*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32*, i32, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.wil_sta_info*) #1

declare dso_local i32 @wil_del_rx_key(i32, i32, %struct.wil_sta_info*) #1

declare dso_local i32 @wmi_del_cipher_key(%struct.wil6210_vif*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
