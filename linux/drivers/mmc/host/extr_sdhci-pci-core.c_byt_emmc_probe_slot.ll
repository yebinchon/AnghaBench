; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_emmc_probe_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_byt_emmc_probe_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_slot = type { %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@MMC_CAP_HW_RESET = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_CMD_DURING_TFR = common dso_local global i32 0, align 4
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@sdhci_pci_int_hw_reset = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_BSW_EMMC = common dso_local global i64 0, align 8
@intel_select_drive_strength = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_slot*)* @byt_emmc_probe_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_emmc_probe_slot(%struct.sdhci_pci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_pci_slot*, align 8
  store %struct.sdhci_pci_slot* %0, %struct.sdhci_pci_slot** %2, align 8
  %3 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %4 = call i32 @byt_probe_slot(%struct.sdhci_pci_slot* %3)
  %5 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %6 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MMC_CAP_HW_RESET, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MMC_CAP_CMD_DURING_TFR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %15
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @sdhci_pci_int_hw_reset, align 4
  %25 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %26 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCI_DEVICE_ID_INTEL_BSW_EMMC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %38 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 1000, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %1
  %42 = load i32, i32* @intel_select_drive_strength, align 4
  %43 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %2, align 8
  %44 = getelementptr inbounds %struct.sdhci_pci_slot, %struct.sdhci_pci_slot* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  ret i32 0
}

declare dso_local i32 @byt_probe_slot(%struct.sdhci_pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
