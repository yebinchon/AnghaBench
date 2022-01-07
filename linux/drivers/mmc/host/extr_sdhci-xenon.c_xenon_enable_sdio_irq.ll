; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_enable_sdio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_enable_sdio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i32 }

@XENON_SYS_CFG_INFO = common dso_local global i32 0, align 4
@XENON_SLOT_TYPE_SDIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i32)* @xenon_enable_sdio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_enable_sdio_irq(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.xenon_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.sdhci_host* %11, %struct.sdhci_host** %5, align 8
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %13 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %12)
  store %struct.sdhci_pltfm_host* %13, %struct.sdhci_pltfm_host** %6, align 8
  %14 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %15 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %14)
  store %struct.xenon_priv* %15, %struct.xenon_priv** %7, align 8
  %16 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %17 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sdhci_enable_sdio_irq(%struct.mmc_host* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %26 = load i32, i32* @XENON_SYS_CFG_INFO, align 4
  %27 = call i32 @sdhci_readl(%struct.sdhci_host* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @XENON_SLOT_TYPE_SDIO_SHIFT, align 4
  %30 = add nsw i32 %28, %29
  %31 = shl i32 1, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @XENON_SYS_CFG_INFO, align 4
  %37 = call i32 @sdhci_writel(%struct.sdhci_host* %34, i32 %35, i32 %36)
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %40 = load i32, i32* @XENON_SYS_CFG_INFO, align 4
  %41 = call i32 @sdhci_readl(%struct.sdhci_host* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @XENON_SLOT_TYPE_SDIO_SHIFT, align 4
  %44 = add nsw i32 %42, %43
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @XENON_SYS_CFG_INFO, align 4
  %52 = call i32 @sdhci_writel(%struct.sdhci_host* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %24
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_enable_sdio_irq(%struct.mmc_host*, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
