; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@BAR_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_release(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_pci*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %6 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %5)
  store %struct.ath10k_pci* %6, %struct.ath10k_pci** %3, align 8
  %7 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = load %struct.ath10k_pci*, %struct.ath10k_pci** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pci_iounmap(%struct.pci_dev* %10, i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @BAR_NUM, align 4
  %17 = call i32 @pci_release_region(%struct.pci_dev* %15, i32 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_clear_master(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pci_disable_device(%struct.pci_dev* %20)
  ret void
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
