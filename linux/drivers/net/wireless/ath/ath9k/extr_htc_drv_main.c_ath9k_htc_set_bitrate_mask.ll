; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_bitrate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_bitrate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_rate_mask = type { i64, i8*, i32 }
%struct.ath9k_htc_vif = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WMI_BITRATE_MASK_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Unable to set 2G rate mask for interface at idx: %d\0A\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to set 5G rate mask for interface at idx: %d\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Set bitrate masks: 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_bitrate_mask*)* @ath9k_htc_set_bitrate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_set_bitrate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_bitrate_mask* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %7 = alloca %struct.ath9k_htc_priv*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_htc_target_rate_mask, align 8
  %10 = alloca %struct.ath9k_htc_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %6, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %14, align 8
  store %struct.ath9k_htc_priv* %15, %struct.ath9k_htc_priv** %7, align 8
  %16 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %7, align 8
  %17 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ath_common* @ath9k_hw_common(i32 %18)
  store %struct.ath_common* %19, %struct.ath_common** %8, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %24, %struct.ath9k_htc_vif** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = call i32 @memset(%struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 24)
  %26 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, %struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %31 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, %struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_be32(i32 %38)
  %40 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, %struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @WMI_BITRATE_MASK_CMDID, align 4
  %42 = call i32 @WMI_CMD_BUF(i32 %41, %struct.ath9k_htc_target_rate_mask* %9)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %3
  %46 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %47 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %48 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ath_err(%struct.ath_common* %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %91

51:                                               ; preds = %3
  %52 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %53 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, %struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, %struct.ath9k_htc_target_rate_mask* %9, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @WMI_BITRATE_MASK_CMDID, align 4
  %64 = call i32 @WMI_CMD_BUF(i32 %63, %struct.ath9k_htc_target_rate_mask* %9)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %51
  %68 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %69 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %10, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ath_err(%struct.ath_common* %68, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %91

73:                                               ; preds = %51
  %74 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %75 = load i32, i32* @CONFIG, align 4
  %76 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %77 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %6, align 8
  %84 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ath_dbg(%struct.ath_common* %74, i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %89)
  br label %91

91:                                               ; preds = %73, %67, %45
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_rate_mask*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_rate_mask*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
