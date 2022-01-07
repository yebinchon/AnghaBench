; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_adhoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_beacon_config_adhoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hw* }
%struct.ath_hw = type { i32 }
%struct.ath_beacon_config = type { i64, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH_OP_BEACONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_beacon_config*)* @ath9k_beacon_config_adhoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_beacon_config_adhoc(%struct.ath_softc* %0, %struct.ath_beacon_config* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_beacon_config* %1, %struct.ath_beacon_config** %4, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 0
  %9 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  store %struct.ath_hw* %9, %struct.ath_hw** %5, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %6, align 8
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = call i32 @ath9k_reset_beacon_status(%struct.ath_softc* %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %15 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %16 = call i32 @ath9k_cmn_beacon_config_adhoc(%struct.ath_hw* %14, %struct.ath_beacon_config* %15)
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %19 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %22 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ath9k_beacon_init(%struct.ath_softc* %17, i32 %20, i32 %23)
  %25 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %26 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %31 = getelementptr inbounds %struct.ath_beacon_config, %struct.ath_beacon_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @ATH_OP_BEACONS, align 4
  %36 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %37 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29, %2
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_reset_beacon_status(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_cmn_beacon_config_adhoc(%struct.ath_hw*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_beacon_init(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
