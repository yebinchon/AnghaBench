; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_enable_phy_dll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_enable_phy_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@SDHCI_SPRD_REG_32_DLL_CFG = common dso_local global i32 0, align 4
@SDHCI_SPRD_DLL_EN = common dso_local global i32 0, align 4
@SDHCI_SPRD_DLL_ALL_CPST_EN = common dso_local global i32 0, align 4
@SDHCI_SPRD_DLL_SEARCH_MODE = common dso_local global i32 0, align 4
@SDHCI_SPRD_DLL_INIT_COUNT = common dso_local global i32 0, align 4
@SDHCI_SPRD_DLL_PHASE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_sprd_enable_phy_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_sprd_enable_phy_dll(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %6 = call i32 @sdhci_readl(%struct.sdhci_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @SDHCI_SPRD_DLL_EN, align 4
  %8 = load i32, i32* @SDHCI_SPRD_DLL_ALL_CPST_EN, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %16 = call i32 @sdhci_writel(%struct.sdhci_host* %13, i32 %14, i32 %15)
  %17 = call i32 @usleep_range(i32 1000, i32 1250)
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %19 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %20 = call i32 @sdhci_readl(%struct.sdhci_host* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @SDHCI_SPRD_DLL_ALL_CPST_EN, align 4
  %22 = load i32, i32* @SDHCI_SPRD_DLL_SEARCH_MODE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SDHCI_SPRD_DLL_INIT_COUNT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SDHCI_SPRD_DLL_PHASE_INTERNAL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %33 = call i32 @sdhci_writel(%struct.sdhci_host* %30, i32 %31, i32 %32)
  %34 = call i32 @usleep_range(i32 1000, i32 1250)
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %36 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %37 = call i32 @sdhci_readl(%struct.sdhci_host* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @SDHCI_SPRD_DLL_EN, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @SDHCI_SPRD_REG_32_DLL_CFG, align 4
  %44 = call i32 @sdhci_writel(%struct.sdhci_host* %41, i32 %42, i32 %43)
  %45 = call i32 @usleep_range(i32 1000, i32 1250)
  ret void
}

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
