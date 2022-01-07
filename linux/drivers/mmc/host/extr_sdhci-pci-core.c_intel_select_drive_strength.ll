; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_select_drive_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-core.c_intel_select_drive_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pci_slot = type { i32 }
%struct.intel_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32, i32, i32, i32*)* @intel_select_drive_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_select_drive_strength(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sdhci_host*, align 8
  %12 = alloca %struct.sdhci_pci_slot*, align 8
  %13 = alloca %struct.intel_host*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %15 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sdhci_host* @mmc_priv(i32 %16)
  store %struct.sdhci_host* %17, %struct.sdhci_host** %11, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %11, align 8
  %19 = call %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host* %18)
  store %struct.sdhci_pci_slot* %19, %struct.sdhci_pci_slot** %12, align 8
  %20 = load %struct.sdhci_pci_slot*, %struct.sdhci_pci_slot** %12, align 8
  %21 = call %struct.intel_host* @sdhci_pci_priv(%struct.sdhci_pci_slot* %20)
  store %struct.intel_host* %21, %struct.intel_host** %13, align 8
  %22 = load %struct.intel_host*, %struct.intel_host** %13, align 8
  %23 = getelementptr inbounds %struct.intel_host, %struct.intel_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

declare dso_local %struct.sdhci_host* @mmc_priv(i32) #1

declare dso_local %struct.sdhci_pci_slot* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.intel_host* @sdhci_pci_priv(%struct.sdhci_pci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
