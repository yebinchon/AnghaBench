; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_tap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_set_tap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32 }

@NVQUIRK_DIS_CARD_CLK_CONFIG_TAP = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VENDOR_CLOCK_CTRL = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TAP_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TAP_SHIFT = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @tegra_sdhci_set_tap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_set_tap(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_tegra*, align 8
  %7 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %5, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %13 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.sdhci_tegra* %13, %struct.sdhci_tegra** %6, align 8
  %14 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %15 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %14, i32 0, i32 0
  %16 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %15, align 8
  store %struct.sdhci_tegra_soc_data* %16, %struct.sdhci_tegra_soc_data** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %18 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NVQUIRK_DIS_CARD_CLK_CONFIG_TAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %25 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %24, i32 0)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = load i32, i32* @SDHCI_TEGRA_VENDOR_CLOCK_CTRL, align 4
  %29 = call i32 @sdhci_readl(%struct.sdhci_host* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @SDHCI_CLOCK_CTRL_TAP_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SDHCI_CLOCK_CTRL_TAP_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SDHCI_TEGRA_VENDOR_CLOCK_CTRL, align 4
  %42 = call i32 @sdhci_writel(%struct.sdhci_host* %39, i32 %40, i32 %41)
  %43 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %44 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NVQUIRK_DIS_CARD_CLK_CONFIG_TAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = call i32 @udelay(i32 1)
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %56 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @sdhci_reset(%struct.sdhci_host* %54, i32 %57)
  %59 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %59, i32 %60)
  br label %62

62:                                               ; preds = %52, %49, %26
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
