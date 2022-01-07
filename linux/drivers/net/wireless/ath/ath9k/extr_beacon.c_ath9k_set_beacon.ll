; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_set_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_beacon.c_ath9k_set_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ath_beacon_config }
%struct.ath_beacon_config = type { i32 }
%struct.ath_common = type { i32 }

@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported beaconing mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_set_beacon(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca %struct.ath_beacon_config*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__* %7)
  store %struct.ath_common* %8, %struct.ath_common** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ath_beacon_config* %12, %struct.ath_beacon_config** %4, align 8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %32 [
    i32 130, label %18
    i32 129, label %18
    i32 131, label %22
    i32 128, label %26
  ]

18:                                               ; preds = %1, %1
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %21 = call i32 @ath9k_beacon_config_ap(%struct.ath_softc* %19, %struct.ath_beacon_config* %20)
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %25 = call i32 @ath9k_beacon_config_adhoc(%struct.ath_softc* %23, %struct.ath_beacon_config* %24)
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load %struct.ath_beacon_config*, %struct.ath_beacon_config** %4, align 8
  %31 = call i32 @ath9k_beacon_config_sta(%struct.TYPE_5__* %29, %struct.ath_beacon_config* %30)
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %34 = load i32, i32* @CONFIG, align 4
  %35 = call i32 @ath_dbg(%struct.ath_common* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %26, %22, %18
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__*) #1

declare dso_local i32 @ath9k_beacon_config_ap(%struct.ath_softc*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_beacon_config_adhoc(%struct.ath_softc*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath9k_beacon_config_sta(%struct.TYPE_5__*, %struct.ath_beacon_config*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
