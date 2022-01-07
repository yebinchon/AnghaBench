; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-omap.c_sdhci_omap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sdhci_host = type { %struct.TYPE_2__, %struct.mmc_host*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.mmc_host = type { i32, i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_omap_host = type { i8*, i32, %struct.sdhci_host*, i32, i32, i32, %struct.device*, i32, %struct.sdhci_host* }
%struct.of_device_id = type { i64 }
%struct.sdhci_omap_data = type { i32, i64 }
%struct.soc_device_attribute = type { i32 }

@omap_sdhci_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no sdhci omap data\0A\00", align 1
@sdhci_omap_pdata = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed sdhci_pltfm_init\0A\00", align 1
@MMC_POWER_UNDEFINED = common dso_local global i32 0, align 4
@MMC_TIMING_LEGACY = common dso_local global i32 0, align 4
@sdhci_omap_soc_devices = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"rev11\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"4809c000.mmc\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"480b4000.mmc\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"480ad000.mmc\00", align 1
@MMC_CAP2_NO_WRITE_PROTECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to set clock to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pbias\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"unable to get pbias regulator %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"pm_runtime_get_sync failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"failed to set system capabilities\0A\00", align 1
@sdhci_omap_start_signal_voltage_switch = common dso_local global i32 0, align 4
@sdhci_omap_set_ios = common dso_local global i32 0, align 4
@sdhci_omap_card_busy = common dso_local global i32 0, align 4
@sdhci_omap_execute_tuning = common dso_local global i32 0, align 4
@sdhci_omap_enable_sdio_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_omap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_omap_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.sdhci_host*, align 8
  %8 = alloca %struct.sdhci_pltfm_host*, align 8
  %9 = alloca %struct.sdhci_omap_host*, align 8
  %10 = alloca %struct.mmc_host*, align 8
  %11 = alloca %struct.of_device_id*, align 8
  %12 = alloca %struct.sdhci_omap_data*, align 8
  %13 = alloca %struct.soc_device_attribute*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load i32, i32* @omap_sdhci_match, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.of_device_id* @of_match_device(i32 %16, %struct.device* %17)
  store %struct.of_device_id* %18, %struct.of_device_id** %11, align 8
  %19 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %20 = icmp ne %struct.of_device_id* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %265

24:                                               ; preds = %1
  %25 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %26 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sdhci_omap_data*
  store %struct.sdhci_omap_data* %28, %struct.sdhci_omap_data** %12, align 8
  %29 = load %struct.sdhci_omap_data*, %struct.sdhci_omap_data** %12, align 8
  %30 = icmp ne %struct.sdhci_omap_data* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %265

36:                                               ; preds = %24
  %37 = load %struct.sdhci_omap_data*, %struct.sdhci_omap_data** %12, align 8
  %38 = getelementptr inbounds %struct.sdhci_omap_data, %struct.sdhci_omap_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %5, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %40, i32* @sdhci_omap_pdata, i32 64)
  store %struct.sdhci_host* %41, %struct.sdhci_host** %7, align 8
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %43 = call i64 @IS_ERR(%struct.sdhci_host* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.sdhci_host* %48)
  store i32 %49, i32* %2, align 4
  br label %265

50:                                               ; preds = %36
  %51 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %52 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %51)
  store %struct.sdhci_pltfm_host* %52, %struct.sdhci_pltfm_host** %8, align 8
  %53 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %54 = call %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %53)
  store %struct.sdhci_omap_host* %54, %struct.sdhci_omap_host** %9, align 8
  %55 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %56 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %57 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %56, i32 0, i32 8
  store %struct.sdhci_host* %55, %struct.sdhci_host** %57, align 8
  %58 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %59 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %62 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %65 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %64, i32 0, i32 6
  store %struct.device* %63, %struct.device** %65, align 8
  %66 = load i32, i32* @MMC_POWER_UNDEFINED, align 4
  %67 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %68 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @MMC_TIMING_LEGACY, align 4
  %70 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %71 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.sdhci_omap_data*, %struct.sdhci_omap_data** %12, align 8
  %73 = getelementptr inbounds %struct.sdhci_omap_data, %struct.sdhci_omap_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %76 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %79 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %77
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %85 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %84, i32 0, i32 1
  %86 = load %struct.mmc_host*, %struct.mmc_host** %85, align 8
  store %struct.mmc_host* %86, %struct.mmc_host** %10, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @sdhci_get_of_property(%struct.platform_device* %87)
  %89 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %90 = call i32 @mmc_of_parse(%struct.mmc_host* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %50
  br label %261

94:                                               ; preds = %50
  %95 = load i32, i32* @sdhci_omap_soc_devices, align 4
  %96 = call %struct.soc_device_attribute* @soc_device_match(i32 %95)
  store %struct.soc_device_attribute* %96, %struct.soc_device_attribute** %13, align 8
  %97 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %13, align 8
  %98 = icmp ne %struct.soc_device_attribute* %97, null
  br i1 %98, label %99, label %126

99:                                               ; preds = %94
  %100 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %101 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %100, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %101, align 8
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = call i32 @dev_name(%struct.device* %102)
  %104 = call i32 @strcmp(i32 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %108 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %107, i32 0, i32 0
  store i32 96000000, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 @dev_name(%struct.device* %110)
  %112 = call i32 @strcmp(i32 %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %116 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %115, i32 0, i32 0
  store i32 48000000, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @dev_name(%struct.device* %118)
  %120 = call i32 @strcmp(i32 %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %124 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %123, i32 0, i32 0
  store i32 48000000, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %94
  %127 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %128 = call i32 @mmc_can_gpio_ro(%struct.mmc_host* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @MMC_CAP2_NO_WRITE_PROTECT, align 4
  %132 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %133 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %126
  %137 = load %struct.device*, %struct.device** %6, align 8
  %138 = call %struct.sdhci_host* @devm_clk_get(%struct.device* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %139 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %140 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %139, i32 0, i32 0
  store %struct.sdhci_host* %138, %struct.sdhci_host** %140, align 8
  %141 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %142 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %141, i32 0, i32 0
  %143 = load %struct.sdhci_host*, %struct.sdhci_host** %142, align 8
  %144 = call i64 @IS_ERR(%struct.sdhci_host* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %148 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %147, i32 0, i32 0
  %149 = load %struct.sdhci_host*, %struct.sdhci_host** %148, align 8
  %150 = call i32 @PTR_ERR(%struct.sdhci_host* %149)
  store i32 %150, i32* %4, align 4
  br label %261

151:                                              ; preds = %136
  %152 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %8, align 8
  %153 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %152, i32 0, i32 0
  %154 = load %struct.sdhci_host*, %struct.sdhci_host** %153, align 8
  %155 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %156 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @clk_set_rate(%struct.sdhci_host* %154, i32 %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load %struct.mmc_host*, %struct.mmc_host** %10, align 8
  %164 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  br label %261

167:                                              ; preds = %151
  %168 = load %struct.device*, %struct.device** %6, align 8
  %169 = call %struct.sdhci_host* @devm_regulator_get_optional(%struct.device* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %170 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %171 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %170, i32 0, i32 2
  store %struct.sdhci_host* %169, %struct.sdhci_host** %171, align 8
  %172 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %173 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %172, i32 0, i32 2
  %174 = load %struct.sdhci_host*, %struct.sdhci_host** %173, align 8
  %175 = call i64 @IS_ERR(%struct.sdhci_host* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %191

177:                                              ; preds = %167
  %178 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %179 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %178, i32 0, i32 2
  %180 = load %struct.sdhci_host*, %struct.sdhci_host** %179, align 8
  %181 = call i32 @PTR_ERR(%struct.sdhci_host* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @ENODEV, align 4
  %184 = sub nsw i32 0, %183
  %185 = icmp ne i32 %182, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %177
  br label %261

187:                                              ; preds = %177
  %188 = load %struct.device*, %struct.device** %6, align 8
  %189 = load i32, i32* %4, align 4
  %190 = call i32 @dev_dbg(%struct.device* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %187, %167
  %192 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %193 = getelementptr inbounds %struct.sdhci_omap_host, %struct.sdhci_omap_host* %192, i32 0, i32 1
  store i32 0, i32* %193, align 8
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = call i32 @pm_runtime_enable(%struct.device* %194)
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = call i32 @pm_runtime_get_sync(%struct.device* %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %191
  %201 = load %struct.device*, %struct.device** %6, align 8
  %202 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %203 = load %struct.device*, %struct.device** %6, align 8
  %204 = call i32 @pm_runtime_put_noidle(%struct.device* %203)
  br label %258

205:                                              ; preds = %191
  %206 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %207 = call i32 @sdhci_omap_set_capabilities(%struct.sdhci_omap_host* %206)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.device*, %struct.device** %6, align 8
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %211, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %255

213:                                              ; preds = %205
  %214 = load i32, i32* @sdhci_omap_start_signal_voltage_switch, align 4
  %215 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %216 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 4
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* @sdhci_omap_set_ios, align 4
  %219 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %220 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  store i32 %218, i32* %221, align 4
  %222 = load i32, i32* @sdhci_omap_card_busy, align 4
  %223 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %224 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 8
  %226 = load i32, i32* @sdhci_omap_execute_tuning, align 4
  %227 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %228 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  %230 = load i32, i32* @sdhci_omap_enable_sdio_irq, align 4
  %231 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %232 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %235 = call i32 @sdhci_setup_host(%struct.sdhci_host* %234)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %213
  br label %255

239:                                              ; preds = %213
  %240 = load %struct.sdhci_omap_host*, %struct.sdhci_omap_host** %9, align 8
  %241 = call i32 @sdhci_omap_config_iodelay_pinctrl_state(%struct.sdhci_omap_host* %240)
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %252

245:                                              ; preds = %239
  %246 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %247 = call i32 @__sdhci_add_host(%struct.sdhci_host* %246)
  store i32 %247, i32* %4, align 4
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %252

251:                                              ; preds = %245
  store i32 0, i32* %2, align 4
  br label %265

252:                                              ; preds = %250, %244
  %253 = load %struct.sdhci_host*, %struct.sdhci_host** %7, align 8
  %254 = call i32 @sdhci_cleanup_host(%struct.sdhci_host* %253)
  br label %255

255:                                              ; preds = %252, %238, %210
  %256 = load %struct.device*, %struct.device** %6, align 8
  %257 = call i32 @pm_runtime_put_sync(%struct.device* %256)
  br label %258

258:                                              ; preds = %255, %200
  %259 = load %struct.device*, %struct.device** %6, align 8
  %260 = call i32 @pm_runtime_disable(%struct.device* %259)
  br label %261

261:                                              ; preds = %258, %186, %161, %146, %93
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = call i32 @sdhci_pltfm_free(%struct.platform_device* %262)
  %264 = load i32, i32* %4, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %261, %251, %45, %31, %21
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_omap_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @mmc_can_gpio_ro(%struct.mmc_host*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_set_rate(%struct.sdhci_host*, i32) #1

declare dso_local %struct.sdhci_host* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @sdhci_omap_set_capabilities(%struct.sdhci_omap_host*) #1

declare dso_local i32 @sdhci_setup_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_omap_config_iodelay_pinctrl_state(%struct.sdhci_omap_host*) #1

declare dso_local i32 @__sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_cleanup_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
