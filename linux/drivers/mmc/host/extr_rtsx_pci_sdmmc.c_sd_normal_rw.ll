; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_normal_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_normal_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { i64 }
%struct.mmc_request = type { %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i64, i32, i32 }
%struct.mmc_command = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_pci_sdmmc*, %struct.mmc_request*)* @sd_normal_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_normal_rw(%struct.realtek_pci_sdmmc* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.realtek_pci_sdmmc*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32*, align 8
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 1
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %5, align 8
  %11 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %6, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = call i32* @kzalloc(i64 %16, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %102

26:                                               ; preds = %2
  %27 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MMC_DATA_READ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %26
  %34 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %35 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %40 = call i32 @sd_disable_initial_mode(%struct.realtek_pci_sdmmc* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %43 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %44 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sd_read_data(%struct.realtek_pci_sdmmc* %42, %struct.mmc_command* %43, i32 %47, i32* %48, i64 %51, i32 200)
  %53 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %56 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %41
  %60 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %61 = call i32 @sd_enable_initial_mode(%struct.realtek_pci_sdmmc* %60)
  br label %62

62:                                               ; preds = %59, %41
  %63 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sg_copy_from_buffer(i32 %65, i32 %68, i32* %69, i64 %72)
  br label %99

74:                                               ; preds = %26
  %75 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %79 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %83 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @sg_copy_to_buffer(i32 %77, i32 %80, i32* %81, i64 %84)
  %86 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %87 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %88 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %89 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %7, align 8
  %93 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %94 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @sd_write_data(%struct.realtek_pci_sdmmc* %86, %struct.mmc_command* %87, i32 %91, i32* %92, i64 %95, i32 200)
  %97 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %98 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %74, %62
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @kfree(i32* %100)
  br label %102

102:                                              ; preds = %99, %21
  ret void
}

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @sd_disable_initial_mode(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @sd_read_data(%struct.realtek_pci_sdmmc*, %struct.mmc_command*, i32, i32*, i64, i32) #1

declare dso_local i32 @sd_enable_initial_mode(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i64) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32*, i64) #1

declare dso_local i32 @sd_write_data(%struct.realtek_pci_sdmmc*, %struct.mmc_command*, i32, i32*, i64, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
