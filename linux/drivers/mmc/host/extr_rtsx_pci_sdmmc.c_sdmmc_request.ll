; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, %struct.mmc_data* }
%struct.mmc_data = type { i32 }
%struct.realtek_pci_sdmmc = type { i32, i32, i32, %struct.mmc_request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sdmmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.realtek_pci_sdmmc*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host* %7)
  store %struct.realtek_pci_sdmmc* %8, %struct.realtek_pci_sdmmc** %5, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 1
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %13 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %16 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %17 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %16, i32 0, i32 3
  store %struct.mmc_request* %15, %struct.mmc_request** %17, align 8
  %18 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %19 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @sd_rw_cmd(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %31 = call i64 @sdio_extblock_cmd(i32 %29, %struct.mmc_data* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26, %2
  %34 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %35 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %36 = call i32 @sd_pre_dma_transfer(%struct.realtek_pci_sdmmc* %34, %struct.mmc_data* %35, i32 0)
  %37 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %38 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %26
  %40 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %41 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  ret void
}

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @sd_rw_cmd(i32) #1

declare dso_local i64 @sdio_extblock_cmd(i32, %struct.mmc_data*) #1

declare dso_local i32 @sd_pre_dma_transfer(%struct.realtek_pci_sdmmc*, %struct.mmc_data*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
