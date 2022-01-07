; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav3.c_sdhci_pxav3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pxav3.c_sdhci_pxav3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.sdhci_pxa_platdata*, %struct.device_node* }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host* }
%struct.sdhci_host = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sdhci_pxa = type { %struct.sdhci_host*, %struct.sdhci_host* }
%struct.of_device_id = type { i32 }

@sdhci_pxav3_pdata = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get io clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"marvell,armada-380-sdhci\00", align 1
@sdhci_pxav3_of_match = common dso_local global i32 0, align 4
@PXA_FLAG_CARD_PERMANENT = common dso_local global i32 0, align 4
@MMC_CAP_NONREMOVABLE = common dso_local global i32 0, align 4
@PXA_FLAG_SD_8_BIT_CAPABLE_SLOT = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@PXAV3_RPM_DELAY_MS = common dso_local global i32 0, align 4
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_pxav3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_pxav3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_pltfm_host*, align 8
  %5 = alloca %struct.sdhci_pxa_platdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.sdhci_host*, align 8
  %9 = alloca %struct.sdhci_pxa*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %14, align 8
  store %struct.sdhci_pxa_platdata* %15, %struct.sdhci_pxa_platdata** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 1
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  store %struct.sdhci_host* null, %struct.sdhci_host** %8, align 8
  store %struct.sdhci_pxa* null, %struct.sdhci_pxa** %9, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %22, i32* @sdhci_pxav3_pdata, i32 16)
  store %struct.sdhci_host* %23, %struct.sdhci_host** %8, align 8
  %24 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %25 = call i64 @IS_ERR(%struct.sdhci_host* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.sdhci_host* %28)
  store i32 %29, i32* %2, align 4
  br label %309

30:                                               ; preds = %1
  %31 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %32 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %31)
  store %struct.sdhci_pltfm_host* %32, %struct.sdhci_pltfm_host** %4, align 8
  %33 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %34 = call %struct.sdhci_pxa* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %33)
  store %struct.sdhci_pxa* %34, %struct.sdhci_pxa** %9, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i8* @devm_clk_get(%struct.device* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = bitcast i8* %36 to %struct.sdhci_host*
  %38 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %39 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %38, i32 0, i32 1
  store %struct.sdhci_host* %37, %struct.sdhci_host** %39, align 8
  %40 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %41 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %40, i32 0, i32 1
  %42 = load %struct.sdhci_host*, %struct.sdhci_host** %41, align 8
  %43 = call i64 @IS_ERR(%struct.sdhci_host* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i8* @devm_clk_get(%struct.device* %46, i8* null)
  %48 = bitcast i8* %47 to %struct.sdhci_host*
  %49 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %50 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %49, i32 0, i32 1
  store %struct.sdhci_host* %48, %struct.sdhci_host** %50, align 8
  br label %51

51:                                               ; preds = %45, %30
  %52 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %53 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %52, i32 0, i32 1
  %54 = load %struct.sdhci_host*, %struct.sdhci_host** %53, align 8
  %55 = call i64 @IS_ERR(%struct.sdhci_host* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %61 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %60, i32 0, i32 1
  %62 = load %struct.sdhci_host*, %struct.sdhci_host** %61, align 8
  %63 = call i32 @PTR_ERR(%struct.sdhci_host* %62)
  store i32 %63, i32* %11, align 4
  br label %305

64:                                               ; preds = %51
  %65 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %66 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %65, i32 0, i32 1
  %67 = load %struct.sdhci_host*, %struct.sdhci_host** %66, align 8
  %68 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %4, align 8
  %69 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %68, i32 0, i32 0
  store %struct.sdhci_host* %67, %struct.sdhci_host** %69, align 8
  %70 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %71 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %70, i32 0, i32 1
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %71, align 8
  %73 = call i32 @clk_prepare_enable(%struct.sdhci_host* %72)
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i8* @devm_clk_get(%struct.device* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %76 = bitcast i8* %75 to %struct.sdhci_host*
  %77 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %78 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %77, i32 0, i32 0
  store %struct.sdhci_host* %76, %struct.sdhci_host** %78, align 8
  %79 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %80 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %79, i32 0, i32 0
  %81 = load %struct.sdhci_host*, %struct.sdhci_host** %80, align 8
  %82 = call i64 @IS_ERR(%struct.sdhci_host* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %64
  %85 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %86 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %85, i32 0, i32 0
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %86, align 8
  %88 = call i32 @clk_prepare_enable(%struct.sdhci_host* %87)
  br label %89

89:                                               ; preds = %84, %64
  %90 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %91 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %92 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %90
  store i32 %96, i32* %94, align 4
  %97 = load %struct.device_node*, %struct.device_node** %7, align 8
  %98 = call i64 @of_device_is_compatible(%struct.device_node* %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %103 = call i32 @armada_38x_quirks(%struct.platform_device* %101, %struct.sdhci_host* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %296

107:                                              ; preds = %100
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i32 (...) @mv_mbus_dram_info()
  %110 = call i32 @mv_conf_mbus_windows(%struct.platform_device* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %296

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* @sdhci_pxav3_of_match, align 4
  %117 = call i32 @of_match_ptr(i32 %116)
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call %struct.of_device_id* @of_match_device(i32 %117, %struct.device* %119)
  store %struct.of_device_id* %120, %struct.of_device_id** %10, align 8
  %121 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %122 = icmp ne %struct.of_device_id* %121, null
  br i1 %122, label %123, label %140

123:                                              ; preds = %115
  %124 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %125 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = call i32 @mmc_of_parse(%struct.TYPE_2__* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %295

131:                                              ; preds = %123
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = call i32 @sdhci_get_of_property(%struct.platform_device* %132)
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call %struct.sdhci_pxa_platdata* @pxav3_get_mmc_pdata(%struct.device* %134)
  store %struct.sdhci_pxa_platdata* %135, %struct.sdhci_pxa_platdata** %5, align 8
  %136 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 0
  store %struct.sdhci_pxa_platdata* %136, %struct.sdhci_pxa_platdata** %139, align 8
  br label %246

140:                                              ; preds = %115
  %141 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %142 = icmp ne %struct.sdhci_pxa_platdata* %141, null
  br i1 %142, label %143, label %245

143:                                              ; preds = %140
  %144 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %145 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @PXA_FLAG_CARD_PERMANENT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32, i32* @MMC_CAP_NONREMOVABLE, align 4
  %152 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %153 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %143
  %159 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %160 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PXA_FLAG_SD_8_BIT_CAPABLE_SLOT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %167 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %168 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %167, i32 0, i32 2
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %165, %158
  %174 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %175 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %180 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %183 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %178, %173
  %187 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %188 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %193 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %196 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %191, %186
  %200 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %201 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %206 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %209 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %208, i32 0, i32 2
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %207
  store i32 %213, i32* %211, align 4
  br label %214

214:                                              ; preds = %204, %199
  %215 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %216 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %214
  %220 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %221 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %224 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %223, i32 0, i32 2
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %222
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %219, %214
  %230 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %231 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load %struct.sdhci_pxa_platdata*, %struct.sdhci_pxa_platdata** %5, align 8
  %236 = getelementptr inbounds %struct.sdhci_pxa_platdata, %struct.sdhci_pxa_platdata* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %239 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %238, i32 0, i32 2
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %237
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %234, %229
  br label %245

245:                                              ; preds = %244, %140
  br label %246

246:                                              ; preds = %245, %131
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 @pm_runtime_get_noresume(%struct.device* %248)
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 @pm_runtime_set_active(%struct.device* %251)
  %253 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %254 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %253, i32 0, i32 0
  %255 = load i32, i32* @PXAV3_RPM_DELAY_MS, align 4
  %256 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %254, i32 %255)
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 @pm_runtime_use_autosuspend(%struct.device* %258)
  %260 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %261 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %260, i32 0, i32 0
  %262 = call i32 @pm_runtime_enable(%struct.device* %261)
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = call i32 @pm_suspend_ignore_children(%struct.device* %264, i32 1)
  %266 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %267 = call i32 @sdhci_add_host(%struct.sdhci_host* %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %246
  br label %288

271:                                              ; preds = %246
  %272 = load %struct.sdhci_host*, %struct.sdhci_host** %8, align 8
  %273 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %272, i32 0, i32 2
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %271
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @device_init_wakeup(%struct.device* %282, i32 1)
  br label %284

284:                                              ; preds = %280, %271
  %285 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %286 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %285, i32 0, i32 0
  %287 = call i32 @pm_runtime_put_autosuspend(%struct.device* %286)
  store i32 0, i32* %2, align 4
  br label %309

288:                                              ; preds = %270
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = call i32 @pm_runtime_disable(%struct.device* %290)
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = call i32 @pm_runtime_put_noidle(%struct.device* %293)
  br label %295

295:                                              ; preds = %288, %130
  br label %296

296:                                              ; preds = %295, %113, %106
  %297 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %298 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %297, i32 0, i32 1
  %299 = load %struct.sdhci_host*, %struct.sdhci_host** %298, align 8
  %300 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %299)
  %301 = load %struct.sdhci_pxa*, %struct.sdhci_pxa** %9, align 8
  %302 = getelementptr inbounds %struct.sdhci_pxa, %struct.sdhci_pxa* %301, i32 0, i32 0
  %303 = load %struct.sdhci_host*, %struct.sdhci_host** %302, align 8
  %304 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %303)
  br label %305

305:                                              ; preds = %296, %57
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = call i32 @sdhci_pltfm_free(%struct.platform_device* %306)
  %308 = load i32, i32* %11, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %305, %284, %27
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pxa* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @armada_38x_quirks(%struct.platform_device*, %struct.sdhci_host*) #1

declare dso_local i32 @mv_conf_mbus_windows(%struct.platform_device*, i32) #1

declare dso_local i32 @mv_mbus_dram_info(...) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_2__*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local %struct.sdhci_pxa_platdata* @pxav3_get_mmc_pdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.device*, i32) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
