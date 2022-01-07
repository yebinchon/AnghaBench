; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_softc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_init.c_ath9k_deinit_softc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32* }

@ATH9K_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_deinit_softc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_deinit_softc(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %5 = call i32 @ath9k_deinit_p2p(%struct.ath_softc* %4)
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = call i32 @ath9k_deinit_btcoex(%struct.ath_softc* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ATH9K_NUM_TX_QUEUES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ATH_TXQ_SETUP(%struct.ath_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @ath_tx_cleanupq(%struct.ath_softc* %18, i32* %25)
  br label %27

27:                                               ; preds = %17, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 2
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ath9k_hw_deinit(i32 %37)
  %39 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %47, align 8
  %49 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 %48(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %55 = call i32 @ath9k_eeprom_release(%struct.ath_softc* %54)
  ret void
}

declare dso_local i32 @ath9k_deinit_p2p(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_deinit_btcoex(%struct.ath_softc*) #1

declare dso_local i64 @ATH_TXQ_SETUP(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_tx_cleanupq(%struct.ath_softc*, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ath9k_hw_deinit(i32) #1

declare dso_local i32 @ath9k_eeprom_release(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
