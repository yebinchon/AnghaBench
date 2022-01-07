; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_pad_autocalib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_pad_autocalib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { %struct.sdhci_tegra_autocal_offsets }
%struct.sdhci_tegra_autocal_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@SDHCI_TEGRA_AUTO_CAL_CONFIG = common dso_local global i32 0, align 4
@SDHCI_AUTO_CAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_AUTO_CAL_START = common dso_local global i32 0, align 4
@SDHCI_TEGRA_AUTO_CAL_STATUS = common dso_local global i64 0, align 8
@SDHCI_TEGRA_AUTO_CAL_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Pad autocal timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting drive strengths failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @tegra_sdhci_pad_autocalib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_pad_autocalib(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca %struct.sdhci_pltfm_host*, align 8
  %4 = alloca %struct.sdhci_tegra*, align 8
  %5 = alloca %struct.sdhci_tegra_autocal_offsets, align 4
  %6 = alloca %struct.mmc_ios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %3, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %3, align 8
  %14 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_tegra* %14, %struct.sdhci_tegra** %4, align 8
  %15 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %4, align 8
  %16 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %15, i32 0, i32 0
  %17 = bitcast %struct.sdhci_tegra_autocal_offsets* %5 to i8*
  %18 = bitcast %struct.sdhci_tegra_autocal_offsets* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 32, i1 false)
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.mmc_ios* %22, %struct.mmc_ios** %6, align 8
  %23 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %24 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %40 [
    i32 128, label %26
    i32 129, label %33
  ]

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  store i32 %32, i32* %8, align 4
  br label %61

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %36, %38
  store i32 %39, i32* %8, align 4
  br label %61

40:                                               ; preds = %1
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %49, %51
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds %struct.sdhci_tegra_autocal_offsets, %struct.sdhci_tegra_autocal_offsets* %5, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %33, %26
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @tegra_sdhci_set_pad_autocal_offset(%struct.sdhci_host* %62, i32 %63)
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %66 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %65, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %68 = call i32 @tegra_sdhci_configure_cal_pad(%struct.sdhci_host* %67, i32 1)
  %69 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %70 = load i32, i32* @SDHCI_TEGRA_AUTO_CAL_CONFIG, align 4
  %71 = call i32 @sdhci_readl(%struct.sdhci_host* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* @SDHCI_AUTO_CAL_ENABLE, align 4
  %73 = load i32, i32* @SDHCI_AUTO_CAL_START, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @SDHCI_TEGRA_AUTO_CAL_CONFIG, align 4
  %80 = call i32 @sdhci_writel(%struct.sdhci_host* %77, i32 %78, i32 %79)
  %81 = call i32 @usleep_range(i32 1, i32 2)
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SDHCI_TEGRA_AUTO_CAL_STATUS, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @SDHCI_TEGRA_AUTO_CAL_ACTIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @readl_poll_timeout(i64 %86, i32 %87, i32 %93, i32 1000, i32 10000)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %96 = call i32 @tegra_sdhci_configure_cal_pad(%struct.sdhci_host* %95, i32 0)
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %61
  %103 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %104 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = call i32 @mmc_dev(%struct.TYPE_2__* %105)
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %109 = load i32, i32* @SDHCI_TEGRA_AUTO_CAL_CONFIG, align 4
  %110 = call i32 @sdhci_readl(%struct.sdhci_host* %108, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* @SDHCI_AUTO_CAL_ENABLE, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @SDHCI_TEGRA_AUTO_CAL_CONFIG, align 4
  %118 = call i32 @sdhci_writel(%struct.sdhci_host* %115, i32 %116, i32 %117)
  %119 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %120 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %121 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host* %119, i32 %122, i32 0)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %102
  %127 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %128 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = call i32 @mmc_dev(%struct.TYPE_2__* %129)
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %126, %102
  br label %134

134:                                              ; preds = %133, %61
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tegra_sdhci_set_pad_autocal_offset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tegra_sdhci_configure_card_clk(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tegra_sdhci_configure_cal_pad(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_2__*) #1

declare dso_local i32 @tegra_sdhci_set_padctrl(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
