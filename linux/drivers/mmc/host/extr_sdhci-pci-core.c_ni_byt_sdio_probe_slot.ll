; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_ni_byt_sdio_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_ni_byt_sdio_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @ni_byt_sdio_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_byt_sdio_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %3, align 8
  %5 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %6 = call i32 @byt_probe_slot(%struct.sdhci_pci_slot* %5)
  %7 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %8 = call i32 @ni_set_max_freq(%struct.sdhci_pci_slot* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %15 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %20 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %18
  store i32 %26, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %13, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @byt_probe_slot(%struct.sdhci_pci_slot*) #1

declare dso_local i32 @ni_set_max_freq(%struct.sdhci_pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
