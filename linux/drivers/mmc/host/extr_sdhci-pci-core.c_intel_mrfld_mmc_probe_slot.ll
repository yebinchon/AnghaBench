; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_mrfld_mmc_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_mrfld_mmc_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_NO_1_8_V = common dso_local global i32 0, align 4
@MMC_VDD_20_21 = common dso_local global i32 0, align 4
@MMC_VDD_165_195 = common dso_local global i32 0, align 4
@MMC_CAP_POWER_OFF_CARD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @intel_mrfld_mmc_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_mrfld_mmc_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %3, align 8
  %5 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %6 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @PCI_FUNC(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %55 [
    i32 131, label %14
    i32 130, label %14
    i32 129, label %28
    i32 128, label %36
  ]

14:                                               ; preds = %1, %1
  %15 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %16 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %21 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %19
  store i32 %27, i32* %25, align 4
  br label %58

28:                                               ; preds = %1
  %29 = load i32, i32* @SDHCI_QUIRK2_NO_1_8_V, align 4
  %30 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %31 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 8
  br label %58

36:                                               ; preds = %1
  %37 = load i32, i32* @MMC_VDD_20_21, align 4
  %38 = load i32, i32* @MMC_VDD_165_195, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %41 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %45 = load i32, i32* @MMC_CAP_POWER_OFF_CARD, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %48 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %46
  store i32 %54, i32* %52, align 4
  br label %58

55:                                               ; preds = %1
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %36, %28, %14
  %59 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %3, align 8
  %60 = call i32 @intel_mrfld_mmc_fix_up_power_slot(%struct.sdhci_pci_slot* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @intel_mrfld_mmc_fix_up_power_slot(%struct.sdhci_pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
