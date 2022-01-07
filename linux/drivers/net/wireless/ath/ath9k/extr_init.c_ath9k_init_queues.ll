; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__**, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@ATH9K_TX_QUEUE_CAB = common dso_local global i32 0, align 4
@ATH9K_TX_QUEUE_UAPSD = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ATH9K_TX_QUEUE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath9k_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_queues(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @ath9k_hw_beaconq_setup(i32 %6)
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = load i32, i32* @ATH9K_TX_QUEUE_CAB, align 4
  %13 = call i8* @ath_txq_setup(%struct.ath_softc* %11, i32 %12, i32 0)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %18 = call i32 @ath_cabq_update(%struct.ath_softc* %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = load i32, i32* @ATH9K_TX_QUEUE_UAPSD, align 4
  %21 = call i8* @ath_txq_setup(%struct.ath_softc* %19, i32 %20, i32 0)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %52, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = load i32, i32* @ATH9K_TX_QUEUE_DATA, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @ath_txq_setup(%struct.ath_softc* %30, i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_4__*
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %42, i32* %51, align 4
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %25

55:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @ath9k_hw_beaconq_setup(i32) #1

declare dso_local i8* @ath_txq_setup(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ath_cabq_update(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
