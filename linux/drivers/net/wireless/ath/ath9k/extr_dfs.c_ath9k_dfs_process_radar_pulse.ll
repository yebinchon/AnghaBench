; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_dfs_process_radar_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_dfs_process_radar_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.dfs_pattern_detector* }
%struct.dfs_pattern_detector = type { i32 (%struct.dfs_pattern_detector*, %struct.pulse_event*, i32*)* }
%struct.pulse_event = type { i32 }

@pulses_processed = common dso_local global i32 0, align 4
@radar_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.pulse_event*)* @ath9k_dfs_process_radar_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_dfs_process_radar_pulse(%struct.ath_softc* %0, %struct.pulse_event* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.pulse_event*, align 8
  %5 = alloca %struct.dfs_pattern_detector*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.pulse_event* %1, %struct.pulse_event** %4, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  %8 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %7, align 8
  store %struct.dfs_pattern_detector* %8, %struct.dfs_pattern_detector** %5, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = load i32, i32* @pulses_processed, align 4
  %11 = call i32 @DFS_STAT_INC(%struct.ath_softc* %9, i32 %10)
  %12 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %13 = icmp eq %struct.dfs_pattern_detector* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %17 = getelementptr inbounds %struct.dfs_pattern_detector, %struct.dfs_pattern_detector* %16, i32 0, i32 0
  %18 = load i32 (%struct.dfs_pattern_detector*, %struct.pulse_event*, i32*)*, i32 (%struct.dfs_pattern_detector*, %struct.pulse_event*, i32*)** %17, align 8
  %19 = load %struct.dfs_pattern_detector*, %struct.dfs_pattern_detector** %5, align 8
  %20 = load %struct.pulse_event*, %struct.pulse_event** %4, align 8
  %21 = call i32 %18(%struct.dfs_pattern_detector* %19, %struct.pulse_event* %20, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %32

24:                                               ; preds = %15
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = load i32, i32* @radar_detected, align 4
  %27 = call i32 @DFS_STAT_INC(%struct.ath_softc* %25, i32 %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ieee80211_radar_detected(i32 %30)
  br label %32

32:                                               ; preds = %24, %23, %14
  ret void
}

declare dso_local i32 @DFS_STAT_INC(%struct.ath_softc*, i32) #1

declare dso_local i32 @ieee80211_radar_detected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
