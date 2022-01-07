; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_sdhci_esdhc_imx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.of_device_id = type { %struct.esdhc_soc_data* }
%struct.esdhc_soc_data = type { i32 }
%struct.sdhci_pltfm_host = type { %struct.sdhci_host*, i32 }
%struct.sdhci_host = type { i32, %struct.TYPE_9__*, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.cqhci_host = type { i32*, i64 }
%struct.pltfm_imx_data = type { i32, %struct.esdhc_soc_data*, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host* }

@imx_esdhc_dt_ids = common dso_local global i32 0, align 4
@sdhci_esdhc_imx_pdata = common dso_local global i32 0, align 4
@ESDHC_FLAG_PMQOS = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@PINCTRL_STATE_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not get default state\0A\00", align 1
@SDHCI_QUIRK2_PRESET_VALUE_BROKEN = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_3_3V_DDR = common dso_local global i32 0, align 4
@ESDHC_FLAG_HS200 = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_BROKEN_HS200 = common dso_local global i32 0, align 4
@ESDHC_MIX_CTRL = common dso_local global i64 0, align 8
@SDHCI_AUTO_CMD_STATUS = common dso_local global i64 0, align 8
@ESDHC_TUNE_CTRL_STATUS = common dso_local global i64 0, align 8
@usdhc_execute_tuning = common dso_local global i32 0, align 4
@ESDHC_FLAG_MAN_TUNING = common dso_local global i32 0, align 4
@esdhc_executing_tuning = common dso_local global i32 0, align 4
@sdhci_esdhc_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ESDHC_FLAG_ERR004536 = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_ADMA = common dso_local global i32 0, align 4
@ESDHC_FLAG_HS400 = common dso_local global i32 0, align 4
@SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400 = common dso_local global i32 0, align 4
@ESDHC_FLAG_HS400_ES = common dso_local global i32 0, align 4
@MMC_CAP2_HS400_ES = common dso_local global i32 0, align 4
@esdhc_hs400_enhanced_strobe = common dso_local global i32 0, align 4
@ESDHC_FLAG_CQHCI = common dso_local global i32 0, align 4
@MMC_CAP2_CQE = common dso_local global i32 0, align 4
@MMC_CAP2_CQE_DCMD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESDHC_CQHCI_ADDR_OFFSET = common dso_local global i64 0, align 8
@esdhc_cqhci_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_esdhc_imx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_esdhc_imx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_host*, align 8
  %7 = alloca %struct.cqhci_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pltfm_imx_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @imx_esdhc_dt_ids, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, i32* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %14, i32* @sdhci_esdhc_imx_pdata, i32 56)
  store %struct.sdhci_host* %15, %struct.sdhci_host** %6, align 8
  %16 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %17 = call i64 @IS_ERR(%struct.sdhci_host* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.sdhci_host* %20)
  store i32 %21, i32* %2, align 4
  br label %418

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %24 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %23)
  store %struct.sdhci_pltfm_host* %24, %struct.sdhci_pltfm_host** %5, align 8
  %25 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %26 = call %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %25)
  store %struct.pltfm_imx_data* %26, %struct.pltfm_imx_data** %9, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %30, i32 0, i32 0
  %32 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %31, align 8
  br label %40

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.esdhc_soc_data*
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi %struct.esdhc_soc_data* [ %32, %29 ], [ %39, %33 ]
  %42 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %43 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %42, i32 0, i32 1
  store %struct.esdhc_soc_data* %41, %struct.esdhc_soc_data** %43, align 8
  %44 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %45 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %44, i32 0, i32 1
  %46 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %45, align 8
  %47 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ESDHC_FLAG_PMQOS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %54 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %53, i32 0, i32 0
  %55 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %56 = call i32 @pm_qos_add_request(i32* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %52, %40
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i8* @devm_clk_get(i32* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %61 = bitcast i8* %60 to %struct.sdhci_host*
  %62 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %63 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %62, i32 0, i32 3
  store %struct.sdhci_host* %61, %struct.sdhci_host** %63, align 8
  %64 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %65 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %64, i32 0, i32 3
  %66 = load %struct.sdhci_host*, %struct.sdhci_host** %65, align 8
  %67 = call i64 @IS_ERR(%struct.sdhci_host* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %71 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %70, i32 0, i32 3
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.sdhci_host* %72)
  store i32 %73, i32* %8, align 4
  br label %401

74:                                               ; preds = %57
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i8* @devm_clk_get(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %78 = bitcast i8* %77 to %struct.sdhci_host*
  %79 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %80 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %79, i32 0, i32 4
  store %struct.sdhci_host* %78, %struct.sdhci_host** %80, align 8
  %81 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %82 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %81, i32 0, i32 4
  %83 = load %struct.sdhci_host*, %struct.sdhci_host** %82, align 8
  %84 = call i64 @IS_ERR(%struct.sdhci_host* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %88 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %87, i32 0, i32 4
  %89 = load %struct.sdhci_host*, %struct.sdhci_host** %88, align 8
  %90 = call i32 @PTR_ERR(%struct.sdhci_host* %89)
  store i32 %90, i32* %8, align 4
  br label %401

91:                                               ; preds = %74
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i8* @devm_clk_get(i32* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %95 = bitcast i8* %94 to %struct.sdhci_host*
  %96 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %97 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %96, i32 0, i32 2
  store %struct.sdhci_host* %95, %struct.sdhci_host** %97, align 8
  %98 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %99 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %98, i32 0, i32 2
  %100 = load %struct.sdhci_host*, %struct.sdhci_host** %99, align 8
  %101 = call i64 @IS_ERR(%struct.sdhci_host* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %105 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %104, i32 0, i32 2
  %106 = load %struct.sdhci_host*, %struct.sdhci_host** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.sdhci_host* %106)
  store i32 %107, i32* %8, align 4
  br label %401

108:                                              ; preds = %91
  %109 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %110 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %109, i32 0, i32 2
  %111 = load %struct.sdhci_host*, %struct.sdhci_host** %110, align 8
  %112 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %113 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %112, i32 0, i32 0
  store %struct.sdhci_host* %111, %struct.sdhci_host** %113, align 8
  %114 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %115 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %114, i32 0, i32 0
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %115, align 8
  %117 = call i32 @clk_get_rate(%struct.sdhci_host* %116)
  %118 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %119 = getelementptr inbounds %struct.sdhci_pltfm_host, %struct.sdhci_pltfm_host* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %121 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %120, i32 0, i32 2
  %122 = load %struct.sdhci_host*, %struct.sdhci_host** %121, align 8
  %123 = call i32 @clk_prepare_enable(%struct.sdhci_host* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  br label %401

127:                                              ; preds = %108
  %128 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %129 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %128, i32 0, i32 3
  %130 = load %struct.sdhci_host*, %struct.sdhci_host** %129, align 8
  %131 = call i32 @clk_prepare_enable(%struct.sdhci_host* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %396

135:                                              ; preds = %127
  %136 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %137 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %136, i32 0, i32 4
  %138 = load %struct.sdhci_host*, %struct.sdhci_host** %137, align 8
  %139 = call i32 @clk_prepare_enable(%struct.sdhci_host* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %391

143:                                              ; preds = %135
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call %struct.sdhci_host* @devm_pinctrl_get(i32* %145)
  %147 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %148 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %147, i32 0, i32 6
  store %struct.sdhci_host* %146, %struct.sdhci_host** %148, align 8
  %149 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %150 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %149, i32 0, i32 6
  %151 = load %struct.sdhci_host*, %struct.sdhci_host** %150, align 8
  %152 = call i64 @IS_ERR(%struct.sdhci_host* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %143
  %155 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %156 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %155, i32 0, i32 6
  %157 = load %struct.sdhci_host*, %struct.sdhci_host** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.sdhci_host* %157)
  store i32 %158, i32* %8, align 4
  br label %386

159:                                              ; preds = %143
  %160 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %161 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %160, i32 0, i32 6
  %162 = load %struct.sdhci_host*, %struct.sdhci_host** %161, align 8
  %163 = load i32, i32* @PINCTRL_STATE_DEFAULT, align 4
  %164 = call %struct.sdhci_host* @pinctrl_lookup_state(%struct.sdhci_host* %162, i32 %163)
  %165 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %166 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %165, i32 0, i32 5
  store %struct.sdhci_host* %164, %struct.sdhci_host** %166, align 8
  %167 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %168 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %167, i32 0, i32 5
  %169 = load %struct.sdhci_host*, %struct.sdhci_host** %168, align 8
  %170 = call i64 @IS_ERR(%struct.sdhci_host* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %159
  %173 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %174 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @mmc_dev(%struct.TYPE_9__* %175)
  %177 = call i32 @dev_warn(i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %172, %159
  %179 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %180 = call i64 @esdhc_is_usdhc(%struct.pltfm_imx_data* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %234

182:                                              ; preds = %178
  %183 = load i32, i32* @SDHCI_QUIRK2_PRESET_VALUE_BROKEN, align 4
  %184 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %185 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %189 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %192 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %191, i32 0, i32 1
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %190
  store i32 %196, i32* %194, align 4
  %197 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %198 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %197, i32 0, i32 1
  %199 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %198, align 8
  %200 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ESDHC_FLAG_HS200, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %182
  %206 = load i32, i32* @SDHCI_QUIRK2_BROKEN_HS200, align 4
  %207 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %208 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %205, %182
  %212 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %213 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @ESDHC_MIX_CTRL, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 0, i64 %216)
  %218 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %219 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @SDHCI_AUTO_CMD_STATUS, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @writel(i32 0, i64 %222)
  %224 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %225 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @ESDHC_TUNE_CTRL_STATUS, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 0, i64 %228)
  %230 = load i32, i32* @usdhc_execute_tuning, align 4
  %231 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %232 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  store i32 %230, i32* %233, align 4
  br label %234

234:                                              ; preds = %211, %178
  %235 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %236 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %235, i32 0, i32 1
  %237 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %236, align 8
  %238 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ESDHC_FLAG_MAN_TUNING, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %234
  %244 = load i32, i32* @esdhc_executing_tuning, align 4
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdhci_esdhc_ops, i32 0, i32 0), align 4
  br label %245

245:                                              ; preds = %243, %234
  %246 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %247 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %246, i32 0, i32 1
  %248 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %247, align 8
  %249 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @ESDHC_FLAG_ERR004536, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %245
  %255 = load i32, i32* @SDHCI_QUIRK_BROKEN_ADMA, align 4
  %256 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %257 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %254, %245
  %261 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %262 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %261, i32 0, i32 1
  %263 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %262, align 8
  %264 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @ESDHC_FLAG_HS400, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %260
  %270 = load i32, i32* @SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400, align 4
  %271 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %272 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %269, %260
  %276 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %277 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %276, i32 0, i32 1
  %278 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %277, align 8
  %279 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @ESDHC_FLAG_HS400_ES, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %296

284:                                              ; preds = %275
  %285 = load i32, i32* @MMC_CAP2_HS400_ES, align 4
  %286 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %287 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %286, i32 0, i32 1
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %285
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* @esdhc_hs400_enhanced_strobe, align 4
  %293 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %294 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  store i32 %292, i32* %295, align 8
  br label %296

296:                                              ; preds = %284, %275
  %297 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %298 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %297, i32 0, i32 1
  %299 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %298, align 8
  %300 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ESDHC_FLAG_CQHCI, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %343

305:                                              ; preds = %296
  %306 = load i32, i32* @MMC_CAP2_CQE, align 4
  %307 = load i32, i32* @MMC_CAP2_CQE_DCMD, align 4
  %308 = or i32 %306, %307
  %309 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %310 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %309, i32 0, i32 1
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %308
  store i32 %314, i32* %312, align 4
  %315 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %316 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %315, i32 0, i32 0
  %317 = load i32, i32* @GFP_KERNEL, align 4
  %318 = call %struct.cqhci_host* @devm_kzalloc(i32* %316, i32 16, i32 %317)
  store %struct.cqhci_host* %318, %struct.cqhci_host** %7, align 8
  %319 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %320 = icmp ne %struct.cqhci_host* %319, null
  br i1 %320, label %324, label %321

321:                                              ; preds = %305
  %322 = load i32, i32* @ENOMEM, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %8, align 4
  br label %386

324:                                              ; preds = %305
  %325 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %326 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @ESDHC_CQHCI_ADDR_OFFSET, align 8
  %329 = add nsw i64 %327, %328
  %330 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %331 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %330, i32 0, i32 1
  store i64 %329, i64* %331, align 8
  %332 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %333 = getelementptr inbounds %struct.cqhci_host, %struct.cqhci_host* %332, i32 0, i32 0
  store i32* @esdhc_cqhci_ops, i32** %333, align 8
  %334 = load %struct.cqhci_host*, %struct.cqhci_host** %7, align 8
  %335 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %336 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %335, i32 0, i32 1
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %336, align 8
  %338 = call i32 @cqhci_init(%struct.cqhci_host* %334, %struct.TYPE_9__* %337, i32 0)
  store i32 %338, i32* %8, align 4
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %324
  br label %386

342:                                              ; preds = %324
  br label %343

343:                                              ; preds = %342, %296
  %344 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %345 = icmp ne %struct.of_device_id* %344, null
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %348 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %349 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %350 = call i32 @sdhci_esdhc_imx_probe_dt(%struct.platform_device* %347, %struct.sdhci_host* %348, %struct.pltfm_imx_data* %349)
  store i32 %350, i32* %8, align 4
  br label %356

351:                                              ; preds = %343
  %352 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %353 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %354 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %355 = call i32 @sdhci_esdhc_imx_probe_nondt(%struct.platform_device* %352, %struct.sdhci_host* %353, %struct.pltfm_imx_data* %354)
  store i32 %355, i32* %8, align 4
  br label %356

356:                                              ; preds = %351, %346
  %357 = load i32, i32* %8, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  br label %386

360:                                              ; preds = %356
  %361 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %362 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %361, i32 0, i32 0
  store i32 1, i32* %362, align 8
  %363 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %364 = call i32 @sdhci_esdhc_imx_hwinit(%struct.sdhci_host* %363)
  %365 = load %struct.sdhci_host*, %struct.sdhci_host** %6, align 8
  %366 = call i32 @sdhci_add_host(%struct.sdhci_host* %365)
  store i32 %366, i32* %8, align 4
  %367 = load i32, i32* %8, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %360
  br label %386

370:                                              ; preds = %360
  %371 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %372 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %371, i32 0, i32 0
  %373 = call i32 @pm_runtime_set_active(i32* %372)
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = call i32 @pm_runtime_set_autosuspend_delay(i32* %375, i32 50)
  %377 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %378 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %377, i32 0, i32 0
  %379 = call i32 @pm_runtime_use_autosuspend(i32* %378)
  %380 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %381 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %380, i32 0, i32 0
  %382 = call i32 @pm_suspend_ignore_children(i32* %381, i32 1)
  %383 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %384 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %383, i32 0, i32 0
  %385 = call i32 @pm_runtime_enable(i32* %384)
  store i32 0, i32* %2, align 4
  br label %418

386:                                              ; preds = %369, %359, %341, %321, %154
  %387 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %388 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %387, i32 0, i32 4
  %389 = load %struct.sdhci_host*, %struct.sdhci_host** %388, align 8
  %390 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %389)
  br label %391

391:                                              ; preds = %386, %142
  %392 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %393 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %392, i32 0, i32 3
  %394 = load %struct.sdhci_host*, %struct.sdhci_host** %393, align 8
  %395 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %394)
  br label %396

396:                                              ; preds = %391, %134
  %397 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %398 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %397, i32 0, i32 2
  %399 = load %struct.sdhci_host*, %struct.sdhci_host** %398, align 8
  %400 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %399)
  br label %401

401:                                              ; preds = %396, %126, %103, %86, %69
  %402 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %403 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %402, i32 0, i32 1
  %404 = load %struct.esdhc_soc_data*, %struct.esdhc_soc_data** %403, align 8
  %405 = getelementptr inbounds %struct.esdhc_soc_data, %struct.esdhc_soc_data* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @ESDHC_FLAG_PMQOS, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %401
  %411 = load %struct.pltfm_imx_data*, %struct.pltfm_imx_data** %9, align 8
  %412 = getelementptr inbounds %struct.pltfm_imx_data, %struct.pltfm_imx_data* %411, i32 0, i32 0
  %413 = call i32 @pm_qos_remove_request(i32* %412)
  br label %414

414:                                              ; preds = %410, %401
  %415 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %416 = call i32 @sdhci_pltfm_free(%struct.platform_device* %415)
  %417 = load i32, i32* %8, align 4
  store i32 %417, i32* %2, align 4
  br label %418

418:                                              ; preds = %414, %370, %19
  %419 = load i32, i32* %2, align 4
  ret i32 %419
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.pltfm_imx_data* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.sdhci_host*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_host* @devm_pinctrl_get(i32*) #1

declare dso_local %struct.sdhci_host* @pinctrl_lookup_state(%struct.sdhci_host*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_9__*) #1

declare dso_local i64 @esdhc_is_usdhc(%struct.pltfm_imx_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.cqhci_host* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @cqhci_init(%struct.cqhci_host*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sdhci_esdhc_imx_probe_dt(%struct.platform_device*, %struct.sdhci_host*, %struct.pltfm_imx_data*) #1

declare dso_local i32 @sdhci_esdhc_imx_probe_nondt(%struct.platform_device*, %struct.sdhci_host*, %struct.pltfm_imx_data*) #1

declare dso_local i32 @sdhci_esdhc_imx_hwinit(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
