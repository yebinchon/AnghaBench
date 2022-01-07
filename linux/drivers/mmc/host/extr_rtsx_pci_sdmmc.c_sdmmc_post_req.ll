; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_post_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_post_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i64, i32, i32 }
%struct.realtek_pci_sdmmc = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32)* @sdmmc_post_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_post_req(%struct.mmc_host* %0, %struct.mmc_request* %1, i32 %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.realtek_pci_sdmmc*, align 8
  %8 = alloca %struct.rtsx_pcr*, align 8
  %9 = alloca %struct.mmc_data*, align 8
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %12 = call %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host* %11)
  store %struct.realtek_pci_sdmmc* %12, %struct.realtek_pci_sdmmc** %7, align 8
  %13 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %7, align 8
  %14 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %13, i32 0, i32 0
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %14, align 8
  store %struct.rtsx_pcr* %15, %struct.rtsx_pcr** %8, align 8
  %16 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %16, i32 0, i32 0
  %18 = load %struct.mmc_data*, %struct.mmc_data** %17, align 8
  store %struct.mmc_data* %18, %struct.mmc_data** %9, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MMC_DATA_READ, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %8, align 8
  %25 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @rtsx_pci_dma_unmap_sg(%struct.rtsx_pcr* %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @rtsx_pci_dma_unmap_sg(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
