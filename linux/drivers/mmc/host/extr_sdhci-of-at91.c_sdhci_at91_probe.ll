; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-at91.c_sdhci_at91_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { %struct.sdhci_pltfm_data* }
%struct.sdhci_pltfm_data = type { i32 }
%struct.sdhci_host = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_at91_priv = type { i32, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host* }

@sdhci_at91_dt_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"baseclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get baseclk\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hclock\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to get hclock\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"multclk\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"failed to get multclk\0A\00", align 1
@SDHCI_QUIRK2_BROKEN_HS200 = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_CARD_DETECTION = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_at91_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_at91_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.sdhci_pltfm_data*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_at91_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @sdhci_at91_dt_match, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, i32* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %208

19:                                               ; preds = %1
  %20 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %20, i32 0, i32 0
  %22 = load %struct.sdhci_pltfm_data*, %struct.sdhci_pltfm_data** %21, align 8
  store %struct.sdhci_pltfm_data* %22, %struct.sdhci_pltfm_data** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.sdhci_pltfm_data*, %struct.sdhci_pltfm_data** %5, align 8
  %25 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %23, %struct.sdhci_pltfm_data* %24, i32 32)
  store %struct.sdhci_host* %25, %struct.sdhci_host** %6, align 8
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %27 = call i64 @IS_ERR(%struct.sdhci_host* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.sdhci_host* %30)
  store i32 %31, i32* %2, align 4
  br label %208

32:                                               ; preds = %19
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %34 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %33)
  store %struct.sdhci_pltfm_host* %34, %struct.sdhci_pltfm_host** %7, align 8
  %35 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %36 = call %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %35)
  store %struct.sdhci_at91_priv* %36, %struct.sdhci_at91_priv** %8, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i8* @devm_clk_get(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = bitcast i8* %39 to %struct.sdhci_host*
  %41 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %42 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %41, i32 0, i32 2
  store %struct.sdhci_host* %40, %struct.sdhci_host** %42, align 8
  %43 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %44 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %43, i32 0, i32 2
  %45 = load %struct.sdhci_host*, %struct.sdhci_host** %44, align 8
  %46 = call i64 @IS_ERR(%struct.sdhci_host* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %32
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %53 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %52, i32 0, i32 2
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.sdhci_host* %54)
  store i32 %55, i32* %2, align 4
  br label %208

56:                                               ; preds = %32
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i8* @devm_clk_get(i32* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %60 = bitcast i8* %59 to %struct.sdhci_host*
  %61 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %62 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %61, i32 0, i32 1
  store %struct.sdhci_host* %60, %struct.sdhci_host** %62, align 8
  %63 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %64 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %63, i32 0, i32 1
  %65 = load %struct.sdhci_host*, %struct.sdhci_host** %64, align 8
  %66 = call i64 @IS_ERR(%struct.sdhci_host* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %73 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %72, i32 0, i32 1
  %74 = load %struct.sdhci_host*, %struct.sdhci_host** %73, align 8
  %75 = call i32 @PTR_ERR(%struct.sdhci_host* %74)
  store i32 %75, i32* %2, align 4
  br label %208

76:                                               ; preds = %56
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i8* @devm_clk_get(i32* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %80 = bitcast i8* %79 to %struct.sdhci_host*
  %81 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %82 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %81, i32 0, i32 3
  store %struct.sdhci_host* %80, %struct.sdhci_host** %82, align 8
  %83 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %84 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %83, i32 0, i32 3
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %84, align 8
  %86 = call i64 @IS_ERR(%struct.sdhci_host* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %93 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %92, i32 0, i32 3
  %94 = load %struct.sdhci_host*, %struct.sdhci_host** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.sdhci_host* %94)
  store i32 %95, i32* %2, align 4
  br label %208

96:                                               ; preds = %76
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call i32 @sdhci_at91_set_clks_presets(i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %204

103:                                              ; preds = %96
  %104 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %105 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %107 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = call i32 @mmc_of_parse(%struct.TYPE_4__* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %191

113:                                              ; preds = %103
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i32 @sdhci_get_of_property(%struct.platform_device* %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @pm_runtime_get_noresume(i32* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_set_active(i32* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_enable(i32* %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @pm_runtime_set_autosuspend_delay(i32* %126, i32 50)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @pm_runtime_use_autosuspend(i32* %129)
  %131 = load i32, i32* @SDHCI_QUIRK2_BROKEN_HS200, align 4
  %132 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %133 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %135 = call i32 @sdhci_add_host(%struct.sdhci_host* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %113
  br label %181

139:                                              ; preds = %113
  %140 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %141 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = call i64 @mmc_card_is_removable(%struct.TYPE_4__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %147 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = call i64 @mmc_gpio_get_cd(%struct.TYPE_4__* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %153 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %154 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %152
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @SDHCI_QUIRK_BROKEN_CARD_DETECTION, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %162 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %151, %145, %139
  %166 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %167 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %176 = call i32 @sdhci_at91_set_force_card_detect(%struct.sdhci_host* %175)
  br label %177

177:                                              ; preds = %174, %165
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 @pm_runtime_put_autosuspend(i32* %179)
  store i32 0, i32* %2, align 4
  br label %208

181:                                              ; preds = %138
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @pm_runtime_disable(i32* %183)
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i32 @pm_runtime_set_suspended(i32* %186)
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 @pm_runtime_put_noidle(i32* %189)
  br label %191

191:                                              ; preds = %181, %112
  %192 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %193 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %192, i32 0, i32 3
  %194 = load %struct.sdhci_host*, %struct.sdhci_host** %193, align 8
  %195 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %194)
  %196 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %197 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %196, i32 0, i32 2
  %198 = load %struct.sdhci_host*, %struct.sdhci_host** %197, align 8
  %199 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %198)
  %200 = load %struct.sdhci_at91_priv*, %struct.sdhci_at91_priv** %8, align 8
  %201 = getelementptr inbounds %struct.sdhci_at91_priv, %struct.sdhci_at91_priv* %200, i32 0, i32 1
  %202 = load %struct.sdhci_host*, %struct.sdhci_host** %201, align 8
  %203 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %202)
  br label %204

204:                                              ; preds = %191, %102
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = call i32 @sdhci_pltfm_free(%struct.platform_device* %205)
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %204, %177, %88, %68, %48, %29, %16
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, %struct.sdhci_pltfm_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_at91_priv* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sdhci_at91_set_clks_presets(i32*) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_4__*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i64 @mmc_card_is_removable(%struct.TYPE_4__*) #1

declare dso_local i64 @mmc_gpio_get_cd(%struct.TYPE_4__*) #1

declare dso_local i32 @sdhci_at91_set_force_card_detect(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
