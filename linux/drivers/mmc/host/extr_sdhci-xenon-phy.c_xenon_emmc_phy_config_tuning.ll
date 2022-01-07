; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_config_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-xenon-phy.c_xenon_emmc_phy_config_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i64, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.xenon_priv = type { %struct.xenon_emmc_phy_params* }
%struct.xenon_emmc_phy_params = type { i32, i32 }

@MMC_HIGH_52_MAX_DTR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XENON_SLOT_DLL_CUR_DLY_VAL = common dso_local global i32 0, align 4
@XENON_TUNING_STEP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"HS200 TUNING_STEP %d is larger than MAX value\0A\00", align 1
@XENON_SLOT_OP_STATUS_CTRL = common dso_local global i32 0, align 4
@XENON_TUN_CONSECUTIVE_TIMES_MASK = common dso_local global i32 0, align 4
@XENON_TUN_CONSECUTIVE_TIMES_SHIFT = common dso_local global i32 0, align 4
@XENON_TUNING_STEP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*)* @xenon_emmc_phy_config_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenon_emmc_phy_config_tuning(%struct.sdhci_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.xenon_priv*, align 8
  %6 = alloca %struct.xenon_emmc_phy_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %11 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %10)
  store %struct.sdhci_pltfm_host* %11, %struct.sdhci_pltfm_host** %4, align 8
  %12 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %13 = call %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %12)
  store %struct.xenon_priv* %13, %struct.xenon_priv** %5, align 8
  %14 = load %struct.xenon_priv*, %struct.xenon_priv** %5, align 8
  %15 = getelementptr inbounds %struct.xenon_priv, %struct.xenon_priv* %14, i32 0, i32 0
  %16 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %15, align 8
  store %struct.xenon_emmc_phy_params* %16, %struct.xenon_emmc_phy_params** %6, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MMC_HIGH_52_MAX_DTR, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %87

25:                                               ; preds = %1
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %27 = call i32 @xenon_emmc_phy_enable_dll(%struct.sdhci_host* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %25
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %34 = load i32, i32* @XENON_SLOT_DLL_CUR_DLY_VAL, align 4
  %35 = call i32 @sdhci_readl(%struct.sdhci_host* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %38 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @XENON_TUNING_STEP_MASK, align 4
  %43 = icmp sgt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mmc_dev(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @XENON_TUNING_STEP_MASK, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %47, %32
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %57 = load i32, i32* @XENON_SLOT_OP_STATUS_CTRL, align 4
  %58 = call i32 @sdhci_readl(%struct.sdhci_host* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @XENON_TUN_CONSECUTIVE_TIMES_MASK, align 4
  %60 = load i32, i32* @XENON_TUN_CONSECUTIVE_TIMES_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.xenon_emmc_phy_params*, %struct.xenon_emmc_phy_params** %6, align 8
  %66 = getelementptr inbounds %struct.xenon_emmc_phy_params, %struct.xenon_emmc_phy_params* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @XENON_TUN_CONSECUTIVE_TIMES_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @XENON_TUNING_STEP_MASK, align 4
  %73 = load i32, i32* @XENON_TUNING_STEP_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @XENON_TUNING_STEP_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @XENON_SLOT_OP_STATUS_CTRL, align 4
  %86 = call i32 @sdhci_writel(%struct.sdhci_host* %83, i32 %84, i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %55, %30, %22
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.xenon_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @xenon_emmc_phy_enable_dll(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
