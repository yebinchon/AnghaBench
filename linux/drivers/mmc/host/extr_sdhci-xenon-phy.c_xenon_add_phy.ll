; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_add_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_add_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { i64, i32 }

@phy_types = common dso_local global i32 0, align 4
@NR_PHY_TYPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to determine PHY name %s. Use default eMMC 5.1 PHY\0A\00", align 1
@EMMC_5_1_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.sdhci_host*, i8*)* @xenon_add_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_add_phy(%struct.device_node* %0, %struct.sdhci_host* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca %struct.xenon_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.sdhci_host* %1, %struct.sdhci_host** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %8, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %14 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.xenon_priv* %14, %struct.xenon_priv** %9, align 8
  %15 = load i32, i32* @phy_types, align 4
  %16 = load i32, i32* @NR_PHY_TYPES, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @match_string(i32 %15, i32 %16, i8* %17)
  %19 = load %struct.xenon_priv*, %struct.xenon_priv** %9, align 8
  %20 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.xenon_priv*, %struct.xenon_priv** %9, align 8
  %22 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mmc_dev(i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i64, i64* @EMMC_5_1_PHY, align 8
  %33 = load %struct.xenon_priv*, %struct.xenon_priv** %9, align 8
  %34 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %25, %3
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %37 = call i32 @xenon_alloc_emmc_phy(%struct.sdhci_host* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %35
  %43 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load %struct.xenon_priv*, %struct.xenon_priv** %9, align 8
  %46 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @xenon_emmc_phy_parse_param_dt(%struct.sdhci_host* %43, %struct.device_node* %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %40
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i64 @match_string(i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @xenon_alloc_emmc_phy(%struct.sdhci_host*) #1

declare dso_local i32 @xenon_emmc_phy_parse_param_dt(%struct.sdhci_host*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
