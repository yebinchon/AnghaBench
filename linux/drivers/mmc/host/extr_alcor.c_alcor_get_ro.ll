; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.alcor_sdmmc_host = type { %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }

@AU6601_INTERFACE_MODE_CTRL = common dso_local global i32 0, align 4
@AU6601_SD_CARD_WP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @alcor_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alcor_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.alcor_sdmmc_host*, align 8
  %4 = alloca %struct.alcor_pci_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %7 = call %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.alcor_sdmmc_host* %7, %struct.alcor_sdmmc_host** %3, align 8
  %8 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %8, i32 0, i32 0
  %10 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %9, align 8
  store %struct.alcor_pci_priv* %10, %struct.alcor_pci_priv** %4, align 8
  %11 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %4, align 8
  %12 = load i32, i32* @AU6601_INTERFACE_MODE_CTRL, align 4
  %13 = call i32 @alcor_read8(%struct.alcor_pci_priv* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AU6601_SD_CARD_WP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.alcor_sdmmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @alcor_read8(%struct.alcor_pci_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
