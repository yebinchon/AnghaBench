; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_slow_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_slow_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i32, %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_regs = type { i32 }
%struct.xenon_emmc_phy_params = type { i32 }

@MMC_HIGH_52_MAX_DTR = common dso_local global i64 0, align 8
@XENON_TIMING_ADJUST_SLOW_MODE = common dso_local global i32 0, align 4
@MMC_TYPE_SDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i8)* @xenon_emmc_phy_slow_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_emmc_phy_slow_mode(%struct.sdhci_host* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.xenon_priv*, align 8
  %8 = alloca %struct.xenon_emmc_phy_params*, align 8
  %9 = alloca %struct.xenon_emmc_phy_regs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store i8 %1, i8* %5, align 1
  %12 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %13 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %12)
  store %struct.sdhci_pltfm_host* %13, %struct.sdhci_pltfm_host** %6, align 8
  %14 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %15 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %14)
  store %struct.xenon_priv* %15, %struct.xenon_priv** %7, align 8
  %16 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %17 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %16, i32 0, i32 2
  %18 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %17, align 8
  store %struct.xenon_emmc_phy_params* %18, %struct.xenon_emmc_phy_params** %8, align 8
  %19 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %20 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %19, i32 0, i32 1
  %21 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %20, align 8
  store %struct.xenon_emmc_phy_regs* %21, %struct.xenon_emmc_phy_regs** %9, align 8
  %22 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MMC_HIGH_52_MAX_DTR, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %30 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %31 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdhci_readl(%struct.sdhci_host* %29, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %67 [
    i32 132, label %36
    i32 128, label %51
    i32 129, label %51
    i32 130, label %51
    i32 131, label %51
  ]

36:                                               ; preds = %28
  %37 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %8, align 8
  %38 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %41
  br label %72

51:                                               ; preds = %28, %28, %28, %28
  %52 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %53 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MMC_TYPE_SDIO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %8, align 8
  %59 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %51
  %63 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %72

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %28, %66
  %68 = load i32, i32* @XENON_TIMING_ADJUST_SLOW_MODE, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %62, %50
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %76 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sdhci_writel(%struct.sdhci_host* %73, i32 %74, i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %27
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
