; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@is_ath9k_unloaded = common dso_local global i32 0, align 4
@AH_UNPLUGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ath_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath_softc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath_softc*, %struct.ath_softc** %8, align 8
  store %struct.ath_softc* %9, %struct.ath_softc** %4, align 8
  %10 = load i32, i32* @is_ath9k_unloaded, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AH_UNPLUGGED, align 4
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %13
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = call i32 @ath9k_deinit_device(%struct.ath_softc* %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.ath_softc* %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ieee80211_free_hw(i32 %30)
  ret void
}

declare dso_local %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ath9k_deinit_device(%struct.ath_softc*) #1

declare dso_local i32 @free_irq(i32, %struct.ath_softc*) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
