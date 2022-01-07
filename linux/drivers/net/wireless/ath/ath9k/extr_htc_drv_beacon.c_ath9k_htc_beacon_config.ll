; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_beacon_config, i32 }
%struct.ath_beacon_config = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32, i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i32 }

@ATH_DEFAULT_BMISS_LIMIT = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported beaconing mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_htc_beacon_config(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca %struct.ath_beacon_config*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca %struct.ath9k_htc_vif*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ath_common* @ath9k_hw_common(i32 %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %13, i32 0, i32 0
  store %struct.ath_beacon_config* %14, %struct.ath_beacon_config** %6, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 2
  store %struct.ieee80211_bss_conf* %16, %struct.ieee80211_bss_conf** %7, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %20, %struct.ath9k_htc_vif** %8, align 8
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %23 = call i32 @ath9k_htc_check_beacon_config(%struct.ath9k_htc_priv* %21, %struct.ieee80211_vif* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %31 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %33 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %38 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %37, i32 0, i32 0
  store i32 100, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %44 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ATH_DEFAULT_BMISS_LIMIT, align 4
  %46 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %47 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %51 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %69 [
    i32 128, label %55
    i32 131, label %61
    i32 129, label %65
    i32 130, label %65
  ]

55:                                               ; preds = %39
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %57 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %58 = call i32 @ath9k_htc_beacon_config_sta(%struct.ath9k_htc_priv* %56, %struct.ath_beacon_config* %57)
  %59 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %8, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %73

61:                                               ; preds = %39
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %63 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %64 = call i32 @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv* %62, %struct.ath_beacon_config* %63)
  br label %73

65:                                               ; preds = %39, %39
  %66 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %67 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %6, align 8
  %68 = call i32 @ath9k_htc_beacon_config_ap(%struct.ath9k_htc_priv* %66, %struct.ath_beacon_config* %67)
  br label %73

69:                                               ; preds = %39
  %70 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %71 = load i32, i32* @CONFIG, align 4
  %72 = call i32 @ath_dbg(%struct.ath_common* %70, i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %25, %69, %65, %61, %55
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ath9k_htc_check_beacon_config(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_htc_beacon_config_sta(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_htc_beacon_config_ap(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
