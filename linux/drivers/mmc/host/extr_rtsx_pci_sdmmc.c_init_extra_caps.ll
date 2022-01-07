; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_init_extra_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_init_extra_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { %struct.rtsx_pcr*, %struct.mmc_host* }
%struct.rtsx_pcr = type { i32 }
%struct.mmc_host = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"pcr->extra_caps = 0x%x\0A\00", align 1
@EXTRA_CAPS_SD_SDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@EXTRA_CAPS_SD_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@EXTRA_CAPS_MMC_HSDDR = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@EXTRA_CAPS_MMC_8BIT = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_pci_sdmmc*)* @init_extra_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_extra_caps(%struct.realtek_pci_sdmmc* %0) #0 {
  %2 = alloca %struct.realtek_pci_sdmmc*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.rtsx_pcr*, align 8
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %2, align 8
  %5 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %2, align 8
  %6 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %5, i32 0, i32 1
  %7 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  store %struct.mmc_host* %7, %struct.mmc_host** %3, align 8
  %8 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %2, align 8
  %9 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %8, i32 0, i32 0
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %9, align 8
  store %struct.rtsx_pcr* %10, %struct.rtsx_pcr** %4, align 8
  %11 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %2, align 8
  %12 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %11)
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %14 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %18 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EXTRA_CAPS_SD_SDR50, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %25 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %26 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %31 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EXTRA_CAPS_SD_SDR104, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %44 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXTRA_CAPS_SD_DDR50, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %57 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EXTRA_CAPS_MMC_HSDDR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %64 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %70 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EXTRA_CAPS_MMC_8BIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %77 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %78 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %68
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sdmmc_dev(%struct.realtek_pci_sdmmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
