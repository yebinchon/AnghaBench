; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_deinit_irq_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_deinit_irq_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@SOC_CORE_BASE_ADDRESS = common dso_local global i64 0, align 8
@PCIE_INTR_ENABLE_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_pci_deinit_irq_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_pci_deinit_irq_legacy(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = load i64, i64* @SOC_CORE_BASE_ADDRESS, align 8
  %5 = load i64, i64* @PCIE_INTR_ENABLE_ADDRESS, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @ath10k_pci_write32(%struct.ath10k* %3, i64 %6, i32 0)
  ret void
}

declare dso_local i32 @ath10k_pci_write32(%struct.ath10k*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
