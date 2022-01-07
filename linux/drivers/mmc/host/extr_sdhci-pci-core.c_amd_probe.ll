; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_amd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_HUDSON2_SMBUS = common dso_local global i32 0, align 4
@AMD_CHIPSET_BEFORE_ML = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_AMD_KERNCZ_SMBUS = common dso_local global i32 0, align 4
@AMD_CHIPSET_CZ = common dso_local global i32 0, align 4
@AMD_CHIPSET_NL = common dso_local global i32 0, align 4
@AMD_CHIPSET_UNKNOWN = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @amd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca %struct.sdhci_pci_chip*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %2, align 8
  %5 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %6 = load i32, i32* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 4
  %7 = call %struct.pci_dev* @pci_get_device(i32 %5, i32 %6, i32* null)
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @AMD_CHIPSET_BEFORE_ML, align 4
  store i32 %11, i32* %4, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %14 = load i32, i32* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 4
  %15 = call %struct.pci_dev* @pci_get_device(i32 %13, i32 %14, i32* null)
  store %struct.pci_dev* %15, %struct.pci_dev** %3, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 81
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @AMD_CHIPSET_CZ, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @AMD_CHIPSET_NL, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %30

28:                                               ; preds = %12
  %29 = load i32, i32* @AMD_CHIPSET_UNKNOWN, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AMD_CHIPSET_BEFORE_ML, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AMD_CHIPSET_CZ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD, align 4
  %41 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %35
  ret i32 0
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
