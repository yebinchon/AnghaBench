; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_phy_adj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_phy_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64 }
%struct.mmc_ios = type { i64, i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64, i64, i64 }

@MMC_TIMING_LEGACY = common dso_local global i64 0, align 8
@XENON_DEFAULT_SDCLK_FREQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenon_phy_adj(%struct.sdhci_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.mmc_ios*, align 8
  %6 = alloca %struct.sdhci_pltfm_host*, align 8
  %7 = alloca %struct.xenon_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %4, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %5, align 8
  %9 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %10 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %9)
  store %struct.sdhci_pltfm_host* %10, %struct.sdhci_pltfm_host** %6, align 8
  %11 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %6, align 8
  %12 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %11)
  store %struct.xenon_priv* %12, %struct.xenon_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %19 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %22 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %25 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %20
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %33 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %41 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %83

45:                                               ; preds = %36, %28, %20
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %47 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %48 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @xenon_emmc_phy_set(%struct.sdhci_host* %46, i64 %49)
  %51 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %55 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %57 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %60 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.xenon_priv*, %struct.xenon_priv** %7, align 8
  %65 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MMC_TIMING_LEGACY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %83

72:                                               ; preds = %45
  %73 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %74 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @XENON_DEFAULT_SDCLK_FREQ, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %80 = call i32 @xenon_hs_delay_adj(%struct.sdhci_host* %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %71, %44, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @xenon_emmc_phy_set(%struct.sdhci_host*, i64) #1

declare dso_local i32 @xenon_hs_delay_adj(%struct.sdhci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
