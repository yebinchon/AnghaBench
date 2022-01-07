; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_pci = type { i64, i32 }

@ath10k_pci_irq_mode = common dso_local global i64 0, align 8
@ATH10K_PCI_IRQ_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"limiting irq mode to: %d\0A\00", align 1
@ATH10K_PCI_IRQ_LEGACY = common dso_local global i64 0, align 8
@ATH10K_PCI_IRQ_MSI = common dso_local global i64 0, align 8
@SOC_CORE_BASE_ADDRESS = common dso_local global i64 0, align 8
@PCIE_INTR_ENABLE_ADDRESS = common dso_local global i64 0, align 8
@PCIE_INTR_FIRMWARE_MASK = common dso_local global i32 0, align 4
@PCIE_INTR_CE_MASK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_init_irq(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k* %6)
  store %struct.ath10k_pci* %7, %struct.ath10k_pci** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call i32 @ath10k_pci_init_napi(%struct.ath10k* %8)
  %10 = load i64, i64* @ath10k_pci_irq_mode, align 8
  %11 = load i64, i64* @ATH10K_PCI_IRQ_AUTO, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = load i64, i64* @ath10k_pci_irq_mode, align 8
  %16 = call i32 @ath10k_info(%struct.ath10k* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i64, i64* @ath10k_pci_irq_mode, align 8
  %19 = load i64, i64* @ATH10K_PCI_IRQ_LEGACY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i64, i64* @ATH10K_PCI_IRQ_MSI, align 8
  %23 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_enable_msi(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %45

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i64, i64* @ATH10K_PCI_IRQ_LEGACY, align 8
  %35 = load %struct.ath10k_pci*, %struct.ath10k_pci** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k_pci, %struct.ath10k_pci* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %39 = load i64, i64* @PCIE_INTR_ENABLE_ADDRESS, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @PCIE_INTR_FIRMWARE_MASK, align 4
  %42 = load i32, i32* @PCIE_INTR_CE_MASK_ALL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ath10k_pci_write32(%struct.ath10k* %37, i64 %40, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %33, %31
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.ath10k_pci* @ath10k_pci_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_init_napi(%struct.ath10k*) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
