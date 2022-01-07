; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_disable_strobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_disable_strobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64 }

@XENON_SLOT_EMMC_CTRL = common dso_local global i32 0, align 4
@XENON_ENABLE_DATA_STROBE = common dso_local global i32 0, align 4
@XENON_ENABLE_RESP_STROBE = common dso_local global i32 0, align 4
@EMMC_5_0_PHY = common dso_local global i64 0, align 8
@XENON_EMMC_5_0_PHY_PAD_CONTROL = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_QSP_PD = common dso_local global i32 0, align 4
@XENON_EMMC5_FC_QSP_PU = common dso_local global i32 0, align 4
@XENON_EMMC_PHY_PAD_CONTROL1 = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_QSP_PD = common dso_local global i32 0, align 4
@XENON_EMMC5_1_FC_QSP_PU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @xenon_emmc_phy_disable_strobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_emmc_phy_disable_strobe(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.xenon_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %6 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %7 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %6)
  store %struct.sdhci_pltfm_host* %7, %struct.sdhci_pltfm_host** %3, align 8
  %8 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %9 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %8)
  store %struct.xenon_priv* %9, %struct.xenon_priv** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %12 = call i32 @sdhci_readl(%struct.sdhci_host* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @XENON_ENABLE_DATA_STROBE, align 4
  %14 = load i32, i32* @XENON_ENABLE_RESP_STROBE, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %22 = call i32 @sdhci_writel(%struct.sdhci_host* %19, i32 %20, i32 %21)
  %23 = load %struct.xenon_priv*, %struct.xenon_priv** %4, align 8
  %24 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EMMC_5_0_PHY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %30 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %31 = call i32 @sdhci_readl(%struct.sdhci_host* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @XENON_EMMC5_FC_QSP_PD, align 4
  %33 = load i32, i32* @XENON_EMMC5_FC_QSP_PU, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %41 = call i32 @sdhci_writel(%struct.sdhci_host* %38, i32 %39, i32 %40)
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %44 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %45 = call i32 @sdhci_readl(%struct.sdhci_host* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @XENON_EMMC5_1_FC_QSP_PD, align 4
  %47 = load i32, i32* @XENON_EMMC5_1_FC_QSP_PU, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %42, %28
  ret void
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
