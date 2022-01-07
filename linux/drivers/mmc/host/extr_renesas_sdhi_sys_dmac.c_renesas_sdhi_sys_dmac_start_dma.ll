; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_sys_dmac.c_renesas_sdhi_sys_dmac_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i64, i64 }
%struct.mmc_data = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.mmc_data*)* @renesas_sdhi_sys_dmac_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_sys_dmac_start_dma(%struct.tmio_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %5 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %6 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MMC_DATA_READ, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %18 = call i32 @renesas_sdhi_sys_dmac_start_dma_rx(%struct.tmio_mmc_host* %17)
  br label %19

19:                                               ; preds = %16, %11
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %27 = call i32 @renesas_sdhi_sys_dmac_start_dma_tx(%struct.tmio_mmc_host* %26)
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @renesas_sdhi_sys_dmac_start_dma_rx(%struct.tmio_mmc_host*) #1

declare dso_local i32 @renesas_sdhi_sys_dmac_start_dma_tx(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
