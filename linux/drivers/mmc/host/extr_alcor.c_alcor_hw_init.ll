; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { %struct.alcor_dev_cfg* }
%struct.alcor_dev_cfg = type { i32 }

@AU6601_RESET_CMD = common dso_local global i32 0, align 4
@AU6601_DMA_BOUNDARY = common dso_local global i32 0, align 4
@AU6601_SD_CARD = common dso_local global i32 0, align 4
@AU6601_ACTIVE_CTRL = common dso_local global i32 0, align 4
@AU6601_REG_BUS_CTRL = common dso_local global i32 0, align 4
@AU6601_RESET_DATA = common dso_local global i32 0, align 4
@AU6601_INTERFACE_MODE_CTRL = common dso_local global i32 0, align 4
@AU6601_PAD_DRIVE0 = common dso_local global i32 0, align 4
@AU6601_PAD_DRIVE1 = common dso_local global i32 0, align 4
@AU6601_PAD_DRIVE2 = common dso_local global i32 0, align 4
@AU6601_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@AU6601_POWER_CONTROL = common dso_local global i32 0, align 4
@AU6601_DETECT_EN = common dso_local global i32 0, align 4
@AU6601_DETECT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*)* @alcor_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_hw_init(%struct.alcor_sdmmc_host* %0) #0 {
  %2 = alloca %struct.alcor_sdmmc_host*, align 8
  %3 = alloca %struct.alcor_pci_priv*, align 8
  %4 = alloca %struct.alcor_dev_cfg*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %2, align 8
  %5 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %5, i32 0, i32 0
  %7 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %6, align 8
  store %struct.alcor_pci_priv* %7, %struct.alcor_pci_priv** %3, align 8
  %8 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %9 = getelementptr inbounds %struct.alcor_pci_priv, %struct.alcor_pci_priv* %8, i32 0, i32 0
  %10 = load %struct.alcor_dev_cfg*, %struct.alcor_dev_cfg** %9, align 8
  store %struct.alcor_dev_cfg* %10, %struct.alcor_dev_cfg** %4, align 8
  %11 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %12 = load i32, i32* @AU6601_RESET_CMD, align 4
  %13 = call i32 @alcor_reset(%struct.alcor_sdmmc_host* %11, i32 %12)
  %14 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %15 = load i32, i32* @AU6601_DMA_BOUNDARY, align 4
  %16 = call i32 @alcor_write8(%struct.alcor_pci_priv* %14, i32 0, i32 %15)
  %17 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %18 = load i32, i32* @AU6601_SD_CARD, align 4
  %19 = load i32, i32* @AU6601_ACTIVE_CTRL, align 4
  %20 = call i32 @alcor_write8(%struct.alcor_pci_priv* %17, i32 %18, i32 %19)
  %21 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %22 = load i32, i32* @AU6601_REG_BUS_CTRL, align 4
  %23 = call i32 @alcor_write8(%struct.alcor_pci_priv* %21, i32 0, i32 %22)
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %25 = load i32, i32* @AU6601_RESET_DATA, align 4
  %26 = call i32 @alcor_reset(%struct.alcor_sdmmc_host* %24, i32 %25)
  %27 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %28 = load i32, i32* @AU6601_DMA_BOUNDARY, align 4
  %29 = call i32 @alcor_write8(%struct.alcor_pci_priv* %27, i32 0, i32 %28)
  %30 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %31 = load i32, i32* @AU6601_INTERFACE_MODE_CTRL, align 4
  %32 = call i32 @alcor_write8(%struct.alcor_pci_priv* %30, i32 0, i32 %31)
  %33 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %34 = load i32, i32* @AU6601_PAD_DRIVE0, align 4
  %35 = call i32 @alcor_write8(%struct.alcor_pci_priv* %33, i32 68, i32 %34)
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %37 = load i32, i32* @AU6601_PAD_DRIVE1, align 4
  %38 = call i32 @alcor_write8(%struct.alcor_pci_priv* %36, i32 68, i32 %37)
  %39 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %40 = load i32, i32* @AU6601_PAD_DRIVE2, align 4
  %41 = call i32 @alcor_write8(%struct.alcor_pci_priv* %39, i32 0, i32 %40)
  %42 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %43 = load %struct.alcor_dev_cfg*, %struct.alcor_dev_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.alcor_dev_cfg, %struct.alcor_dev_cfg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AU6601_DMA_BOUNDARY, align 4
  %47 = call i32 @alcor_write8(%struct.alcor_pci_priv* %42, i32 %45, i32 %46)
  %48 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %49 = load i32, i32* @AU6601_OUTPUT_ENABLE, align 4
  %50 = call i32 @alcor_write8(%struct.alcor_pci_priv* %48, i32 0, i32 %49)
  %51 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %52 = load i32, i32* @AU6601_POWER_CONTROL, align 4
  %53 = call i32 @alcor_write8(%struct.alcor_pci_priv* %51, i32 0, i32 %52)
  %54 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %55 = load i32, i32* @AU6601_DETECT_EN, align 4
  %56 = load i32, i32* @AU6601_DETECT_STATUS, align 4
  %57 = call i32 @alcor_write8(%struct.alcor_pci_priv* %54, i32 %55, i32 %56)
  %58 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %59 = call i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host* %58)
  ret void
}

declare dso_local i32 @alcor_reset(%struct.alcor_sdmmc_host*, i32) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @alcor_unmask_sd_irqs(%struct.alcor_sdmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
