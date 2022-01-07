; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_unprep_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci_stm32_sdmmc.c_sdmmc_idma_unprep_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmci_host = type { i32 }
%struct.mmc_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmci_host*, %struct.mmc_data*, i32)* @sdmmc_idma_unprep_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdmmc_idma_unprep_data(%struct.mmci_host* %0, %struct.mmc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mmci_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mmci_host* %0, %struct.mmci_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mmci_host*, %struct.mmci_host** %4, align 8
  %8 = getelementptr inbounds %struct.mmci_host, %struct.mmci_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mmc_dev(i32 %9)
  %11 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = call i32 @mmc_get_dma_dir(%struct.mmc_data* %17)
  %19 = call i32 @dma_unmap_sg(i32 %10, i32 %13, i32 %16, i32 %18)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
