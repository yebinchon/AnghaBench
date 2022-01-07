; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_debug_stat_ant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_ath9k_debug_stat_ant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ath_antenna_stats* }
%struct.ath_antenna_stats = type { i32, i32* }
%struct.ath_hw_antcomb_conf = type { i64, i64 }

@ANT_MAIN = common dso_local global i64 0, align 8
@ANT_ALT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_debug_stat_ant(%struct.ath_softc* %0, %struct.ath_hw_antcomb_conf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.ath_hw_antcomb_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_antenna_stats*, align 8
  %10 = alloca %struct.ath_antenna_stats*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.ath_hw_antcomb_conf* %1, %struct.ath_hw_antcomb_conf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %14, align 8
  %16 = load i64, i64* @ANT_MAIN, align 8
  %17 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %15, i64 %16
  store %struct.ath_antenna_stats* %17, %struct.ath_antenna_stats** %9, align 8
  %18 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %21, align 8
  %23 = load i64, i64* @ANT_ALT, align 8
  %24 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %22, i64 %23
  store %struct.ath_antenna_stats* %24, %struct.ath_antenna_stats** %10, align 8
  %25 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %9, align 8
  %26 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %29 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %10, align 8
  %35 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ath_hw_antcomb_conf*, %struct.ath_hw_antcomb_conf** %6, align 8
  %38 = getelementptr inbounds %struct.ath_hw_antcomb_conf, %struct.ath_hw_antcomb_conf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %9, align 8
  %45 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ath_antenna_stats*, %struct.ath_antenna_stats** %10, align 8
  %48 = getelementptr inbounds %struct.ath_antenna_stats, %struct.ath_antenna_stats* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
