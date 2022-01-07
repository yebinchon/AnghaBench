; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { %struct.xenon_emmc_phy_regs* }
%struct.xenon_emmc_phy_regs = type { i32 }

@XENON_PHY_INITIALIZAION = common dso_local global i32 0, align 4
@XENON_FC_SYNC_RST_DURATION_SHIFT = common dso_local global i32 0, align 4
@XENON_FC_SYNC_RST_DURATION_MASK = common dso_local global i32 0, align 4
@XENON_FC_SYNC_RST_EN_DURATION_SHIFT = common dso_local global i32 0, align 4
@XENON_FC_SYNC_RST_EN_DURATION_MASK = common dso_local global i32 0, align 4
@XENON_FC_SYNC_EN_DURATION_SHIFT = common dso_local global i32 0, align 4
@XENON_FC_SYNC_EN_DURATION_MASK = common dso_local global i32 0, align 4
@XENON_WAIT_CYCLE_BEFORE_USING_SHIFT = common dso_local global i32 0, align 4
@XENON_WAIT_CYCLE_BEFORE_USING_MASK = common dso_local global i32 0, align 4
@XENON_LOWEST_SDCLK_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"eMMC PHY init cannot complete after %d us\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_emmc_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_emmc_phy_init(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.xenon_priv*, align 8
  %9 = alloca %struct.xenon_emmc_phy_regs*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %7, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %13 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.xenon_priv* %13, %struct.xenon_priv** %8, align 8
  %14 = load %struct.xenon_priv*, %struct.xenon_priv** %8, align 8
  %15 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %14, i32 0, i32 0
  %16 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %15, align 8
  store %struct.xenon_emmc_phy_regs* %16, %struct.xenon_emmc_phy_regs** %9, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %19 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sdhci_readl(%struct.sdhci_host* %17, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @XENON_PHY_INITIALIZAION, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %28 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sdhci_writel(%struct.sdhci_host* %25, i32 %26, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @XENON_FC_SYNC_RST_DURATION_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @XENON_FC_SYNC_RST_DURATION_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @XENON_FC_SYNC_RST_EN_DURATION_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @XENON_FC_SYNC_RST_EN_DURATION_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @XENON_FC_SYNC_EN_DURATION_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @XENON_FC_SYNC_EN_DURATION_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @XENON_WAIT_CYCLE_BEFORE_USING_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* @XENON_WAIT_CYCLE_BEFORE_USING_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 8
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 20
  store i32 %60, i32* %5, align 4
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %1
  %67 = load i32, i32* @XENON_LOWEST_SDCLK_FREQ, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %1
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @udelay(i32 %74)
  %76 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %77 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %9, align 8
  %78 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @sdhci_readl(%struct.sdhci_host* %76, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @XENON_PHY_INITIALIZAION, align 4
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %68
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %88 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mmc_dev(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
