; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_check_beacon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_check_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32, i32, i32, %struct.TYPE_2__*, %struct.ath_beacon_config }
%struct.TYPE_2__ = type { i64 }
%struct.ath_beacon_config = type { i64 }
%struct.ieee80211_vif = type { i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i64 }
%struct.ath_common = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Changing beacon interval of multiple AP interfaces !\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"HW in AP mode, cannot set STA beacon parameters\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_htc_beacon_iter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Beacon already configured for a station interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*)* @ath9k_htc_check_beacon_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_check_beacon_config(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath9k_htc_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath_beacon_config*, align 8
  %8 = alloca %struct.ieee80211_bss_conf*, align 8
  %9 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 4
  store %struct.ath_beacon_config* %15, %struct.ath_beacon_config** %7, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %17, %struct.ieee80211_bss_conf** %8, align 8
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %2
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %7, align 8
  %38 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %46 = load i32, i32* @CONFIG, align 4
  %47 = call i32 @ath_dbg(%struct.ath_common* %45, i32 %46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

48:                                               ; preds = %36, %30, %25, %2
  %49 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %50 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %61 = load i32, i32* @CONFIG, align 4
  %62 = call i32 @ath_dbg(%struct.ath_common* %60, i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

63:                                               ; preds = %53, %48
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %63
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %73 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %87 = load i32, i32* @ath9k_htc_beacon_iter, align 4
  %88 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %85, i32 %86, i32 %87, i32* %9)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %93 = load i32, i32* @CONFIG, align 4
  %94 = call i32 @ath_dbg(%struct.ath_common* %92, i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %97

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %76, %71, %63
  store i32 1, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %91, %59, %44
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
