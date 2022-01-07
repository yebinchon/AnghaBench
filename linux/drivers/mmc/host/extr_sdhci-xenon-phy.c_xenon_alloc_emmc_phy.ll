; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_alloc_emmc_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_alloc_emmc_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64, i32*, %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EMMC_5_0_PHY = common dso_local global i64 0, align 8
@xenon_emmc_5_0_phy_regs = common dso_local global i32 0, align 4
@xenon_emmc_5_1_phy_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_alloc_emmc_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_alloc_emmc_phy(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.xenon_priv*, align 8
  %6 = alloca %struct.xenon_emmc_phy_params*, align 8
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %7 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %8 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %7)
  store %struct.sdhci_pltfm_host* %8, %struct.sdhci_pltfm_host** %4, align 8
  %9 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %10 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %9)
  store %struct.xenon_priv* %10, %struct.xenon_priv** %5, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mmc_dev(i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.xenon_emmc_phy_params* @devm_kzalloc(i32 %14, i32 4, i32 %15)
  store %struct.xenon_emmc_phy_params* %16, %struct.xenon_emmc_phy_params** %6, align 8
  %17 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %18 = icmp ne %struct.xenon_emmc_phy_params* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %24 = load %struct.xenon_priv*, %struct.xenon_priv** %5, align 8
  %25 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %24, i32 0, i32 2
  store %struct.xenon_emmc_phy_params* %23, %struct.xenon_emmc_phy_params** %25, align 8
  %26 = load %struct.xenon_priv*, %struct.xenon_priv** %5, align 8
  %27 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EMMC_5_0_PHY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.xenon_priv*, %struct.xenon_priv** %5, align 8
  %33 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %32, i32 0, i32 1
  store i32* @xenon_emmc_5_0_phy_regs, i32** %33, align 8
  br label %37

34:                                               ; preds = %22
  %35 = load %struct.xenon_priv*, %struct.xenon_priv** %5, align 8
  %36 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %35, i32 0, i32 1
  store i32* @xenon_emmc_5_1_phy_regs, i32** %36, align 8
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local %struct.xenon_emmc_phy_params* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
