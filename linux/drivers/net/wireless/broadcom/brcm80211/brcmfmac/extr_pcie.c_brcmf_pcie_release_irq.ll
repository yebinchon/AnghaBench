; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_pcie.c_brcmf_pcie_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pciedev_info = type { i32, i64, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }
%struct.brcmf_bus = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Still in IRQ (processing) !!!\0A\00", align 1
@BRCMF_PCIE_PCIE2REG_MAILBOXINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pciedev_info*)* @brcmf_pcie_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_pcie_release_irq(%struct.brcmf_pciedev_info* %0) #0 {
  %2 = alloca %struct.brcmf_pciedev_info*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcmf_pciedev_info* %0, %struct.brcmf_pciedev_info** %2, align 8
  %7 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = call %struct.brcmf_bus* @dev_get_drvdata(i32* %11)
  store %struct.brcmf_bus* %12, %struct.brcmf_bus** %4, align 8
  %13 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %14 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %20 = call i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.brcmf_pciedev_info* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = call i32 @pci_disable_msi(%struct.pci_dev* %26)
  %28 = call i32 @msleep(i32 50)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %39, %18
  %30 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %31 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 20
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i1 [ false, %29 ], [ %36, %34 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = call i32 @msleep(i32 50)
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %29

43:                                               ; preds = %37
  %44 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %45 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %50 = call i32 @brcmf_err(%struct.brcmf_bus* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %53 = load i32, i32* @BRCMF_PCIE_PCIE2REG_MAILBOXINT, align 4
  %54 = call i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %56 = load i32, i32* @BRCMF_PCIE_PCIE2REG_MAILBOXINT, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info* %55, i32 %56, i32 %57)
  %59 = load %struct.brcmf_pciedev_info*, %struct.brcmf_pciedev_info** %2, align 8
  %60 = getelementptr inbounds %struct.brcmf_pciedev_info, %struct.brcmf_pciedev_info* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %51, %17
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(i32*) #1

declare dso_local i32 @brcmf_pcie_intr_disable(%struct.brcmf_pciedev_info*) #1

declare dso_local i32 @free_irq(i32, %struct.brcmf_pciedev_info*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_err(%struct.brcmf_bus*, i8*) #1

declare dso_local i32 @brcmf_pcie_read_reg32(%struct.brcmf_pciedev_info*, i32) #1

declare dso_local i32 @brcmf_pcie_write_reg32(%struct.brcmf_pciedev_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
