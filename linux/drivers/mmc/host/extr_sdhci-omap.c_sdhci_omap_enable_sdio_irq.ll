; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_CON = common dso_local global i32 0, align 4
@CON_CTPL = common dso_local global i32 0, align 4
@CON_CLKEXTFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @sdhci_omap_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.sdhci_omap_host*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %6, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %14 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_omap_host* %14, %struct.sdhci_omap_host** %7, align 8
  %15 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %7, align 8
  %16 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %17 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @CON_CTPL, align 4
  %22 = load i32, i32* @CON_CLKEXTFREE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @CON_CTPL, align 4
  %28 = load i32, i32* @CON_CLKEXTFREE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %7, align 8
  %35 = load i32, i32* @SDHCI_OMAP_CON, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %34, i32 %35, i32 %36)
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @sdhci_enable_sdio_irq(%struct.mmc_host* %38, i32 %39)
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

declare dso_local i32 @sdhci_enable_sdio_irq(%struct.mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
