; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32, i32 }
%struct.realtek_pci_sdmmc = type { i32, i32, i32, i32, i32, %struct.rtsx_pcr*, i64 }
%struct.rtsx_pcr = type { i32 }

@RTSX_SD_CARD = common dso_local global i32 0, align 4
@RTSX_SSC_DEPTH_2M = common dso_local global i32 0, align 4
@RTSX_SSC_DEPTH_1M = common dso_local global i32 0, align 4
@RTSX_SSC_DEPTH_500K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @sdmmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.realtek_pci_sdmmc*, align 8
  %6 = alloca %struct.rtsx_pcr*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = call %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host* %7)
  store %struct.realtek_pci_sdmmc* %8, %struct.realtek_pci_sdmmc** %5, align 8
  %9 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %10 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %9, i32 0, i32 5
  %11 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %10, align 8
  store %struct.rtsx_pcr* %11, %struct.rtsx_pcr** %6, align 8
  %12 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %13 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %19 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %18, i32 0, i32 5
  %20 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %19, align 8
  %21 = load i32, i32* @RTSX_SD_CARD, align 4
  %22 = call i64 @rtsx_pci_card_exclusive_check(%struct.rtsx_pcr* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %103

25:                                               ; preds = %17
  %26 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %27 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %30 = call i32 @rtsx_pci_start_run(%struct.rtsx_pcr* %29)
  %31 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %32 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %33 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sd_set_bus_width(%struct.realtek_pci_sdmmc* %31, i32 %34)
  %36 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sd_set_power_mode(%struct.realtek_pci_sdmmc* %36, i32 %39)
  %41 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sd_set_timing(%struct.realtek_pci_sdmmc* %41, i32 %44)
  %46 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %47 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %49 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %65 [
    i32 130, label %53
    i32 128, label %53
    i32 132, label %61
    i32 131, label %61
    i32 129, label %61
  ]

53:                                               ; preds = %25, %25
  %54 = load i32, i32* @RTSX_SSC_DEPTH_2M, align 4
  %55 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %56 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %58 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %60 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %69

61:                                               ; preds = %25, %25, %25
  %62 = load i32, i32* @RTSX_SSC_DEPTH_1M, align 4
  %63 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %64 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %25
  %66 = load i32, i32* @RTSX_SSC_DEPTH_500K, align 4
  %67 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %68 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61, %53
  %70 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 1000000
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  %76 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %77 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %82 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %84 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %88 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %91 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %94 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %97 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @rtsx_pci_switch_clock(%struct.rtsx_pcr* %83, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98)
  %100 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %6, align 8
  %101 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  br label %103

103:                                              ; preds = %69, %24, %16
  ret void
}

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @rtsx_pci_card_exclusive_check(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtsx_pci_start_run(%struct.rtsx_pcr*) #1

declare dso_local i32 @sd_set_bus_width(%struct.realtek_pci_sdmmc*, i32) #1

declare dso_local i32 @sd_set_power_mode(%struct.realtek_pci_sdmmc*, i32) #1

declare dso_local i32 @sd_set_timing(%struct.realtek_pci_sdmmc*, i32) #1

declare dso_local i32 @rtsx_pci_switch_clock(%struct.rtsx_pcr*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
