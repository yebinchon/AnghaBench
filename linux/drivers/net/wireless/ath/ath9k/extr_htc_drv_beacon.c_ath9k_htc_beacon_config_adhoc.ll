; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_adhoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_beacon.c_ath9k_htc_beacon_config_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.ath_hw* }
%struct.ath_hw = type { i64 }
%struct.ath_beacon_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath9k_htc_priv*, %struct.ath_beacon_config*)* @ath9k_htc_beacon_config_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_beacon_config_adhoc(%struct.ath9k_htc_priv* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 0
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %13 = call i32 @ath9k_cmn_beacon_config_adhoc(%struct.ath_hw* %11, %struct.ath_beacon_config* %12)
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %15 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %16 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %17 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ath9k_htc_beacon_init(%struct.ath9k_htc_priv* %14, %struct.ath_beacon_config* %15, i32 %18)
  ret void
}

declare dso_local i32 @ath9k_cmn_beacon_config_adhoc(%struct.ath_hw*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_htc_beacon_init(%struct.ath9k_htc_priv*, %struct.ath_beacon_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
