; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_uniphier-sd.c_uniphier_sd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uniphier_sd_priv = type { i64, %struct.tmio_mmc_host*, %struct.tmio_mmc_data, %struct.tmio_mmc_host*, %struct.tmio_mmc_host*, %struct.tmio_mmc_host* }
%struct.tmio_mmc_data = type { i32, i32, i32, i32 }
%struct.tmio_mmc_host = type { i32, i32 (%struct.tmio_mmc_host*)*, %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get host reset\0A\00", align 1
@UNIPHIER_SD_CAP_EXTENDED_IP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to get bridge reset\0A\00", align 1
@TMIO_MMC_32BIT_DATA_PORT = common dso_local global i32 0, align 4
@MMC_CAP_HW_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get hw reset\0A\00", align 1
@uniphier_sd_hw_reset = common dso_local global i32 0, align 4
@MMC_CAP_UHS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to setup UHS (error %d).  Disabling UHS.\00", align 1
@tmio_mmc_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@uniphier_sd_internal_dma_ops = common dso_local global i32 0, align 4
@uniphier_sd_external_dma_ops = common dso_local global i32 0, align 4
@uniphier_sd_clk_disable = common dso_local global i32 0, align 4
@uniphier_sd_set_clock = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_VDD_165_195 = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_sd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_sd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_sd_priv*, align 8
  %6 = alloca %struct.tmio_mmc_data*, align 8
  %7 = alloca %struct.tmio_mmc_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %248

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.uniphier_sd_priv* @devm_kzalloc(%struct.device* %19, i32 56, i32 %20)
  store %struct.uniphier_sd_priv* %21, %struct.uniphier_sd_priv** %5, align 8
  %22 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %23 = icmp ne %struct.uniphier_sd_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %248

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i64 @of_device_get_match_data(%struct.device* %28)
  %30 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %31 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call %struct.tmio_mmc_host* @devm_clk_get(%struct.device* %32, i32* null)
  %34 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %35 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %34, i32 0, i32 5
  store %struct.tmio_mmc_host* %33, %struct.tmio_mmc_host** %35, align 8
  %36 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %37 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %36, i32 0, i32 5
  %38 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %37, align 8
  %39 = call i64 @IS_ERR(%struct.tmio_mmc_host* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %45 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %44, i32 0, i32 5
  %46 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %46)
  store i32 %47, i32* %2, align 4
  br label %248

48:                                               ; preds = %27
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i8* @devm_reset_control_get_shared(%struct.device* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = bitcast i8* %50 to %struct.tmio_mmc_host*
  %52 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %53 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %52, i32 0, i32 4
  store %struct.tmio_mmc_host* %51, %struct.tmio_mmc_host** %53, align 8
  %54 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %55 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %54, i32 0, i32 4
  %56 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %55, align 8
  %57 = call i64 @IS_ERR(%struct.tmio_mmc_host* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %63 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %62, i32 0, i32 4
  %64 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %63, align 8
  %65 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %64)
  store i32 %65, i32* %2, align 4
  br label %248

66:                                               ; preds = %48
  %67 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %68 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i8* @devm_reset_control_get_shared(%struct.device* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %77 = bitcast i8* %76 to %struct.tmio_mmc_host*
  %78 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %79 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %78, i32 0, i32 3
  store %struct.tmio_mmc_host* %77, %struct.tmio_mmc_host** %79, align 8
  %80 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %81 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %80, i32 0, i32 3
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %81, align 8
  %83 = call i64 @IS_ERR(%struct.tmio_mmc_host* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %89 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %88, i32 0, i32 3
  %90 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %90)
  store i32 %91, i32* %2, align 4
  br label %248

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %66
  %94 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %95 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %94, i32 0, i32 2
  store %struct.tmio_mmc_data* %95, %struct.tmio_mmc_data** %6, align 8
  %96 = load i32, i32* @TMIO_MMC_32BIT_DATA_PORT, align 4
  %97 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %98 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %103 = call %struct.tmio_mmc_host* @tmio_mmc_host_alloc(%struct.platform_device* %101, %struct.tmio_mmc_data* %102)
  store %struct.tmio_mmc_host* %103, %struct.tmio_mmc_host** %7, align 8
  %104 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %105 = call i64 @IS_ERR(%struct.tmio_mmc_host* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %109 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %108)
  store i32 %109, i32* %2, align 4
  br label %248

110:                                              ; preds = %93
  %111 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %112 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MMC_CAP_HW_RESET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %110
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call %struct.tmio_mmc_host* @devm_reset_control_get_exclusive(%struct.device* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %122 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %123 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %122, i32 0, i32 1
  store %struct.tmio_mmc_host* %121, %struct.tmio_mmc_host** %123, align 8
  %124 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %125 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %124, i32 0, i32 1
  %126 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %125, align 8
  %127 = call i64 @IS_ERR(%struct.tmio_mmc_host* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %119
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @dev_err(%struct.device* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %133 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %132, i32 0, i32 1
  %134 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %133, align 8
  %135 = call i32 @PTR_ERR(%struct.tmio_mmc_host* %134)
  store i32 %135, i32* %9, align 4
  br label %244

136:                                              ; preds = %119
  %137 = load i32, i32* @uniphier_sd_hw_reset, align 4
  %138 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %139 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %136, %110
  %141 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %142 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %141, i32 0, i32 2
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MMC_CAP_UHS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %140
  %150 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %151 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %152 = call i32 @uniphier_sd_uhs_init(%struct.tmio_mmc_host* %150, %struct.uniphier_sd_priv* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @dev_warn(%struct.device* %156, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @MMC_CAP_UHS, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %162 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %160
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %155, %149
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @tmio_mmc_irq, align 4
  %172 = load i32, i32* @IRQF_SHARED, align 4
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i32 @dev_name(%struct.device* %173)
  %175 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %176 = call i32 @devm_request_irq(%struct.device* %169, i32 %170, i32 %171, i32 %172, i32 %174, %struct.tmio_mmc_host* %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %244

180:                                              ; preds = %168
  %181 = load %struct.uniphier_sd_priv*, %struct.uniphier_sd_priv** %5, align 8
  %182 = getelementptr inbounds %struct.uniphier_sd_priv, %struct.uniphier_sd_priv* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @UNIPHIER_SD_CAP_EXTENDED_IP, align 4
  %185 = sext i32 %184 to i64
  %186 = and i64 %183, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %190 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %189, i32 0, i32 5
  store i32* @uniphier_sd_internal_dma_ops, i32** %190, align 8
  br label %194

191:                                              ; preds = %180
  %192 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %193 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %192, i32 0, i32 5
  store i32* @uniphier_sd_external_dma_ops, i32** %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %196 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %198 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %197, i32 0, i32 1
  store i32 (%struct.tmio_mmc_host*)* @uniphier_sd_clk_enable, i32 (%struct.tmio_mmc_host*)** %198, align 8
  %199 = load i32, i32* @uniphier_sd_clk_disable, align 4
  %200 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %201 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @uniphier_sd_set_clock, align 4
  %203 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %204 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %206 = call i32 @uniphier_sd_clk_enable(%struct.tmio_mmc_host* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  br label %244

210:                                              ; preds = %194
  %211 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %212 = call i32 @uniphier_sd_host_init(%struct.tmio_mmc_host* %211)
  %213 = load i32, i32* @MMC_VDD_32_33, align 4
  %214 = load i32, i32* @MMC_VDD_33_34, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %217 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %219 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %218, i32 0, i32 2
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @MMC_CAP_UHS, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %210
  %227 = load i32, i32* @MMC_VDD_165_195, align 4
  %228 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %229 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %226, %210
  %233 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %234 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  %235 = load i32, i32* @U16_MAX, align 4
  %236 = load %struct.tmio_mmc_data*, %struct.tmio_mmc_data** %6, align 8
  %237 = getelementptr inbounds %struct.tmio_mmc_data, %struct.tmio_mmc_data* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %239 = call i32 @tmio_mmc_host_probe(%struct.tmio_mmc_host* %238)
  store i32 %239, i32* %9, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  br label %244

243:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %248

244:                                              ; preds = %242, %209, %179, %129
  %245 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %7, align 8
  %246 = call i32 @tmio_mmc_host_free(%struct.tmio_mmc_host* %245)
  %247 = load i32, i32* %9, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %244, %243, %107, %85, %59, %41, %24, %16
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.uniphier_sd_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.tmio_mmc_host* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.tmio_mmc_host*) #1

declare dso_local i8* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local %struct.tmio_mmc_host* @tmio_mmc_host_alloc(%struct.platform_device*, %struct.tmio_mmc_data*) #1

declare dso_local %struct.tmio_mmc_host* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @uniphier_sd_uhs_init(%struct.tmio_mmc_host*, %struct.uniphier_sd_priv*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @uniphier_sd_clk_enable(%struct.tmio_mmc_host*) #1

declare dso_local i32 @uniphier_sd_host_init(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_host_probe(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_host_free(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
