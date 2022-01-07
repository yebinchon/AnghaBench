; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_irq_msi_fw_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_irq_msi_fw_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@SOC_CORE_BASE_ADDRESS = common dso_local global i64 0, align 8
@CORE_CTRL_ADDRESS = common dso_local global i64 0, align 8
@CORE_CTRL_PCIE_REG_31_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_irq_msi_fw_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_irq_msi_fw_unmask(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %24 [
    i32 131, label %7
    i32 133, label %7
    i32 135, label %7
    i32 134, label %7
    i32 129, label %22
    i32 130, label %22
    i32 132, label %22
    i32 136, label %22
    i32 128, label %23
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %9 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %10 = load i64, i64* @CORE_CTRL_ADDRESS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @ath10k_pci_read32(%struct.ath10k* %8, i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CORE_CTRL_PCIE_REG_31_MASK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %17 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %18 = load i64, i64* @CORE_CTRL_ADDRESS, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ath10k_pci_write32(%struct.ath10k* %16, i64 %19, i32 %20)
  br label %24

22:                                               ; preds = %1, %1, %1, %1
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23, %22, %7
  ret void
}

declare dso_local i32 @ath10k_pci_read32(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
