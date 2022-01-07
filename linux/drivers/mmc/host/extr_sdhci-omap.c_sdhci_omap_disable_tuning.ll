; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_disable_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_disable_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_omap_host = type { i32 }

@SDHCI_OMAP_AC12 = common dso_local global i32 0, align 4
@AC12_SCLK_SEL = common dso_local global i32 0, align 4
@SDHCI_OMAP_DLL = common dso_local global i32 0, align 4
@DLL_FORCE_VALUE = common dso_local global i32 0, align 4
@DLL_SWT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_omap_host*)* @sdhci_omap_disable_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_omap_disable_tuning(%struct.sdhci_omap_host* %0) #0 {
  %2 = alloca %struct.sdhci_omap_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_omap_host* %0, %struct.sdhci_omap_host** %2, align 8
  %4 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %5 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %6 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @AC12_SCLK_SEL, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %12 = load i32, i32* @SDHCI_OMAP_AC12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %11, i32 %12, i32 %13)
  %15 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %16 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %17 = call i32 @sdhci_omap_readl(%struct.sdhci_omap_host* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @DLL_FORCE_VALUE, align 4
  %19 = load i32, i32* @DLL_SWT, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %2, align 8
  %25 = load i32, i32* @SDHCI_OMAP_DLL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sdhci_omap_writel(%struct.sdhci_omap_host* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @sdhci_omap_readl(%struct.sdhci_omap_host*, i32) #1

declare dso_local i32 @sdhci_omap_writel(%struct.sdhci_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
