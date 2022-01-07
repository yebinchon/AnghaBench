; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-tegra.c_sdhci_tegra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.of_device_id = type { %struct.sdhci_tegra_soc_data* }
%struct.sdhci_tegra_soc_data = type { i32, i32 }
%struct.sdhci_host = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_tegra = type { i32, i32, i32, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_tegra_soc_data* }
%struct.clk = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }

@sdhci_tegra_dt_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NVQUIRK_NEEDS_PAD_CONTROL = common dso_local global i32 0, align 4
@sdhci_tegra_start_signal_voltage_switch = common dso_local global i32 0, align 4
@NVQUIRK_HAS_PADCALIB = common dso_local global i32 0, align 4
@tegra_sdhci_request = common dso_local global i32 0, align 4
@tegra_sdhci_hs400_enhanced_strobe = common dso_local global i32 0, align 4
@tegra_sdhci_execute_hw_tuning = common dso_local global i32 0, align 4
@NVQUIRK_ENABLE_DDR50 = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get reset control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_tegra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_tegra_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.sdhci_tegra_soc_data*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.sdhci_pltfm_host*, align 8
  %8 = alloca %struct.sdhci_tegra*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @sdhci_tegra_dt_match, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, i32* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %4, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %233

20:                                               ; preds = %1
  %21 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %22, align 8
  store %struct.sdhci_tegra_soc_data* %23, %struct.sdhci_tegra_soc_data** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %26 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %24, i32 %27, i32 40)
  store %struct.sdhci_host* %28, %struct.sdhci_host** %6, align 8
  %29 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %30 = call i64 @IS_ERR(%struct.sdhci_host* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.sdhci_host* %33)
  store i32 %34, i32* %2, align 4
  br label %233

35:                                               ; preds = %20
  %36 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %37 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %36)
  store %struct.sdhci_pltfm_host* %37, %struct.sdhci_pltfm_host** %7, align 8
  %38 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %39 = call %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %38)
  store %struct.sdhci_tegra* %39, %struct.sdhci_tegra** %8, align 8
  %40 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %41 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %43 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %45 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %47 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %48 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %47, i32 0, i32 5
  store %struct.sdhci_tegra_soc_data* %46, %struct.sdhci_tegra_soc_data** %48, align 8
  %49 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %50 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NVQUIRK_NEEDS_PAD_CONTROL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %35
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %59 = call i32 @tegra_sdhci_init_pinctrl_info(i32* %57, %struct.sdhci_tegra* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @sdhci_tegra_start_signal_voltage_switch, align 4
  %64 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %65 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %55
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %5, align 8
  %70 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NVQUIRK_HAS_PADCALIB, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @tegra_sdhci_request, align 4
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %78 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* @tegra_sdhci_hs400_enhanced_strobe, align 4
  %82 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %83 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %86 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %80
  %92 = load i32, i32* @tegra_sdhci_execute_hw_tuning, align 4
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %94 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %80
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = call i32 @mmc_of_parse(%struct.TYPE_7__* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %229

104:                                              ; preds = %96
  %105 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %106 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %105, i32 0, i32 5
  %107 = load %struct.sdhci_tegra_soc_data*, %struct.sdhci_tegra_soc_data** %106, align 8
  %108 = getelementptr inbounds %struct.sdhci_tegra_soc_data, %struct.sdhci_tegra_soc_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NVQUIRK_ENABLE_DDR50, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %115 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %116 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %104
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %123 = call i32 @tegra_sdhci_parse_dt(%struct.sdhci_host* %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %127 = call %struct.sdhci_host* @devm_gpiod_get_optional(i32* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %129 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %128, i32 0, i32 4
  store %struct.sdhci_host* %127, %struct.sdhci_host** %129, align 8
  %130 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %131 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %130, i32 0, i32 4
  %132 = load %struct.sdhci_host*, %struct.sdhci_host** %131, align 8
  %133 = call i64 @IS_ERR(%struct.sdhci_host* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %121
  %136 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %137 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %136, i32 0, i32 4
  %138 = load %struct.sdhci_host*, %struct.sdhci_host** %137, align 8
  %139 = call i32 @PTR_ERR(%struct.sdhci_host* %138)
  store i32 %139, i32* %10, align 4
  br label %228

140:                                              ; preds = %121
  %141 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %142 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = call i32 @mmc_dev(%struct.TYPE_7__* %143)
  %145 = call %struct.sdhci_host* @devm_clk_get(i32 %144, i32* null)
  %146 = bitcast %struct.sdhci_host* %145 to %struct.clk*
  store %struct.clk* %146, %struct.clk** %9, align 8
  %147 = load %struct.clk*, %struct.clk** %9, align 8
  %148 = bitcast %struct.clk* %147 to %struct.sdhci_host*
  %149 = call i64 @IS_ERR(%struct.sdhci_host* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %140
  %152 = load %struct.clk*, %struct.clk** %9, align 8
  %153 = bitcast %struct.clk* %152 to %struct.sdhci_host*
  %154 = call i32 @PTR_ERR(%struct.sdhci_host* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* @EPROBE_DEFER, align 4
  %157 = sub nsw i32 0, %156
  %158 = icmp ne i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %159, %151
  br label %227

165:                                              ; preds = %140
  %166 = load %struct.clk*, %struct.clk** %9, align 8
  %167 = bitcast %struct.clk* %166 to %struct.sdhci_host*
  %168 = call i32 @clk_prepare_enable(%struct.sdhci_host* %167)
  %169 = load %struct.clk*, %struct.clk** %9, align 8
  %170 = bitcast %struct.clk* %169 to %struct.sdhci_host*
  %171 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %172 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %171, i32 0, i32 0
  store %struct.sdhci_host* %170, %struct.sdhci_host** %172, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call %struct.sdhci_host* @devm_reset_control_get_exclusive(i32* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %176 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %177 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %176, i32 0, i32 3
  store %struct.sdhci_host* %175, %struct.sdhci_host** %177, align 8
  %178 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %179 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %178, i32 0, i32 3
  %180 = load %struct.sdhci_host*, %struct.sdhci_host** %179, align 8
  %181 = call i64 @IS_ERR(%struct.sdhci_host* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %165
  %184 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %185 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %184, i32 0, i32 3
  %186 = load %struct.sdhci_host*, %struct.sdhci_host** %185, align 8
  %187 = call i32 @PTR_ERR(%struct.sdhci_host* %186)
  store i32 %187, i32* %10, align 4
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @dev_err(i32* %189, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %222

192:                                              ; preds = %165
  %193 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %194 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %193, i32 0, i32 3
  %195 = load %struct.sdhci_host*, %struct.sdhci_host** %194, align 8
  %196 = call i32 @reset_control_assert(%struct.sdhci_host* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %222

200:                                              ; preds = %192
  %201 = call i32 @usleep_range(i32 2000, i32 4000)
  %202 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %203 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %202, i32 0, i32 3
  %204 = load %struct.sdhci_host*, %struct.sdhci_host** %203, align 8
  %205 = call i32 @reset_control_deassert(%struct.sdhci_host* %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %222

209:                                              ; preds = %200
  %210 = call i32 @usleep_range(i32 2000, i32 4000)
  %211 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %212 = call i32 @sdhci_tegra_add_host(%struct.sdhci_host* %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %217

216:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %233

217:                                              ; preds = %215
  %218 = load %struct.sdhci_tegra*, %struct.sdhci_tegra** %8, align 8
  %219 = getelementptr inbounds %struct.sdhci_tegra, %struct.sdhci_tegra* %218, i32 0, i32 3
  %220 = load %struct.sdhci_host*, %struct.sdhci_host** %219, align 8
  %221 = call i32 @reset_control_assert(%struct.sdhci_host* %220)
  br label %222

222:                                              ; preds = %217, %208, %199, %183
  %223 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %7, align 8
  %224 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %223, i32 0, i32 0
  %225 = load %struct.sdhci_host*, %struct.sdhci_host** %224, align 8
  %226 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %225)
  br label %227

227:                                              ; preds = %222, %164
  br label %228

228:                                              ; preds = %227, %135
  br label %229

229:                                              ; preds = %228, %103
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = call i32 @sdhci_pltfm_free(%struct.platform_device* %230)
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %229, %216, %32, %17
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_tegra* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @tegra_sdhci_init_pinctrl_info(i32*, %struct.sdhci_tegra*) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_7__*) #1

declare dso_local i32 @tegra_sdhci_parse_dt(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(i32, i32*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_reset_control_get_exclusive(i32*, i8*) #1

declare dso_local i32 @reset_control_assert(%struct.sdhci_host*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_tegra_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
