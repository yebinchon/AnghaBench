; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_armada_3700_soc_pad_voltage_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_armada_3700_soc_pad_voltage_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@SOC_PAD_FIXED_1_8V = common dso_local global i64 0, align 8
@ARMADA_3700_SOC_PAD_1_8V = common dso_local global i32 0, align 4
@SOC_PAD_SD = common dso_local global i64 0, align 8
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i8 0, align 1
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i8 0, align 1
@ARMADA_3700_SOC_PAD_3_3V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8)* @armada_3700_soc_pad_voltage_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_3700_soc_pad_voltage_set(%struct.sdhci_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.xenon_priv*, align 8
  %7 = alloca %struct.xenon_emmc_phy_params*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %9 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %8)
  store %struct.sdhci_pltfm_host* %9, %struct.sdhci_pltfm_host** %5, align 8
  %10 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %11 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %10)
  store %struct.xenon_priv* %11, %struct.xenon_priv** %6, align 8
  %12 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %13 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %12, i32 0, i32 0
  %14 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %13, align 8
  store %struct.xenon_emmc_phy_params* %14, %struct.xenon_emmc_phy_params** %7, align 8
  %15 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %16 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOC_PAD_FIXED_1_8V, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @ARMADA_3700_SOC_PAD_1_8V, align 4
  %23 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %24 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @writel(i32 %22, i32 %26)
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %30 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SOC_PAD_SD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %28
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @MMC_SIGNAL_VOLTAGE_180, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @ARMADA_3700_SOC_PAD_1_8V, align 4
  %43 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %44 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @writel(i32 %42, i32 %46)
  br label %62

48:                                               ; preds = %35
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @MMC_SIGNAL_VOLTAGE_330, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* @ARMADA_3700_SOC_PAD_3_3V, align 4
  %56 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %57 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @writel(i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %48
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63, %21
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
