; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_strobe_delay_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_strobe_delay_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64 }

@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@MMC_HIGH_52_MAX_DTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"starts HS400 strobe delay adjustment\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @xenon_emmc_phy_strobe_delay_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_emmc_phy_strobe_delay_adj(%struct.sdhci_host* %0) #0 {
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
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %91

19:                                               ; preds = %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_HIGH_52_MAX_DTR, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %91

26:                                               ; preds = %19
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call i32 @mmc_dev(%struct.TYPE_4__* %29)
  %31 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = call i32 @xenon_emmc_phy_enable_dll(%struct.sdhci_host* %32)
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %35 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %36 = call i32 @sdhci_readl(%struct.sdhci_host* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @XENON_ENABLE_DATA_STROBE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %26
  %48 = load i32, i32* @XENON_ENABLE_RESP_STROBE, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %26
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @XENON_SLOT_EMMC_CTRL, align 4
  %55 = call i32 @sdhci_writel(%struct.sdhci_host* %52, i32 %53, i32 %54)
  %56 = load %struct.xenon_priv*, %struct.xenon_priv** %4, align 8
  %57 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EMMC_5_0_PHY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %51
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %63 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %64 = call i32 @sdhci_readl(%struct.sdhci_host* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @XENON_EMMC5_FC_QSP_PD, align 4
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* @XENON_EMMC5_FC_QSP_PU, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @XENON_EMMC_5_0_PHY_PAD_CONTROL, align 4
  %75 = call i32 @sdhci_writel(%struct.sdhci_host* %72, i32 %73, i32 %74)
  br label %91

76:                                               ; preds = %51
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %78 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %79 = call i32 @sdhci_readl(%struct.sdhci_host* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @XENON_EMMC5_1_FC_QSP_PD, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @XENON_EMMC5_1_FC_QSP_PU, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @XENON_EMMC_PHY_PAD_CONTROL1, align 4
  %90 = call i32 @sdhci_writel(%struct.sdhci_host* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %18, %25, %76, %61
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @xenon_emmc_phy_enable_dll(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
