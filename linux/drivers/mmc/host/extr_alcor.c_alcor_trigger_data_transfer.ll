; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_trigger_data_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_trigger_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, %struct.mmc_data*, %struct.alcor_pci_priv* }
%struct.mmc_data = type { i32, i64, i32, i32 }
%struct.alcor_pci_priv = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@AU6601_DATA_WRITE = common dso_local global i32 0, align 4
@COOKIE_MAPPED = common dso_local global i64 0, align 8
@AU6601_DATA_DMA_MODE = common dso_local global i32 0, align 4
@AU6601_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@AU6601_DATA_START_XFER = common dso_local global i32 0, align 4
@AU6601_DATA_XFER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*)* @alcor_trigger_data_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_trigger_data_transfer(%struct.alcor_sdmmc_host* %0) #0 {
  %2 = alloca %struct.alcor_sdmmc_host*, align 8
  %3 = alloca %struct.alcor_pci_priv*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %2, align 8
  %6 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %6, i32 0, i32 2
  %8 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  store %struct.alcor_pci_priv* %8, %struct.alcor_pci_priv** %3, align 8
  %9 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %10 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %9, i32 0, i32 1
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MMC_DATA_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @AU6601_DATA_WRITE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @COOKIE_MAPPED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %30 = call i32 @alcor_data_set_dma(%struct.alcor_sdmmc_host* %29)
  %31 = load i32, i32* @AU6601_DATA_DMA_MODE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %37 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 4096
  %41 = load i32, i32* @AU6601_REG_BLOCK_SIZE, align 4
  %42 = call i32 @alcor_write32(%struct.alcor_pci_priv* %36, i32 %40, i32 %41)
  br label %50

43:                                               ; preds = %22
  %44 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %45 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AU6601_REG_BLOCK_SIZE, align 4
  %49 = call i32 @alcor_write32(%struct.alcor_pci_priv* %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %28
  %51 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @AU6601_DATA_START_XFER, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AU6601_DATA_XFER_CTRL, align 4
  %56 = call i32 @alcor_write8(%struct.alcor_pci_priv* %51, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @alcor_data_set_dma(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @alcor_write32(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
