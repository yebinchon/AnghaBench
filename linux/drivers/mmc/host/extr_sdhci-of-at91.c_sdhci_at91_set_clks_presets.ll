; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_set_clks_presets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_set_clks_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdhci_host = type { i64 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_at91_priv = type { i32, i32, i32 }

@SDHCI_CAPABILITIES = common dso_local global i64 0, align 8
@SDHCI_CAPABILITIES_1 = common dso_local global i64 0, align 8
@SDHCI_CLOCK_V3_BASE_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_BASE_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CLOCK_MUL_MASK = common dso_local global i32 0, align 4
@SDHCI_CLOCK_MUL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed to set gck\00", align 1
@SDMMC_CACR_KEY = common dso_local global i32 0, align 4
@SDMMC_CACR_CAPWREN = common dso_local global i32 0, align 4
@SDMMC_CACR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"update clk mul to %u as gck rate is %u Hz\0A\00", align 1
@SDHCI_AT91_PRESET_COMMON_CONF = common dso_local global i32 0, align 4
@SDHCI_PRESET_FOR_SDR12 = common dso_local global i64 0, align 8
@SDHCI_PRESET_FOR_SDR25 = common dso_local global i64 0, align 8
@SDHCI_PRESET_FOR_SDR50 = common dso_local global i64 0, align 8
@SDHCI_PRESET_FOR_SDR104 = common dso_local global i64 0, align 8
@SDHCI_PRESET_FOR_DDR50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sdhci_at91_set_clks_presets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_at91_set_clks_presets(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_at91_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.sdhci_host* @dev_get_drvdata(%struct.device* %15)
  store %struct.sdhci_host* %16, %struct.sdhci_host** %4, align 8
  %17 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %18 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %17)
  store %struct.sdhci_pltfm_host* %18, %struct.sdhci_pltfm_host** %5, align 8
  %19 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %20 = call %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %19)
  store %struct.sdhci_at91_priv* %20, %struct.sdhci_at91_priv** %6, align 8
  %21 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %22 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  %25 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %26 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SDHCI_CAPABILITIES, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %32 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SDHCI_CAPABILITIES_1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SDHCI_CLOCK_V3_BASE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @SDHCI_CLOCK_BASE_SHIFT, align 4
  %41 = lshr i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SDHCI_CLOCK_MUL_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SDHCI_CLOCK_MUL_SHIFT, align 4
  %46 = lshr i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul i32 %47, 1000000
  %49 = load i32, i32* %11, align 4
  %50 = add i32 %49, 1
  %51 = mul i32 %48, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %53 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @clk_set_rate(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %1
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %63 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_disable_unprepare(i32 %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %187

67:                                               ; preds = %1
  %68 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %69 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @clk_get_rate(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul i32 %77, 1000000
  %79 = udiv i32 %76, %78
  %80 = sub i32 %79, 1
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @SDHCI_CLOCK_MUL_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SDHCI_CLOCK_MUL_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* @SDHCI_CLOCK_MUL_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* @SDMMC_CACR_KEY, align 4
  %93 = load i32, i32* @SDMMC_CACR_CAPWREN, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %96 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SDMMC_CACR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %103 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SDHCI_CAPABILITIES_1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %109 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SDMMC_CACR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 0, i64 %112)
  %114 = load %struct.device*, %struct.device** %3, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @dev_info(%struct.device* %114, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %75, %67
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @DIV_ROUND_UP(i32 %119, i32 24000000)
  %121 = sub nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* @SDHCI_AT91_PRESET_COMMON_CONF, align 4
  %123 = load i32, i32* %14, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %126 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SDHCI_PRESET_FOR_SDR12, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writew(i32 %124, i64 %129)
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @DIV_ROUND_UP(i32 %131, i32 50000000)
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* @SDHCI_AT91_PRESET_COMMON_CONF, align 4
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %138 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @SDHCI_PRESET_FOR_SDR25, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writew(i32 %136, i64 %141)
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @DIV_ROUND_UP(i32 %143, i32 100000000)
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* @SDHCI_AT91_PRESET_COMMON_CONF, align 4
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %150 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SDHCI_PRESET_FOR_SDR50, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writew(i32 %148, i64 %153)
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @DIV_ROUND_UP(i32 %155, i32 120000000)
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* @SDHCI_AT91_PRESET_COMMON_CONF, align 4
  %159 = load i32, i32* %14, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %162 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SDHCI_PRESET_FOR_SDR104, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writew(i32 %160, i64 %165)
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @DIV_ROUND_UP(i32 %167, i32 50000000)
  %169 = sub nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* @SDHCI_AT91_PRESET_COMMON_CONF, align 4
  %171 = load i32, i32* %14, align 4
  %172 = or i32 %170, %171
  %173 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %174 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @SDHCI_PRESET_FOR_DDR50, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writew(i32 %172, i64 %177)
  %179 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %180 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @clk_prepare_enable(i32 %181)
  %183 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %6, align 8
  %184 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @clk_prepare_enable(i32 %185)
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %118, %59
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.sdhci_host* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
