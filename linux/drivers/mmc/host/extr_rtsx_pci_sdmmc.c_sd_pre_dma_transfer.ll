; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_pre_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_pre_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { i64, i32, i32, %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }
%struct.mmc_data = type { i32, i64, i32, i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"error: data->host_cookie = %d, host->cookie = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*, %struct.mmc_data*, i32)* @sd_pre_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_pre_dma_transfer(%struct.realtek_pci_sdmmc* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.realtek_pci_sdmmc*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_pcr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %12 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %11, i32 0, i32 3
  %13 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %12, align 8
  store %struct.rtsx_pcr* %13, %struct.rtsx_pcr** %7, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_DATA_READ, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %3
  %22 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %31 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %36 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %35)
  %37 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %41 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %42)
  %44 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %34, %26, %21, %3
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %54 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49, %46
  %58 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %7, align 8
  %59 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @rtsx_pci_dma_map_sg(%struct.rtsx_pcr* %58, i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %49
  %68 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %69 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %57
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %77 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %79 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %85 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %84, i32 0, i32 0
  store i64 1, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %88 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %96

92:                                               ; preds = %71
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %4, align 8
  %95 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load i32, i32* %10, align 4
  ret i32 %97
}

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

declare dso_local i32 @sdmmc_dev(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @rtsx_pci_dma_map_sg(%struct.rtsx_pcr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
