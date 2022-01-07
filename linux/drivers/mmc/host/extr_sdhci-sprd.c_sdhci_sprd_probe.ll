; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-sprd.c_sdhci_sprd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32* }
%struct.sdhci_host = type { i32, i32, i32, i8*, %struct.TYPE_16__*, %struct.TYPE_17__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.sdhci_sprd_host = type { i32, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host*, i32, i64, %struct.sdhci_host*, %struct.sdhci_host*, %struct.sdhci_host* }
%struct.clk = type { i32, i32, i32, i8*, %struct.TYPE_16__*, %struct.TYPE_17__, i32 }

@sdhci_sprd_pdata = common dso_local global i32 0, align 4
@sdhci_sprd_request = common dso_local global i32 0, align 4
@sdhci_sprd_hs400_enhanced_strobe = common dso_local global i32 0, align 4
@sdhci_sprd_voltage_switch = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP_CMD23 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"state_uhs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@SDHCI_SPRD_CLK_DEF_RATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"2x_enable\00", align 1
@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@SDHCI_VENDOR_VER_MASK = common dso_local global i32 0, align 4
@SDHCI_VENDOR_VER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAPABILITIES_1 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR50 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_SDR104 = common dso_local global i32 0, align 4
@SDHCI_SUPPORT_DDR50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sdhci_sprd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_sprd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sdhci_host*, align 8
  %5 = alloca %struct.sdhci_sprd_host*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device* %8, i32* @sdhci_sprd_pdata, i32 72)
  store %struct.sdhci_host* %9, %struct.sdhci_host** %4, align 8
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %11 = call i64 @IS_ERR(%struct.sdhci_host* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.sdhci_host* %14)
  store i32 %15, i32* %2, align 4
  br label %310

16:                                               ; preds = %1
  %17 = call i32 @DMA_BIT_MASK(i32 64)
  %18 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %19 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 6
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load i32, i32* @sdhci_sprd_request, align 4
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @sdhci_sprd_hs400_enhanced_strobe, align 4
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %31 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @sdhci_sprd_voltage_switch, align 4
  %34 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %35 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %38 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MMC_CAP_ERASE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MMC_CAP_CMD23, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %45 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %44, i32 0, i32 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %49 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %48, i32 0, i32 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i32 @mmc_of_parse(%struct.TYPE_16__* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %16
  br label %306

55:                                               ; preds = %16
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %57 = call %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host* %56)
  store %struct.sdhci_sprd_host* %57, %struct.sdhci_sprd_host** %5, align 8
  %58 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sdhci_sprd_phy_param_parse(%struct.sdhci_sprd_host* %58, i32 %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call %struct.sdhci_host* @devm_pinctrl_get(%struct.TYPE_18__* %65)
  %67 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %68 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %67, i32 0, i32 7
  store %struct.sdhci_host* %66, %struct.sdhci_host** %68, align 8
  %69 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %70 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %69, i32 0, i32 7
  %71 = load %struct.sdhci_host*, %struct.sdhci_host** %70, align 8
  %72 = call i64 @IS_ERR(%struct.sdhci_host* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %55
  %75 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %76 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %75, i32 0, i32 7
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %76, align 8
  %78 = call i8* @pinctrl_lookup_state(%struct.sdhci_host* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %79 = bitcast i8* %78 to %struct.sdhci_host*
  %80 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %81 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %80, i32 0, i32 8
  store %struct.sdhci_host* %79, %struct.sdhci_host** %81, align 8
  %82 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %83 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %82, i32 0, i32 8
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %83, align 8
  %85 = call i64 @IS_ERR(%struct.sdhci_host* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %89 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %88, i32 0, i32 8
  %90 = load %struct.sdhci_host*, %struct.sdhci_host** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.sdhci_host* %90)
  store i32 %91, i32* %7, align 4
  br label %306

92:                                               ; preds = %74
  %93 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %94 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %93, i32 0, i32 7
  %95 = load %struct.sdhci_host*, %struct.sdhci_host** %94, align 8
  %96 = call i8* @pinctrl_lookup_state(%struct.sdhci_host* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %97 = bitcast i8* %96 to %struct.sdhci_host*
  %98 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %99 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %98, i32 0, i32 6
  store %struct.sdhci_host* %97, %struct.sdhci_host** %99, align 8
  %100 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %101 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %100, i32 0, i32 6
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %101, align 8
  %103 = call i64 @IS_ERR(%struct.sdhci_host* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %107 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %106, i32 0, i32 6
  %108 = load %struct.sdhci_host*, %struct.sdhci_host** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.sdhci_host* %108)
  store i32 %109, i32* %7, align 4
  br label %306

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110, %55
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_18__* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %115 = bitcast %struct.sdhci_host* %114 to %struct.clk*
  store %struct.clk* %115, %struct.clk** %6, align 8
  %116 = load %struct.clk*, %struct.clk** %6, align 8
  %117 = bitcast %struct.clk* %116 to %struct.sdhci_host*
  %118 = call i64 @IS_ERR(%struct.sdhci_host* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct.clk*, %struct.clk** %6, align 8
  %122 = bitcast %struct.clk* %121 to %struct.sdhci_host*
  %123 = call i32 @PTR_ERR(%struct.sdhci_host* %122)
  store i32 %123, i32* %7, align 4
  br label %306

124:                                              ; preds = %111
  %125 = load %struct.clk*, %struct.clk** %6, align 8
  %126 = bitcast %struct.clk* %125 to %struct.sdhci_host*
  %127 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %128 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %127, i32 0, i32 1
  store %struct.sdhci_host* %126, %struct.sdhci_host** %128, align 8
  %129 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %130 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %129, i32 0, i32 1
  %131 = load %struct.sdhci_host*, %struct.sdhci_host** %130, align 8
  %132 = call i64 @clk_get_rate(%struct.sdhci_host* %131)
  %133 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %134 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  %135 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %136 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %124
  %140 = load i64, i64* @SDHCI_SPRD_CLK_DEF_RATE, align 8
  %141 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %142 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %141, i32 0, i32 5
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %124
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_18__* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %147 = bitcast %struct.sdhci_host* %146 to %struct.clk*
  store %struct.clk* %147, %struct.clk** %6, align 8
  %148 = load %struct.clk*, %struct.clk** %6, align 8
  %149 = bitcast %struct.clk* %148 to %struct.sdhci_host*
  %150 = call i64 @IS_ERR(%struct.sdhci_host* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load %struct.clk*, %struct.clk** %6, align 8
  %154 = bitcast %struct.clk* %153 to %struct.sdhci_host*
  %155 = call i32 @PTR_ERR(%struct.sdhci_host* %154)
  store i32 %155, i32* %7, align 4
  br label %306

156:                                              ; preds = %143
  %157 = load %struct.clk*, %struct.clk** %6, align 8
  %158 = bitcast %struct.clk* %157 to %struct.sdhci_host*
  %159 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %160 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %159, i32 0, i32 2
  store %struct.sdhci_host* %158, %struct.sdhci_host** %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call %struct.sdhci_host* @devm_clk_get(%struct.TYPE_18__* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %164 = bitcast %struct.sdhci_host* %163 to %struct.clk*
  store %struct.clk* %164, %struct.clk** %6, align 8
  %165 = load %struct.clk*, %struct.clk** %6, align 8
  %166 = bitcast %struct.clk* %165 to %struct.sdhci_host*
  %167 = call i64 @IS_ERR(%struct.sdhci_host* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %156
  %170 = load %struct.clk*, %struct.clk** %6, align 8
  %171 = bitcast %struct.clk* %170 to %struct.sdhci_host*
  %172 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %173 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %172, i32 0, i32 3
  store %struct.sdhci_host* %171, %struct.sdhci_host** %173, align 8
  br label %174

174:                                              ; preds = %169, %156
  %175 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %176 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %175, i32 0, i32 1
  %177 = load %struct.sdhci_host*, %struct.sdhci_host** %176, align 8
  %178 = call i32 @clk_prepare_enable(%struct.sdhci_host* %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %306

182:                                              ; preds = %174
  %183 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %184 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %183, i32 0, i32 2
  %185 = load %struct.sdhci_host*, %struct.sdhci_host** %184, align 8
  %186 = call i32 @clk_prepare_enable(%struct.sdhci_host* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %301

190:                                              ; preds = %182
  %191 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %192 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %191, i32 0, i32 3
  %193 = load %struct.sdhci_host*, %struct.sdhci_host** %192, align 8
  %194 = call i32 @clk_prepare_enable(%struct.sdhci_host* %193)
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %296

198:                                              ; preds = %190
  %199 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %200 = call i32 @sdhci_sprd_init_config(%struct.sdhci_host* %199)
  %201 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %202 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %203 = call i32 @sdhci_readw(%struct.sdhci_host* %201, i32 %202)
  %204 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %205 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %207 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SDHCI_VENDOR_VER_MASK, align 4
  %210 = and i32 %208, %209
  %211 = load i32, i32* @SDHCI_VENDOR_VER_SHIFT, align 4
  %212 = ashr i32 %210, %211
  %213 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %214 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @pm_runtime_get_noresume(%struct.TYPE_18__* %216)
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 @pm_runtime_set_active(%struct.TYPE_18__* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %222)
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__* %225, i32 50)
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__* %228)
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = call i32 @pm_suspend_ignore_children(%struct.TYPE_18__* %231, i32 1)
  %233 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %234 = call i32 @sdhci_enable_v4_mode(%struct.sdhci_host* %233)
  %235 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %236 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %237 = call i8* @sdhci_readl(%struct.sdhci_host* %235, i32 %236)
  %238 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %239 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %238, i32 0, i32 3
  store i8* %237, i8** %239, align 8
  %240 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %241 = load i32, i32* @SDHCI_CAPABILITIES_1, align 4
  %242 = call i8* @sdhci_readl(%struct.sdhci_host* %240, i32 %241)
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %245 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @SDHCI_SUPPORT_SDR50, align 4
  %247 = load i32, i32* @SDHCI_SUPPORT_SDR104, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @SDHCI_SUPPORT_DDR50, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %253 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %257 = call i32 @sdhci_setup_host(%struct.sdhci_host* %256)
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %198
  br label %282

261:                                              ; preds = %198
  %262 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %263 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %266 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %268 = call i32 @__sdhci_add_host(%struct.sdhci_host* %267)
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %261
  br label %279

272:                                              ; preds = %261
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_18__* %274)
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_18__* %277)
  store i32 0, i32* %2, align 4
  br label %310

279:                                              ; preds = %271
  %280 = load %struct.sdhci_host*, %struct.sdhci_host** %4, align 8
  %281 = call i32 @sdhci_cleanup_host(%struct.sdhci_host* %280)
  br label %282

282:                                              ; preds = %279, %260
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = call i32 @pm_runtime_put_noidle(%struct.TYPE_18__* %284)
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %287)
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = call i32 @pm_runtime_set_suspended(%struct.TYPE_18__* %290)
  %292 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %293 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %292, i32 0, i32 3
  %294 = load %struct.sdhci_host*, %struct.sdhci_host** %293, align 8
  %295 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %294)
  br label %296

296:                                              ; preds = %282, %197
  %297 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %298 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %297, i32 0, i32 2
  %299 = load %struct.sdhci_host*, %struct.sdhci_host** %298, align 8
  %300 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %299)
  br label %301

301:                                              ; preds = %296, %189
  %302 = load %struct.sdhci_sprd_host*, %struct.sdhci_sprd_host** %5, align 8
  %303 = getelementptr inbounds %struct.sdhci_sprd_host, %struct.sdhci_sprd_host* %302, i32 0, i32 1
  %304 = load %struct.sdhci_host*, %struct.sdhci_host** %303, align 8
  %305 = call i32 @clk_disable_unprepare(%struct.sdhci_host* %304)
  br label %306

306:                                              ; preds = %301, %181, %152, %120, %105, %87, %54
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = call i32 @sdhci_pltfm_free(%struct.platform_device* %307)
  %309 = load i32, i32* %7, align 4
  store i32 %309, i32* %2, align 4
  br label %310

310:                                              ; preds = %306, %272, %13
  %311 = load i32, i32* %2, align 4
  ret i32 %311
}

declare dso_local %struct.sdhci_host* @sdhci_pltfm_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @PTR_ERR(%struct.sdhci_host*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @mmc_of_parse(%struct.TYPE_16__*) #1

declare dso_local %struct.sdhci_sprd_host* @TO_SPRD_HOST(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_sprd_phy_param_parse(%struct.sdhci_sprd_host*, i32) #1

declare dso_local %struct.sdhci_host* @devm_pinctrl_get(%struct.TYPE_18__*) #1

declare dso_local i8* @pinctrl_lookup_state(%struct.sdhci_host*, i8*) #1

declare dso_local %struct.sdhci_host* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @clk_get_rate(%struct.sdhci_host*) #1

declare dso_local i32 @clk_prepare_enable(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_sprd_init_config(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_readw(%struct.sdhci_host*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sdhci_enable_v4_mode(%struct.sdhci_host*) #1

declare dso_local i8* @sdhci_readl(%struct.sdhci_host*, i32) #1

declare dso_local i32 @sdhci_setup_host(%struct.sdhci_host*) #1

declare dso_local i32 @__sdhci_add_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @sdhci_cleanup_host(%struct.sdhci_host*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_18__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.sdhci_host*) #1

declare dso_local i32 @sdhci_pltfm_free(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
