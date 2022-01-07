; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.brcmf_bus = type { i32 }

@PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@brcmf_pcie_quick_check_isr = common dso_local global i32 0, align 4
@brcmf_pcie_isr_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"brcmf_pcie_intr\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to request IRQ %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pciedev_info*)* @brcmf_pcie_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_pcie_request_irq(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pciedev_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.brcmf_bus*, align 8
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %3, align 8
  %6 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %10)
  store %struct.brcmf_bus* %11, %struct.brcmf_bus** %5, align 8
  %12 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %13 = call i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info* %12)
  %14 = load i32, i32* @PCIE, align 4
  %15 = call i32 @brcmf_dbg(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_enable_msi(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @brcmf_pcie_quick_check_isr, align 4
  %22 = load i32, i32* @brcmf_pcie_isr_thread, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %25 = call i64 @request_threaded_irq(i32 %20, i32 %21, i32 %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_pciedev_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_disable_msi(%struct.pci_dev* %28)
  %30 = load %struct.brcmf_bus*, %struct.brcmf_bus** %5, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @brcmf_err(%struct.brcmf_bus* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %3, align 8
  %39 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i64 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.brcmf_pciedev_info*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
