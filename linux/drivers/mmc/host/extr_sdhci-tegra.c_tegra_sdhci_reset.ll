; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_tegra_sdhci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_tegra = type { i32, i32, i32, i32, %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32 }

@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VENDOR_MISC_CTRL = common dso_local global i32 0, align 4
@SDHCI_TEGRA_VENDOR_CLOCK_CTRL = common dso_local global i32 0, align 4
@SDHCI_MISC_CTRL_ENABLE_SDHCI_SPEC_300 = common dso_local global i32 0, align 4
@SDHCI_MISC_CTRL_ENABLE_SDR50 = common dso_local global i32 0, align 4
@SDHCI_MISC_CTRL_ENABLE_DDR50 = common dso_local global i32 0, align 4
@SDHCI_MISC_CTRL_ENABLE_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TRIM_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_SPI_MODE_CLKEN_OVERRIDE = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_SDHCI_SPEC_300 = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_SDR50 = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_DDR50 = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_SDR104 = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_SDR50_TUNING_OVERRIDE = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CTRL_TRIM_SHIFT = common dso_local global i32 0, align 4
@NVQUIRK_HAS_PADCALIB = common dso_local global i32 0, align 4
@SDHCI_TEGRA_SDMEM_COMP_PADCTRL = common dso_local global i32 0, align 4
@SDHCI_TEGRA_SDMEM_COMP_PADCTRL_VREF_SEL_MASK = common dso_local global i32 0, align 4
@SDHCI_TEGRA_SDMEM_COMP_PADCTRL_VREF_SEL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*, i32)* @tegra_sdhci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sdhci_reset(%struct.sdhci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.sdhci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_tegra*, align 8
  %7 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %12 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %11)
  store %struct.sdhci_pltfm_host* %12, %struct.sdhci_pltfm_host** %5, align 8
  %13 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %14 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %13)
  store %struct.sdhci_tegra* %14, %struct.sdhci_tegra** %6, align 8
  %15 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %16 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %15, i32 0, i32 4
  %17 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %16, align 8
  store %struct.sdhci_tegra_soc_data* %17, %struct.sdhci_tegra_soc_data** %7, align 8
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sdhci_reset(%struct.sdhci_host* %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %155

26:                                               ; preds = %2
  %27 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %28 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tegra_sdhci_set_tap(%struct.sdhci_host* %27, i32 %30)
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %33 = load i32, i32* @SDHCI_TEGRA_VENDOR_MISC_CTRL, align 4
  %34 = call i32 @sdhci_readl(%struct.sdhci_host* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %36 = load i32, i32* @SDHCI_TEGRA_VENDOR_CLOCK_CTRL, align 4
  %37 = call i32 @sdhci_readl(%struct.sdhci_host* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDHCI_SPEC_300, align 4
  %39 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDR50, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_DDR50, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDR104, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @SDHCI_CLOCK_CTRL_TRIM_MASK, align 4
  %49 = load i32, i32* @SDHCI_CLOCK_CTRL_SPI_MODE_CLKEN_OVERRIDE, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %55 = call i64 @tegra_sdhci_is_pad_and_regulator_valid(%struct.sdhci_host* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %113

57:                                               ; preds = %26
  %58 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %59 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NVQUIRK_ENABLE_SDHCI_SPEC_300, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDHCI_SPEC_300, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %70 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NVQUIRK_ENABLE_SDR50, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDR50, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %81 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NVQUIRK_ENABLE_DDR50, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_DDR50, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %79
  %91 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %92 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NVQUIRK_ENABLE_SDR104, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDR104, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %103 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SDHCI_MISC_CTRL_ENABLE_SDR50, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32, i32* @SDHCI_CLOCK_CTRL_SDR50_TUNING_OVERRIDE, align 4
  %110 = load i32, i32* %9, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %108, %101
  br label %113

113:                                              ; preds = %112, %26
  %114 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %115 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SDHCI_CLOCK_CTRL_TRIM_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @SDHCI_TEGRA_VENDOR_MISC_CTRL, align 4
  %124 = call i32 @sdhci_writel(%struct.sdhci_host* %121, i32 %122, i32 %123)
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @SDHCI_TEGRA_VENDOR_CLOCK_CTRL, align 4
  %128 = call i32 @sdhci_writel(%struct.sdhci_host* %125, i32 %126, i32 %127)
  %129 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %7, align 8
  %130 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NVQUIRK_HAS_PADCALIB, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %113
  %136 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %137 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL, align 4
  %138 = call i32 @sdhci_readl(%struct.sdhci_host* %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL_VREF_SEL_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %10, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL_VREF_SEL_VAL, align 4
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load %struct.sdhci_host*, %struct.sdhci_host** %3, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @SDHCI_TEGRA_SDMEM_COMP_PADCTRL, align 4
  %149 = call i32 @sdhci_writel(%struct.sdhci_host* %146, i32 %147, i32 %148)
  %150 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %151 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %135, %113
  %153 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %6, align 8
  %154 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %25
  ret void
}

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_host*, i32) #1

declare dso_local i32 @tegra_sdhci_set_tap(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i64 @tegra_sdhci_is_pad_and_regulator_valid(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_writel(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
