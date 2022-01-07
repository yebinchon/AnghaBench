; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_enable_dll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_enable_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64, %struct.xenon_emmc_phy_regs* }
%struct.xenon_emmc_phy_regs = type { i32, i32 }

@MMC_HIGH_52_MAX_DTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XENON_DLL_ENABLE = common dso_local global i32 0, align 4
@XENON_DLL_FAST_LOCK = common dso_local global i32 0, align 4
@XENON_DLL_PHASE_MASK = common dso_local global i32 0, align 4
@XENON_DLL_PHSEL0_SHIFT = common dso_local global i32 0, align 4
@XENON_DLL_PHSEL1_SHIFT = common dso_local global i32 0, align 4
@XENON_DLL_PHASE_90_DEGREE = common dso_local global i32 0, align 4
@XENON_DLL_BYPASS_EN = common dso_local global i32 0, align 4
@EMMC_5_1_PHY = common dso_local global i64 0, align 8
@XENON_DLL_REFCLK_SEL = common dso_local global i32 0, align 4
@XENON_SLOT_EXT_PRESENT_STATE = common dso_local global i32 0, align 4
@XENON_DLL_LOCK_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wait for DLL Lock time-out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_emmc_phy_enable_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_emmc_phy_enable_dll(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.xenon_priv*, align 8
  %7 = alloca %struct.xenon_emmc_phy_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %5, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %13 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.xenon_priv* %13, %struct.xenon_priv** %6, align 8
  %14 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %15 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %14, i32 0, i32 1
  %16 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %15, align 8
  store %struct.xenon_emmc_phy_regs* %16, %struct.xenon_emmc_phy_regs** %7, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MMC_HIGH_52_MAX_DTR, align 8
  %21 = icmp sle i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %122

28:                                               ; preds = %1
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %30 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %7, align 8
  %31 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sdhci_readl(%struct.sdhci_host* %29, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @XENON_DLL_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %122

39:                                               ; preds = %28
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %41 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %7, align 8
  %42 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sdhci_readl(%struct.sdhci_host* %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @XENON_DLL_ENABLE, align 4
  %46 = load i32, i32* @XENON_DLL_FAST_LOCK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @XENON_DLL_PHASE_MASK, align 4
  %51 = load i32, i32* @XENON_DLL_PHSEL0_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* @XENON_DLL_PHASE_MASK, align 4
  %54 = load i32, i32* @XENON_DLL_PHSEL1_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @XENON_DLL_PHASE_90_DEGREE, align 4
  %61 = load i32, i32* @XENON_DLL_PHSEL0_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @XENON_DLL_PHASE_90_DEGREE, align 4
  %64 = load i32, i32* @XENON_DLL_PHSEL1_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @XENON_DLL_BYPASS_EN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %7, align 8
  %74 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.xenon_priv*, %struct.xenon_priv** %6, align 8
  %79 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EMMC_5_1_PHY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %39
  %84 = load i32, i32* @XENON_DLL_REFCLK_SEL, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %39
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.xenon_emmc_phy_regs*, %struct.xenon_emmc_phy_regs** %7, align 8
  %92 = getelementptr inbounds %struct.xenon_emmc_phy_regs, %struct.xenon_emmc_phy_regs* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @sdhci_writel(%struct.sdhci_host* %89, i32 %90, i32 %93)
  %95 = call i32 (...) @ktime_get()
  %96 = call i32 @ktime_add_ms(i32 %95, i32 32)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %88, %119
  %98 = call i32 (...) @ktime_get()
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ktime_after(i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %102 = load i32, i32* @XENON_SLOT_EXT_PRESENT_STATE, align 4
  %103 = call i32 @sdhci_readw(%struct.sdhci_host* %101, i32 %102)
  %104 = load i32, i32* @XENON_DLL_LOCK_STATE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %121

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %113 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @mmc_dev(i32 %114)
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %122

119:                                              ; preds = %108
  %120 = call i32 @udelay(i32 100)
  br label %97

121:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %111, %38, %25
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @ktime_add_ms(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_after(i32, i32) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
