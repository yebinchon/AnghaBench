; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.brcmf_pciedev_info = type { i64, i64, %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info*, %struct.TYPE_2__, i32, %struct.brcmf_pciedev_info* }
%struct.TYPE_2__ = type { %struct.brcmf_pciedev_info* }
%struct.brcmf_bus = type { i64, i64, %struct.brcmf_bus*, %struct.brcmf_bus*, %struct.TYPE_2__, i32, %struct.brcmf_bus* }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMFMAC_PCIE_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @brcmf_pcie_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i32, i32* @PCIE, align 4
  %6 = call i32 @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call %struct.brcmf_pciedev_info* @dev_get_drvdata(i32* %8)
  %10 = bitcast %struct.brcmf_pciedev_info* %9 to %struct.brcmf_bus*
  store %struct.brcmf_bus* %10, %struct.brcmf_bus** %4, align 8
  %11 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %12 = icmp eq %struct.brcmf_bus* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %17, align 8
  %19 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %18, i32 0, i32 6
  %20 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %19, align 8
  store %struct.brcmf_pciedev_info* %20, %struct.brcmf_pciedev_info** %3, align 8
  %21 = load i32, i32* @BRCMFMAC_PCIE_STATE_DOWN, align 4
  %22 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %23 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %25 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %30 = call i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info* %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @brcmf_detach(i32* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @brcmf_free(i32* %36)
  %38 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %39 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %40, align 8
  %42 = call i32 @kfree(%struct.brcmf_pciedev_info* %41)
  %43 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %44 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %43, i32 0, i32 2
  %45 = load %struct.brcmf_bus*, %struct.brcmf_bus** %44, align 8
  %46 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %45, i32 0, i32 3
  %47 = load %struct.brcmf_bus*, %struct.brcmf_bus** %46, align 8
  %48 = bitcast %struct.brcmf_bus* %47 to %struct.brcmf_pciedev_info*
  %49 = call i32 @kfree(%struct.brcmf_pciedev_info* %48)
  %50 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %51 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %50, i32 0, i32 2
  %52 = load %struct.brcmf_bus*, %struct.brcmf_bus** %51, align 8
  %53 = bitcast %struct.brcmf_bus* %52 to %struct.brcmf_pciedev_info*
  %54 = call i32 @kfree(%struct.brcmf_pciedev_info* %53)
  %55 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %56 = bitcast %struct.brcmf_bus* %55 to %struct.brcmf_pciedev_info*
  %57 = call i32 @kfree(%struct.brcmf_pciedev_info* %56)
  %58 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %59 = call i32 @brcmf_pcie_release_irq(%struct.brcmf_pciedev_info* %58)
  %60 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %61 = call i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info* %60)
  %62 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %63 = call i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info* %62)
  %64 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %65 = call i32 @brcmf_pcie_reset_device(%struct.brcmf_pciedev_info* %64)
  %66 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %67 = call i32 @brcmf_pcie_release_resource(%struct.brcmf_pciedev_info* %66)
  %68 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %69 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %31
  %73 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %74 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @brcmf_chip_detach(i64 %75)
  br label %77

77:                                               ; preds = %72, %31
  %78 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %79 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %84 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @brcmf_release_module_param(i64 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %89 = call i32 @kfree(%struct.brcmf_pciedev_info* %88)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = call i32 @dev_set_drvdata(i32* %91, i32* null)
  br label %93

93:                                               ; preds = %87, %13
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_pciedev_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_detach(i32*) #1

declare dso_local i32 @brcmf_free(i32*) #1

declare dso_local i32 @kfree(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_irq(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_scratchbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_ringbuffers(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_reset_device(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_pcie_release_resource(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_chip_detach(i64) #1

declare dso_local i32 @brcmf_release_module_param(i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
