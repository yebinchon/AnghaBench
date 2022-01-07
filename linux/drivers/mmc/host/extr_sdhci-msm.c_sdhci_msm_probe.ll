; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-msm.c_sdhci_msm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sdhci_host = type { %struct.TYPE_5__, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sdhci_pltfm_host = type { i32 }
%struct.sdhci_msm_host = type { i32, i32, i32, %struct.sdhci_host*, %struct.TYPE_6__*, i32, %struct.sdhci_host*, %struct.sdhci_host*, i32, %struct.sdhci_msm_offset*, i32, i32, %struct.platform_device*, i32 }
%struct.TYPE_6__ = type { %struct.sdhci_host* }
%struct.sdhci_msm_offset = type { i32, i64, i32, i32, i64 }
%struct.resource = type { i32 }
%struct.clk = type { %struct.TYPE_5__, i64, i32, i64 }
%struct.sdhci_msm_variant_info = type { %struct.sdhci_msm_offset*, i32, i32, i32 }

@sdhci_msm_pdata = common dso_local global i32 0, align 4
@INVALID_TUNING_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Peripheral clk setup failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"SDC MMC clk setup failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"core clock boost failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"TCXO clk not present (%d)\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@CORE_VENDOR_SPEC_POR_VAL = common dso_local global i32 0, align 4
@HC_MODE_EN = common dso_local global i32 0, align 4
@FF_CLK_SW_RST_DIS = common dso_local global i32 0, align 4
@SDHCI_HOST_VERSION = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"Host Version: 0x%x Vendor Version 0x%x\0A\00", align 1
@SDHCI_VENDOR_VER_MASK = common dso_local global i32 0, align 4
@SDHCI_VENDOR_VER_SHIFT = common dso_local global i32 0, align 4
@CORE_VERSION_MAJOR_MASK = common dso_local global i32 0, align 4
@CORE_VERSION_MAJOR_SHIFT = common dso_local global i32 0, align 4
@CORE_VERSION_MINOR_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"MCI Version: 0x%08x, major: 0x%04x, minor: 0x%02x\0A\00", align 1
@SDHCI_CAPABILITIES = common dso_local global i64 0, align 8
@SDHCI_CAN_VDD_300 = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_8BIT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"pwr_irq\00", align 1
@INT_MASK = common dso_local global i32 0, align 4
@sdhci_msm_pwr_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [25 x i8] c"Request IRQ failed (%d)\0A\00", align 1
@MSM_MMC_AUTOSUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@sdhci_msm_execute_tuning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_msm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_msm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_pltfm_host*, align 8
  %6 = alloca %struct.sdhci_msm_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sdhci_msm_offset*, align 8
  %16 = alloca %struct.sdhci_msm_variant_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %17, i32* @sdhci_msm_pdata, i32 96)
  store %struct.sdhci_host* %18, %struct.sdhci_host** %4, align 8
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %20 = call i64 @IS_ERR(%struct.sdhci_host* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.sdhci_host* %23)
  store i32 %24, i32* %2, align 4
  br label %496

25:                                               ; preds = %1
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %29 = call %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host* %28)
  store %struct.sdhci_pltfm_host* %29, %struct.sdhci_pltfm_host** %5, align 8
  %30 = load %struct.sdhci_pltfm_host*, %struct.sdhci_pltfm_host** %5, align 8
  %31 = call %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host* %30)
  store %struct.sdhci_msm_host* %31, %struct.sdhci_msm_host** %6, align 8
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %33 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %36 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %39 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %38, i32 0, i32 12
  store %struct.platform_device* %37, %struct.platform_device** %39, align 8
  %40 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %41 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mmc_of_parse(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %492

47:                                               ; preds = %25
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.sdhci_msm_variant_info* @of_device_get_match_data(i32* %49)
  store %struct.sdhci_msm_variant_info* %50, %struct.sdhci_msm_variant_info** %16, align 8
  %51 = load %struct.sdhci_msm_variant_info*, %struct.sdhci_msm_variant_info** %16, align 8
  %52 = getelementptr inbounds %struct.sdhci_msm_variant_info, %struct.sdhci_msm_variant_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %55 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sdhci_msm_variant_info*, %struct.sdhci_msm_variant_info** %16, align 8
  %57 = getelementptr inbounds %struct.sdhci_msm_variant_info, %struct.sdhci_msm_variant_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %60 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load %struct.sdhci_msm_variant_info*, %struct.sdhci_msm_variant_info** %16, align 8
  %62 = getelementptr inbounds %struct.sdhci_msm_variant_info, %struct.sdhci_msm_variant_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %65 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sdhci_msm_variant_info*, %struct.sdhci_msm_variant_info** %16, align 8
  %67 = getelementptr inbounds %struct.sdhci_msm_variant_info, %struct.sdhci_msm_variant_info* %66, i32 0, i32 0
  %68 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %67, align 8
  %69 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %70 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %69, i32 0, i32 9
  store %struct.sdhci_msm_offset* %68, %struct.sdhci_msm_offset** %70, align 8
  %71 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %72 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %71, i32 0, i32 9
  %73 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %72, align 8
  store %struct.sdhci_msm_offset* %73, %struct.sdhci_msm_offset** %15, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = call i32 @sdhci_get_of_property(%struct.platform_device* %74)
  %76 = load i32, i32* @INVALID_TUNING_PHASE, align 4
  %77 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %78 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i8* @devm_clk_get(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = bitcast i8* %81 to %struct.sdhci_host*
  %83 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %84 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %83, i32 0, i32 3
  store %struct.sdhci_host* %82, %struct.sdhci_host** %84, align 8
  %85 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %86 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %85, i32 0, i32 3
  %87 = load %struct.sdhci_host*, %struct.sdhci_host** %86, align 8
  %88 = call i64 @IS_ERR(%struct.sdhci_host* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %47
  %91 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %92 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %91, i32 0, i32 3
  %93 = load %struct.sdhci_host*, %struct.sdhci_host** %92, align 8
  %94 = load i32, i32* @INT_MAX, align 4
  %95 = call i32 @clk_set_rate(%struct.sdhci_host* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %492

99:                                               ; preds = %90
  %100 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %101 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %100, i32 0, i32 3
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %101, align 8
  %103 = call i32 @clk_prepare_enable(%struct.sdhci_host* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %492

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %47
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i8* @devm_clk_get(i32* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %112 = bitcast i8* %111 to %struct.clk*
  store %struct.clk* %112, %struct.clk** %8, align 8
  %113 = load %struct.clk*, %struct.clk** %8, align 8
  %114 = bitcast %struct.clk* %113 to %struct.sdhci_host*
  %115 = call i64 @IS_ERR(%struct.sdhci_host* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load %struct.clk*, %struct.clk** %8, align 8
  %119 = bitcast %struct.clk* %118 to %struct.sdhci_host*
  %120 = call i32 @PTR_ERR(%struct.sdhci_host* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %480

125:                                              ; preds = %108
  %126 = load %struct.clk*, %struct.clk** %8, align 8
  %127 = bitcast %struct.clk* %126 to %struct.sdhci_host*
  %128 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %129 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %128, i32 0, i32 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store %struct.sdhci_host* %127, %struct.sdhci_host** %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i8* @devm_clk_get(i32* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %136 = bitcast i8* %135 to %struct.clk*
  store %struct.clk* %136, %struct.clk** %8, align 8
  %137 = load %struct.clk*, %struct.clk** %8, align 8
  %138 = bitcast %struct.clk* %137 to %struct.sdhci_host*
  %139 = call i64 @IS_ERR(%struct.sdhci_host* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %125
  %142 = load %struct.clk*, %struct.clk** %8, align 8
  %143 = bitcast %struct.clk* %142 to %struct.sdhci_host*
  %144 = call i32 @PTR_ERR(%struct.sdhci_host* %143)
  store i32 %144, i32* %9, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %480

149:                                              ; preds = %125
  %150 = load %struct.clk*, %struct.clk** %8, align 8
  %151 = bitcast %struct.clk* %150 to %struct.sdhci_host*
  %152 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %153 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %152, i32 0, i32 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store %struct.sdhci_host* %151, %struct.sdhci_host** %156, align 8
  %157 = load %struct.clk*, %struct.clk** %8, align 8
  %158 = bitcast %struct.clk* %157 to %struct.sdhci_host*
  %159 = load i32, i32* @INT_MAX, align 4
  %160 = call i32 @clk_set_rate(%struct.sdhci_host* %158, i32 %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %149
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 (i32*, i8*, ...) @dev_warn(i32* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %163, %149
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i8* @devm_clk_get(i32* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %171 = bitcast i8* %170 to %struct.clk*
  store %struct.clk* %171, %struct.clk** %8, align 8
  %172 = load %struct.clk*, %struct.clk** %8, align 8
  %173 = bitcast %struct.clk* %172 to %struct.sdhci_host*
  %174 = call i64 @IS_ERR(%struct.sdhci_host* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store %struct.clk* null, %struct.clk** %8, align 8
  br label %177

177:                                              ; preds = %176, %167
  %178 = load %struct.clk*, %struct.clk** %8, align 8
  %179 = bitcast %struct.clk* %178 to %struct.sdhci_host*
  %180 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %181 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %180, i32 0, i32 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store %struct.sdhci_host* %179, %struct.sdhci_host** %184, align 8
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = call i8* @devm_clk_get(i32* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %188 = bitcast i8* %187 to %struct.clk*
  store %struct.clk* %188, %struct.clk** %8, align 8
  %189 = load %struct.clk*, %struct.clk** %8, align 8
  %190 = bitcast %struct.clk* %189 to %struct.sdhci_host*
  %191 = call i64 @IS_ERR(%struct.sdhci_host* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %177
  store %struct.clk* null, %struct.clk** %8, align 8
  br label %194

194:                                              ; preds = %193, %177
  %195 = load %struct.clk*, %struct.clk** %8, align 8
  %196 = bitcast %struct.clk* %195 to %struct.sdhci_host*
  %197 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %198 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 3
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store %struct.sdhci_host* %196, %struct.sdhci_host** %201, align 8
  %202 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %203 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %202, i32 0, i32 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %204)
  %206 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %207 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %206, i32 0, i32 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = call i32 @clk_bulk_prepare_enable(i32 %205, %struct.TYPE_6__* %208)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %194
  br label %480

213:                                              ; preds = %194
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = call i8* @devm_clk_get(i32* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %217 = bitcast i8* %216 to %struct.sdhci_host*
  %218 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %219 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %218, i32 0, i32 7
  store %struct.sdhci_host* %217, %struct.sdhci_host** %219, align 8
  %220 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %221 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %220, i32 0, i32 7
  %222 = load %struct.sdhci_host*, %struct.sdhci_host** %221, align 8
  %223 = call i64 @IS_ERR(%struct.sdhci_host* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %213
  %226 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %227 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %226, i32 0, i32 7
  %228 = load %struct.sdhci_host*, %struct.sdhci_host** %227, align 8
  %229 = call i32 @PTR_ERR(%struct.sdhci_host* %228)
  store i32 %229, i32* %9, align 4
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = load i32, i32* %9, align 4
  %233 = call i32 (i32*, i8*, ...) @dev_warn(i32* %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %225, %213
  %235 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %236 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %260, label %239

239:                                              ; preds = %234
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = load i32, i32* @IORESOURCE_MEM, align 4
  %242 = call %struct.resource* @platform_get_resource(%struct.platform_device* %240, i32 %241, i32 1)
  store %struct.resource* %242, %struct.resource** %7, align 8
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load %struct.resource*, %struct.resource** %7, align 8
  %246 = call %struct.sdhci_host* @devm_ioremap_resource(i32* %244, %struct.resource* %245)
  %247 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %248 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %247, i32 0, i32 6
  store %struct.sdhci_host* %246, %struct.sdhci_host** %248, align 8
  %249 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %250 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %249, i32 0, i32 6
  %251 = load %struct.sdhci_host*, %struct.sdhci_host** %250, align 8
  %252 = call i64 @IS_ERR(%struct.sdhci_host* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %239
  %255 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %256 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %255, i32 0, i32 6
  %257 = load %struct.sdhci_host*, %struct.sdhci_host** %256, align 8
  %258 = call i32 @PTR_ERR(%struct.sdhci_host* %257)
  store i32 %258, i32* %9, align 4
  br label %471

259:                                              ; preds = %239
  br label %260

260:                                              ; preds = %259, %234
  %261 = load i32, i32* @CORE_VENDOR_SPEC_POR_VAL, align 4
  %262 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %263 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %266 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = call i32 @writel_relaxed(i32 %261, i64 %268)
  %270 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %271 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %298, label %274

274:                                              ; preds = %260
  %275 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %276 = load i32, i32* @HC_MODE_EN, align 4
  %277 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %278 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %279 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @msm_host_writel(%struct.sdhci_msm_host* %275, i32 %276, %struct.sdhci_host* %277, i32 %280)
  %282 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %283 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %284 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %285 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @msm_host_readl(%struct.sdhci_msm_host* %282, %struct.sdhci_host* %283, i32 %286)
  store i32 %287, i32* %13, align 4
  %288 = load i32, i32* @FF_CLK_SW_RST_DIS, align 4
  %289 = load i32, i32* %13, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %13, align 4
  %291 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %294 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %295 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @msm_host_writel(%struct.sdhci_msm_host* %291, i32 %292, %struct.sdhci_host* %293, i32 %296)
  br label %298

298:                                              ; preds = %274, %260
  %299 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %300 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @SDHCI_HOST_VERSION, align 8
  %303 = add nsw i64 %301, %302
  %304 = call i32 @readw_relaxed(i64 %303)
  store i32 %304, i32* %10, align 4
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load i32, i32* @SDHCI_VENDOR_VER_MASK, align 4
  %310 = and i32 %308, %309
  %311 = load i32, i32* @SDHCI_VENDOR_VER_SHIFT, align 4
  %312 = ashr i32 %310, %311
  %313 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %306, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %307, i32 %312)
  %314 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %315 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %316 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %317 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @msm_host_readl(%struct.sdhci_msm_host* %314, %struct.sdhci_host* %315, i32 %318)
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* @CORE_VERSION_MAJOR_MASK, align 4
  %322 = and i32 %320, %321
  %323 = load i32, i32* @CORE_VERSION_MAJOR_SHIFT, align 4
  %324 = ashr i32 %322, %323
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* @CORE_VERSION_MINOR_MASK, align 4
  %327 = and i32 %325, %326
  store i32 %327, i32* %11, align 4
  %328 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %329 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %328, i32 0, i32 0
  %330 = load i32, i32* %12, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %329, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %330, i32 %331, i32 %332)
  %334 = load i32, i32* %14, align 4
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %342

336:                                              ; preds = %298
  %337 = load i32, i32* %11, align 4
  %338 = icmp sge i32 %337, 66
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %341 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %340, i32 0, i32 0
  store i32 1, i32* %341, align 8
  br label %342

342:                                              ; preds = %339, %336, %298
  %343 = load i32, i32* %14, align 4
  %344 = icmp eq i32 %343, 1
  br i1 %344, label %345, label %351

345:                                              ; preds = %342
  %346 = load i32, i32* %11, align 4
  %347 = icmp slt i32 %346, 52
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %350 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %349, i32 0, i32 1
  store i32 1, i32* %350, align 4
  br label %351

351:                                              ; preds = %348, %345, %342
  %352 = load i32, i32* %14, align 4
  %353 = icmp sge i32 %352, 1
  br i1 %353, label %354, label %381

354:                                              ; preds = %351
  %355 = load i32, i32* %11, align 4
  %356 = icmp ne i32 %355, 17
  br i1 %356, label %357, label %381

357:                                              ; preds = %354
  %358 = load i32, i32* %11, align 4
  %359 = icmp ne i32 %358, 18
  br i1 %359, label %360, label %381

360:                                              ; preds = %357
  %361 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %362 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @SDHCI_CAPABILITIES, align 8
  %365 = add nsw i64 %363, %364
  %366 = call i32 @readl_relaxed(i64 %365)
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* @SDHCI_CAN_VDD_300, align 4
  %368 = load i32, i32* @SDHCI_CAN_DO_8BIT, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* %13, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* %13, align 4
  %372 = load i32, i32* %13, align 4
  %373 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %374 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %377 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %375, %378
  %380 = call i32 @writel_relaxed(i32 %372, i64 %379)
  br label %381

381:                                              ; preds = %360, %357, %354, %351
  %382 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %383 = call i32 @sdhci_msm_handle_pwr_irq(%struct.sdhci_host* %382, i32 0)
  %384 = call i32 (...) @mb()
  %385 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %386 = call i32 @platform_get_irq_byname(%struct.platform_device* %385, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %387 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %388 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %387, i32 0, i32 2
  store i32 %386, i32* %388, align 8
  %389 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %390 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %381
  %394 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %395 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  store i32 %396, i32* %9, align 4
  br label %471

397:                                              ; preds = %381
  %398 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %399 = call i32 @sdhci_msm_init_pwr_irq_wait(%struct.sdhci_msm_host* %398)
  %400 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %401 = load i32, i32* @INT_MASK, align 4
  %402 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %403 = load %struct.sdhci_msm_offset*, %struct.sdhci_msm_offset** %15, align 8
  %404 = getelementptr inbounds %struct.sdhci_msm_offset, %struct.sdhci_msm_offset* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @msm_host_writel(%struct.sdhci_msm_host* %400, i32 %401, %struct.sdhci_host* %402, i32 %405)
  %407 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %408 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %407, i32 0, i32 0
  %409 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %410 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @sdhci_msm_pwr_irq, align 4
  %413 = load i32, i32* @IRQF_ONESHOT, align 4
  %414 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %415 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %414, i32 0, i32 0
  %416 = call i32 @dev_name(i32* %415)
  %417 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %418 = call i32 @devm_request_threaded_irq(i32* %408, i32 %411, i32* null, i32 %412, i32 %413, i32 %416, %struct.sdhci_host* %417)
  store i32 %418, i32* %9, align 4
  %419 = load i32, i32* %9, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %397
  %422 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %423 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %422, i32 0, i32 0
  %424 = load i32, i32* %9, align 4
  %425 = call i32 @dev_err(i32* %423, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %424)
  br label %471

426:                                              ; preds = %397
  %427 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %428 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %427, i32 0, i32 0
  %429 = call i32 @pm_runtime_get_noresume(i32* %428)
  %430 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %431 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %430, i32 0, i32 0
  %432 = call i32 @pm_runtime_set_active(i32* %431)
  %433 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %434 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %433, i32 0, i32 0
  %435 = call i32 @pm_runtime_enable(i32* %434)
  %436 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %437 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %436, i32 0, i32 0
  %438 = load i32, i32* @MSM_MMC_AUTOSUSPEND_DELAY_MS, align 4
  %439 = call i32 @pm_runtime_set_autosuspend_delay(i32* %437, i32 %438)
  %440 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %441 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %440, i32 0, i32 0
  %442 = call i32 @pm_runtime_use_autosuspend(i32* %441)
  %443 = load i32, i32* @sdhci_msm_execute_tuning, align 4
  %444 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %445 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  store i32 %443, i32* %446, align 8
  %447 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %448 = call i32 @sdhci_add_host(%struct.sdhci_host* %447)
  store i32 %448, i32* %9, align 4
  %449 = load i32, i32* %9, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %426
  br label %461

452:                                              ; preds = %426
  %453 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %454 = call i32 @sdhci_msm_set_regulator_caps(%struct.sdhci_msm_host* %453)
  %455 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %456 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %455, i32 0, i32 0
  %457 = call i32 @pm_runtime_mark_last_busy(i32* %456)
  %458 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %459 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %458, i32 0, i32 0
  %460 = call i32 @pm_runtime_put_autosuspend(i32* %459)
  store i32 0, i32* %2, align 4
  br label %496

461:                                              ; preds = %451
  %462 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %463 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %462, i32 0, i32 0
  %464 = call i32 @pm_runtime_disable(i32* %463)
  %465 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %466 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %465, i32 0, i32 0
  %467 = call i32 @pm_runtime_set_suspended(i32* %466)
  %468 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %469 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %468, i32 0, i32 0
  %470 = call i32 @pm_runtime_put_noidle(i32* %469)
  br label %471

471:                                              ; preds = %461, %421, %393, %254
  %472 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %473 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %472, i32 0, i32 4
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %473, align 8
  %475 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %474)
  %476 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %477 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %476, i32 0, i32 4
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %477, align 8
  %479 = call i32 @clk_bulk_disable_unprepare(i32 %475, %struct.TYPE_6__* %478)
  br label %480

480:                                              ; preds = %471, %212, %141, %117
  %481 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %482 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %481, i32 0, i32 3
  %483 = load %struct.sdhci_host*, %struct.sdhci_host** %482, align 8
  %484 = call i64 @IS_ERR(%struct.sdhci_host* %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %491, label %486

486:                                              ; preds = %480
  %487 = load %struct.sdhci_msm_host*, %struct.sdhci_msm_host** %6, align 8
  %488 = getelementptr inbounds %struct.sdhci_msm_host, %struct.sdhci_msm_host* %487, i32 0, i32 3
  %489 = load %struct.sdhci_host*, %struct.sdhci_host** %488, align 8
  %490 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %489)
  br label %491

491:                                              ; preds = %486, %480
  br label %492

492:                                              ; preds = %491, %106, %98, %46
  %493 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %494 = call i32 @sdhci_pltfm_free(%struct.platform_device* %493)
  %495 = load i32, i32* %9, align 4
  store i32 %495, i32* %2, align 4
  br label %496

496:                                              ; preds = %492, %452, %22
  %497 = load i32, i32* %2, align 4
  ret i32 %497
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_pltfm_host* @sdhci_priv(%struct.sdhci_host*) #1

declare dso_local %struct.sdhci_msm_host* @sdhci_pltfm_priv(%struct.sdhci_pltfm_host*) #1

declare dso_local i32 @mmc_of_parse(i32) #1

declare dso_local %struct.sdhci_msm_variant_info* @of_device_get_match_data(i32*) #1

declare dso_local i32 @sdhci_get_of_property(%struct.platform_device*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_set_rate(%struct.sdhci_host*, i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.sdhci_host* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @msm_host_writel(%struct.sdhci_msm_host*, i32, %struct.sdhci_host*, i32) #1

declare dso_local i32 @msm_host_readl(%struct.sdhci_msm_host*, %struct.sdhci_host*, i32) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @sdhci_msm_handle_pwr_irq(%struct.sdhci_host*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @sdhci_msm_init_pwr_irq_wait(%struct.sdhci_msm_host*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.sdhci_host*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_msm_set_regulator_caps(%struct.sdhci_msm_host*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
