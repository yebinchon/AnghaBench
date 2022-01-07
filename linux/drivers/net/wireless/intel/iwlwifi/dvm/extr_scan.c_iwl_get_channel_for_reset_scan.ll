; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_get_channel_for_reset_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_get_channel_for_reset_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_scan_channel = type { i32, i32, i8*, i8*, i32, i8* }
%struct.ieee80211_supported_band = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid band\0A\00", align 1
@SCAN_CHANNEL_TYPE_PASSIVE = common dso_local global i32 0, align 4
@IWL_RADIO_RESET_DWELL_TIME = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"no valid channel found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_vif*, i32, %struct.iwl_scan_channel*)* @iwl_get_channel_for_reset_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_get_channel_for_reset_scan(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.iwl_scan_channel* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_scan_channel*, align 8
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.iwl_scan_channel* %3, %struct.iwl_scan_channel** %9, align 8
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ieee80211_supported_band* @iwl_get_hw_mode(%struct.iwl_priv* %12, i32 %13)
  store %struct.ieee80211_supported_band* %14, %struct.ieee80211_supported_band** %10, align 8
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %16 = icmp ne %struct.ieee80211_supported_band* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %19 = call i32 @IWL_ERR(%struct.iwl_priv* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %57

20:                                               ; preds = %4
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @iwl_get_single_channel_number(%struct.iwl_priv* %21, i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i64, i64* %11, align 8
  %28 = call i8* @cpu_to_le16(i64 %27)
  %29 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %30 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @SCAN_CHANNEL_TYPE_PASSIVE, align 4
  %32 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @IWL_RADIO_RESET_DWELL_TIME, align 8
  %35 = call i8* @cpu_to_le16(i64 %34)
  %36 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %37 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @IWL_RADIO_RESET_DWELL_TIME, align 8
  %39 = call i8* @cpu_to_le16(i64 %38)
  %40 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %41 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %43 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %42, i32 0, i32 0
  store i32 110, i32* %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %49 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %48, i32 0, i32 1
  store i32 59, i32* %49, align 4
  br label %53

50:                                               ; preds = %26
  %51 = load %struct.iwl_scan_channel*, %struct.iwl_scan_channel** %9, align 8
  %52 = getelementptr inbounds %struct.iwl_scan_channel, %struct.iwl_scan_channel* %51, i32 0, i32 1
  store i32 40, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  store i32 1, i32* %5, align 4
  br label %57

54:                                               ; preds = %20
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %56 = call i32 @IWL_ERR(%struct.iwl_priv* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %53, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.ieee80211_supported_band* @iwl_get_hw_mode(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @iwl_get_single_channel_number(%struct.iwl_priv*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
