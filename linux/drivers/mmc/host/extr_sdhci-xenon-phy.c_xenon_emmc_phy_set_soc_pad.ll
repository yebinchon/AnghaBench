; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_set_soc_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_set_soc_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sdhci_host.0*, i8)*, i32 }
%struct.sdhci_host.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i8)* @xenon_emmc_phy_set_soc_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon_emmc_phy_set_soc_pad(%struct.sdhci_host* %0, i8 zeroext %1) #0 {
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
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %23 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sdhci_host.0*, i8)*, i32 (%struct.sdhci_host.0*, i8)** %24, align 8
  %26 = icmp ne i32 (%struct.sdhci_host.0*, i8)* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %7, align 8
  %29 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.sdhci_host.0*, i8)*, i32 (%struct.sdhci_host.0*, i8)** %30, align 8
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = bitcast %struct.sdhci_host* %32 to %struct.sdhci_host.0*
  %34 = load i8, i8* %4, align 1
  %35 = call i32 %31(%struct.sdhci_host.0* %33, i8 zeroext %34)
  br label %36

36:                                               ; preds = %20, %27, %21
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
