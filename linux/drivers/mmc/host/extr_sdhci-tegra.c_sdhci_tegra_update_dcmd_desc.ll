; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_update_dcmd_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_update_dcmd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32 }

@NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING = common dso_local global i32 0, align 4
@MMC_RSP_R1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*, i32*)* @sdhci_tegra_update_dcmd_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_tegra_update_dcmd_desc(%struct.mmc_host* %0, %struct.mmc_request* %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_tegra*, align 8
  %9 = alloca %struct.sdhci_tegra_soc_data*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %11 = call i32 @mmc_priv(%struct.mmc_host* %10)
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(i32 %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %7, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %14 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_tegra* %14, %struct.sdhci_tegra** %8, align 8
  %15 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %16 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %15, i32 0, i32 0
  %17 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %16, align 8
  store %struct.sdhci_tegra_soc_data* %17, %struct.sdhci_tegra_soc_data** %9, align 8
  %18 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %9, align 8
  %19 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NVQUIRK_CQHCI_DCMD_R1B_CMD_TIMING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MMC_RSP_R1B, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = call i32 @CQHCI_CMD_TIMING(i32 1)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %24, %3
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(i32) #1

declare dso_local i32 @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @CQHCI_CMD_TIMING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
