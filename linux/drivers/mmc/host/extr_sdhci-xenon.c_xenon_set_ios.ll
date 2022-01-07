; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon.c_xenon_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64 }
%struct.sdhci_host = type { i32, i64, i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i32 }

@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS200 = common dso_local global i64 0, align 8
@MMC_TIMING_MMC_HS = common dso_local global i64 0, align 8
@SDHCI_QUIRK2_PRESET_VALUE_BROKEN = common dso_local global i32 0, align 4
@SDHCI_PV_ENABLED = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL2 = common dso_local global i32 0, align 4
@SDHCI_CTRL_PRESET_VAL_ENABLE = common dso_local global i32 0, align 4
@XENON_DEFAULT_SDCLK_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @xenon_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdhci_host*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.xenon_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.sdhci_host* @mmc_priv(%struct.mmc_host* %9)
  store %struct.sdhci_host* %10, %struct.sdhci_host** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %6, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %14 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.xenon_priv* %14, %struct.xenon_priv** %7, align 8
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_TIMING_MMC_HS200, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MMC_TIMING_MMC_HS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26, %20, %2
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %34 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @SDHCI_QUIRK2_PRESET_VALUE_BROKEN, align 4
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @SDHCI_PV_ENABLED, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %43 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %47 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %48 = call i32 @sdhci_readw(%struct.sdhci_host* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SDHCI_CTRL_PRESET_VAL_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SDHCI_HOST_CONTROL2, align 4
  %56 = call i32 @sdhci_writew(%struct.sdhci_host* %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %26
  %58 = load i32, i32* @SDHCI_QUIRK2_PRESET_VALUE_BROKEN, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %61 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %32
  %65 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %67 = call i32 @sdhci_set_ios(%struct.mmc_host* %65, %struct.mmc_ios* %66)
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %69 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %70 = call i32 @xenon_phy_adj(%struct.sdhci_host* %68, %struct.mmc_ios* %69)
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %72 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @XENON_DEFAULT_SDCLK_FREQ, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %64
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %5, align 8
  %78 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %79 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xenon_set_sdclk_off_idle(%struct.sdhci_host* %77, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %76, %64
  ret void
}

declare dso_local %struct.sdhci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writew(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @sdhci_set_ios(%struct.mmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @xenon_phy_adj(%struct.sdhci_host*, %struct.mmc_ios*) #1

declare dso_local i32 @xenon_set_sdclk_off_idle(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
