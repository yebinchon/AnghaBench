; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_pre_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sdmmc_pre_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_data* }
%struct.mmc_data = type { i64 }
%struct.realtek_pci_sdmmc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"error: reset data->host_cookie = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pre dma sg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sdmmc_pre_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_pre_req(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
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
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %18 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %17)
  %19 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %27 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %28 = call i32 @sd_pre_dma_transfer(%struct.realtek_pci_sdmmc* %26, %struct.mmc_data* %27, i32 1)
  %29 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %30 = call i32 @sdmmc_dev(%struct.realtek_pci_sdmmc* %29)
  %31 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %5, align 8
  %32 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local %struct.realtek_pci_sdmmc* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @sdmmc_dev(%struct.realtek_pci_sdmmc*) #1

declare dso_local i32 @sd_pre_dma_transfer(%struct.realtek_pci_sdmmc*, %struct.mmc_data*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
