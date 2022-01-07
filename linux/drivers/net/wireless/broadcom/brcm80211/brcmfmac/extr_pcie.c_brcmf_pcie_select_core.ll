; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_select_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_select_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.brcmf_bus = type { i32 }
%struct.brcmf_core = type { i64 }

@BRCMF_PCIE_BAR0_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported core selected %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*, i32)* @brcmf_pcie_select_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_select_core(%struct.brcmf_pciedev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.brcmf_bus*, align 8
  %7 = alloca %struct.brcmf_core*, align 8
  %8 = alloca i64, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %10 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %9, i32 0, i32 1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %13)
  store %struct.brcmf_bus* %14, %struct.brcmf_bus** %6, align 8
  %15 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.brcmf_core* @brcmf_chip_get_core(i32 %17, i32 %18)
  store %struct.brcmf_core* %19, %struct.brcmf_core** %7, align 8
  %20 = load %struct.brcmf_core*, %struct.brcmf_core** %7, align 8
  %21 = icmp ne %struct.brcmf_core* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.brcmf_core*, %struct.brcmf_core** %7, align 8
  %24 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* @BRCMF_PCIE_BAR0_WINDOW, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @pci_write_config_dword(%struct.pci_dev* %26, i32 %27, i64 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* @BRCMF_PCIE_BAR0_WINDOW, align 4
  %32 = call i64 @pci_read_config_dword(%struct.pci_dev* %30, i32 %31, i64* %8)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %22
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.brcmf_core*, %struct.brcmf_core** %7, align 8
  %37 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.brcmf_core*, %struct.brcmf_core** %7, align 8
  %42 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = load i32, i32* @BRCMF_PCIE_BAR0_WINDOW, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @pci_write_config_dword(%struct.pci_dev* %44, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48, %22
  br label %54

50:                                               ; preds = %2
  %51 = load %struct.brcmf_bus*, %struct.brcmf_bus** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @brcmf_err(%struct.brcmf_bus* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %49
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local %struct.brcmf_core* @brcmf_chip_get_core(i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i64) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
