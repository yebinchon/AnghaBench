; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_st_mmcss_cconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-st.c_st_mmcss_cconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.sdhci_host = type { i64, %struct.mmc_host* }
%struct.mmc_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"st,sdhci-stih407\00", align 1
@ST_MMC_CCONFIG_2_DEFAULT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_3_DEFAULT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_4_DEFAULT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_5_DEFAULT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_1_DEFAULT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_REG_1 = common dso_local global i64 0, align 8
@BASE_CLK_FREQ_200 = common dso_local global i32 0, align 4
@BASE_CLK_FREQ_100 = common dso_local global i32 0, align 4
@BASE_CLK_FREQ_50 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_REG_2 = common dso_local global i64 0, align 8
@ST_MMC_CCONFIG_EMMC_SLOT_TYPE = common dso_local global i32 0, align 4
@ST_MMC_GP_OUTPUT_CD = common dso_local global i32 0, align 4
@ST_MMC_GP_OUTPUT = common dso_local global i64 0, align 8
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_1P8_VOLT = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_SDR50 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_TUNING_FOR_SDR50 = common dso_local global i32 0, align 4
@RETUNING_TIMER_CNT_MAX = common dso_local global i32 0, align 4
@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_SDR104 = common dso_local global i32 0, align 4
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_DDR50 = common dso_local global i32 0, align 4
@ST_MMC_CCONFIG_REG_3 = common dso_local global i64 0, align 8
@ST_MMC_CCONFIG_REG_4 = common dso_local global i64 0, align 8
@ST_MMC_CCONFIG_REG_5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.sdhci_host*)* @st_mmcss_cconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_mmcss_cconfig(%struct.device_node* %0, %struct.sdhci_host* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.sdhci_host* %1, %struct.sdhci_host** %4, align 8
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %5, align 8
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 1
  %15 = load %struct.mmc_host*, %struct.mmc_host** %14, align 8
  store %struct.mmc_host* %15, %struct.mmc_host** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @of_device_is_compatible(%struct.device_node* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %158

20:                                               ; preds = %2
  %21 = load i32, i32* @ST_MMC_CCONFIG_2_DEFAULT, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ST_MMC_CCONFIG_3_DEFAULT, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @ST_MMC_CCONFIG_4_DEFAULT, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @ST_MMC_CCONFIG_5_DEFAULT, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @ST_MMC_CCONFIG_1_DEFAULT, align 4
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ST_MMC_CCONFIG_REG_1, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %57 [
    i32 200000000, label %35
    i32 100000000, label %46
  ]

35:                                               ; preds = %20
  %36 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %37 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %40 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_set_rate(i32 %38, i32 %41)
  %43 = load i32, i32* @BASE_CLK_FREQ_200, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %65

46:                                               ; preds = %20
  %47 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %48 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_set_rate(i32 %49, i32 %52)
  %54 = load i32, i32* @BASE_CLK_FREQ_100, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %65

57:                                               ; preds = %20
  %58 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %59 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_set_rate(i32 %60, i32 50000000)
  %62 = load i32, i32* @BASE_CLK_FREQ_50, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %57, %46, %35
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %68 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ST_MMC_CCONFIG_REG_2, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel_relaxed(i32 %66, i64 %71)
  %73 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %74 = call i32 @mmc_card_is_removable(%struct.mmc_host* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* @ST_MMC_CCONFIG_EMMC_SLOT_TYPE, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %88

80:                                               ; preds = %65
  %81 = load i32, i32* @ST_MMC_GP_OUTPUT_CD, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ST_MMC_GP_OUTPUT, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel_relaxed(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %80, %76
  %89 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %90 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load i32, i32* @ST_MMC_CCONFIG_1P8_VOLT, align 4
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @ST_MMC_CCONFIG_SDR50, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @ST_MMC_CCONFIG_TUNING_FOR_SDR50, align 4
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* @RETUNING_TIMER_CNT_MAX, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %95, %88
  %109 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load i32, i32* @ST_MMC_CCONFIG_1P8_VOLT, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* @ST_MMC_CCONFIG_SDR104, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @RETUNING_TIMER_CNT_MAX, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %115, %108
  %126 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %127 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i32, i32* @ST_MMC_CCONFIG_DDR50, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %132, %125
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %139 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ST_MMC_CCONFIG_REG_3, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel_relaxed(i32 %137, i64 %142)
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %146 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ST_MMC_CCONFIG_REG_4, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel_relaxed(i32 %144, i64 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %153 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ST_MMC_CCONFIG_REG_5, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel_relaxed(i32 %151, i64 %156)
  br label %158

158:                                              ; preds = %136, %19
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @mmc_card_is_removable(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
