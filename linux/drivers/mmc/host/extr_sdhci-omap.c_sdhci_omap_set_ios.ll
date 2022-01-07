; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i32, i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @sdhci_omap_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_omap_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %5, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %6, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %13 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_omap_host* %13, %struct.sdhci_omap_host** %7, align 8
  %14 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %7, align 8
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sdhci_omap_set_bus_mode(%struct.sdhci_omap_host* %14, i32 %17)
  %19 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %7, align 8
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdhci_omap_set_timing(%struct.sdhci_omap_host* %19, i32 %22)
  %24 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = call i32 @sdhci_set_ios(%struct.mmc_host* %24, %struct.mmc_ios* %25)
  %27 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %7, align 8
  %28 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sdhci_omap_set_power_mode(%struct.sdhci_omap_host* %27, i32 %30)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_omap_set_bus_mode(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_set_timing(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_set_ios(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @sdhci_omap_set_power_mode(%struct.sdhci_omap_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
