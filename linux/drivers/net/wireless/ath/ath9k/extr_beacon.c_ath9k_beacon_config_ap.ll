; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i32, i32 }

@ATH_BCBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_beacon_config*)* @ath9k_beacon_config_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_ap(%struct.ath_softc* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 0
  %8 = load %struct.ath_hw*, %struct.ath_hw** %7, align 8
  store %struct.ath_hw* %8, %struct.ath_hw** %5, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %10 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %11 = load i32, i32* @ATH_BCBUF, align 4
  %12 = call i32 @ath9k_cmn_beacon_config_ap(%struct.ath_hw* %9, %struct.ath_beacon_config* %10, i32 %11)
  %13 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %14 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %15 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %18 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ath9k_beacon_init(%struct.ath_softc* %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @ath9k_cmn_beacon_config_ap(%struct.ath_hw*, %struct.ath_beacon_config*, i32) #1

declare dso_local i32 @ath9k_beacon_init(%struct.ath_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
