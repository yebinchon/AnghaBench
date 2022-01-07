; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_dma_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_dma_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i64 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @tegra_sdhci_set_dma_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sdhci_set_dma_mask(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_tegra*, align 8
  %6 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %4, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %11 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.sdhci_tegra* %11, %struct.sdhci_tegra** %5, align 8
  %12 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %5, align 8
  %13 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %12, i32 0, i32 0
  %14 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %13, align 8
  store %struct.sdhci_tegra_soc_data* %14, %struct.sdhci_tegra_soc_data** %6, align 8
  %15 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %16 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device* @mmc_dev(i32 %17)
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %6, align 8
  %20 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %6, align 8
  %26 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dma_set_mask_and_coherent(%struct.device* %24, i64 %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local %struct.device* @mmc_dev(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
