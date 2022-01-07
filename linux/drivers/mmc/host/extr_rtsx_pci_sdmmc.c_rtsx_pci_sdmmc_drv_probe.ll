; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_rtsx_pci_sdmmc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_rtsx_pci_sdmmc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pcr_handle* }
%struct.pcr_handle = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.platform_device* }
%struct.mmc_host = type { i32 }
%struct.realtek_pci_sdmmc = type { i32, i32, i32, i32, %struct.platform_device*, %struct.mmc_host*, %struct.rtsx_pcr* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c": Realtek PCI-E SDMMC controller found\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SDMMC_POWER_OFF = common dso_local global i32 0, align 4
@sd_request = common dso_local global i32 0, align 4
@RTSX_SD_CARD = common dso_local global i64 0, align 8
@rtsx_pci_sdmmc_card_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rtsx_pci_sdmmc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_pci_sdmmc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.realtek_pci_sdmmc*, align 8
  %6 = alloca %struct.rtsx_pcr*, align 8
  %7 = alloca %struct.pcr_handle*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.pcr_handle*, %struct.pcr_handle** %10, align 8
  store %struct.pcr_handle* %11, %struct.pcr_handle** %7, align 8
  %12 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %13 = icmp ne %struct.pcr_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.pcr_handle*, %struct.pcr_handle** %7, align 8
  %19 = getelementptr inbounds %struct.pcr_handle, %struct.pcr_handle* %18, i32 0, i32 0
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %19, align 8
  store %struct.rtsx_pcr* %20, %struct.rtsx_pcr** %6, align 8
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %22 = icmp ne %struct.rtsx_pcr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_dbg(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.mmc_host* @mmc_alloc_host(i32 40, %struct.TYPE_5__* %31)
  store %struct.mmc_host* %32, %struct.mmc_host** %4, align 8
  %33 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %34 = icmp ne %struct.mmc_host* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %26
  %39 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %40 = call %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host* %39)
  store %struct.realtek_pci_sdmmc* %40, %struct.realtek_pci_sdmmc** %5, align 8
  %41 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %42 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %43 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %42, i32 0, i32 6
  store %struct.rtsx_pcr* %41, %struct.rtsx_pcr** %43, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %46 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %45, i32 0, i32 5
  store %struct.mmc_host* %44, %struct.mmc_host** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %49 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %48, i32 0, i32 4
  store %struct.platform_device* %47, %struct.platform_device** %49, align 8
  %50 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %51 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load i32, i32* @SDMMC_POWER_OFF, align 4
  %53 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %54 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %56 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %55, i32 0, i32 2
  %57 = load i32, i32* @sd_request, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.realtek_pci_sdmmc* %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %64 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @RTSX_SD_CARD, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store %struct.platform_device* %62, %struct.platform_device** %68, align 8
  %69 = load i32, i32* @rtsx_pci_sdmmc_card_event, align 4
  %70 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %71 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i64, i64* @RTSX_SD_CARD, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %69, i32* %75, align 8
  %76 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %77 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %76, i32 0, i32 1
  %78 = call i32 @mutex_init(i32* %77)
  %79 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %80 = call i32 @realtek_init_host(%struct.realtek_pci_sdmmc* %79)
  %81 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %82 = call i32 @mmc_add_host(%struct.mmc_host* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %38, %35, %23, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @realtek_init_host(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
