; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_init_mmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_init_mmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@AU6601_MIN_CLOCK = common dso_local global i32 0, align 4
@AU6601_MAX_CLOCK = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP2_NO_SDIO = common dso_local global i32 0, align 4
@alcor_sdc_ops = common dso_local global i32 0, align 4
@AU6601_MAX_DMA_SEGMENTS = common dso_local global i32 0, align 4
@AU6601_MAX_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*)* @alcor_init_mmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_init_mmc(%struct.alcor_sdmmc_host* %0) #0 {
  %2 = alloca %struct.alcor_sdmmc_host*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %2, align 8
  %4 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %5 = call %struct.mmc_host* @mmc_from_priv(%struct.alcor_sdmmc_host* %4)
  store %struct.mmc_host* %5, %struct.mmc_host** %3, align 8
  %6 = load i32, i32* @AU6601_MIN_CLOCK, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @AU6601_MAX_CLOCK, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @MMC_VDD_33_34, align 4
  %13 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %16 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %29 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @MMC_CAP2_NO_SDIO, align 4
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %33, i32 0, i32 6
  store i32* @alcor_sdc_ops, i32** %34, align 8
  %35 = load i32, i32* @AU6601_MAX_DMA_SEGMENTS, align 4
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @AU6601_MAX_DMA_BLOCK_SIZE, align 4
  %39 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 1
  store i32 240, i32* %42, align 4
  %43 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %53 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dma_set_max_seg_size(i32 %54, i32 %57)
  ret void
}

declare dso_local %struct.mmc_host* @mmc_from_priv(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @dma_set_max_seg_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
