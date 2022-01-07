; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_tx99_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_tx99.c_ath9k_tx99_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, %struct.ath_hw*, i32*, i32 }
%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@XMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TX99 stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath9k_tx99_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_tx99_stop(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_common*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  store %struct.ath_hw* %7, %struct.ath_hw** %3, align 8
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %11 = call i32 @ath_drain_all_txq(%struct.ath_softc* %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %13 = call i32 @ath_startrecv(%struct.ath_softc* %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = call i32 @ath9k_hw_set_interrupts(%struct.ath_hw* %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i32 @ath9k_hw_enable_interrupts(%struct.ath_hw* %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ieee80211_wake_queues(i32 %20)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree_skb(i32* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %30, i32 0, i32 1
  %32 = load %struct.ath_hw*, %struct.ath_hw** %31, align 8
  %33 = call i32 @ath9k_hw_tx99_stop(%struct.ath_hw* %32)
  %34 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %35 = load i32, i32* @XMIT, align 4
  %36 = call i32 @ath_dbg(%struct.ath_common* %34, i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_drain_all_txq(%struct.ath_softc*) #1

declare dso_local i32 @ath_startrecv(%struct.ath_softc*) #1

declare dso_local i32 @ath9k_hw_set_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_enable_interrupts(%struct.ath_hw*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @kfree_skb(i32*) #1

declare dso_local i32 @ath9k_hw_tx99_stop(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
