; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pci.c_ath5k_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_pci.c_ath5k_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ath5k_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ath5k_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.ieee80211_hw* %6, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %8, align 8
  store %struct.ath5k_hw* %9, %struct.ath5k_hw** %4, align 8
  %10 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %11 = call i32 @ath5k_deinit_ah(%struct.ath5k_hw* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %14 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_iounmap(%struct.pci_dev* %12, i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_release_region(%struct.pci_dev* %17, i32 0)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_disable_device(%struct.pci_dev* %19)
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %21)
  ret void
}

declare dso_local %struct.ieee80211_hw* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @ath5k_deinit_ah(%struct.ath5k_hw*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
