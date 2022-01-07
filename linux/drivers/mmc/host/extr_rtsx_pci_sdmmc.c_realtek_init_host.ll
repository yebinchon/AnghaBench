; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_realtek_init_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_realtek_init_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { %struct.mmc_host* }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_VDD_165_195 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_BUS_WIDTH_TEST = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP2_NO_PRESCAN_POWERUP = common dso_local global i32 0, align 4
@MMC_CAP2_FULL_PWR_CYCLE = common dso_local global i32 0, align 4
@realtek_pci_sdmmc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_pci_sdmmc*)* @realtek_init_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realtek_init_host(%struct.realtek_pci_sdmmc* %0) #0 {
  %2 = alloca %struct.realtek_pci_sdmmc*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %2, align 8
  %4 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %2, align 8
  %5 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %4, i32 0, i32 0
  %6 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0
  store i32 250000, i32* %8, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %9, i32 0, i32 1
  store i32 208000000, i32* %10, align 4
  %11 = load i32, i32* @MMC_VDD_32_33, align 4
  %12 = load i32, i32* @MMC_VDD_33_34, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MMC_VDD_165_195, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %19 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MMC_CAP_BUS_WIDTH_TEST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MMC_CAP_ERASE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MMC_CAP2_NO_PRESCAN_POWERUP, align 4
  %34 = load i32, i32* @MMC_CAP2_FULL_PWR_CYCLE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %37 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 5
  store i32 400, i32* %39, align 4
  %40 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %40, i32 0, i32 6
  store i32 800, i32* %41, align 8
  %42 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %43 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %42, i32 0, i32 12
  store i32* @realtek_pci_sdmmc_ops, i32** %43, align 8
  %44 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %2, align 8
  %45 = call i32 @init_extra_caps(%struct.realtek_pci_sdmmc* %44)
  %46 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %46, i32 0, i32 7
  store i32 256, i32* %47, align 4
  %48 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %48, i32 0, i32 8
  store i32 65536, i32* %49, align 8
  %50 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 9
  store i32 512, i32* %51, align 4
  %52 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %53 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %52, i32 0, i32 10
  store i32 65535, i32* %53, align 8
  %54 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %54, i32 0, i32 11
  store i32 524288, i32* %55, align 4
  ret void
}

declare dso_local i32 @init_extra_caps(%struct.realtek_pci_sdmmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
