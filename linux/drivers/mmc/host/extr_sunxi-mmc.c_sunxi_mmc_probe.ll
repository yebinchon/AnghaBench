; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.sunxi_mmc_host = type { i32, i32, i32, %struct.TYPE_12__*, i32, i32, %struct.mmc_host*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"mmc alloc host failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate DMA descriptor mem\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"MMC clk timing mode unknown\0A\00", align 1
@sunxi_mmc_ops = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"allwinner,sun50i-h5-emmc\00", align 1
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_3_3V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_1_2V_DDR = common dso_local global i32 0, align 4
@MMC_CAP_UHS = common dso_local global i32 0, align 4
@MMC_CAP2_HS200 = common dso_local global i32 0, align 4
@MMC_CAP2_HS400 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"initialized, max. request size: %u KB%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c", uses new timings mode\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_mmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_mmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sunxi_mmc_host*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.mmc_host* @mmc_alloc_host(i32 48, %struct.TYPE_13__* %8)
  store %struct.mmc_host* %9, %struct.mmc_host** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %11 = icmp ne %struct.mmc_host* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(%struct.TYPE_13__* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %271

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.mmc_host* %20)
  %22 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %23 = call %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host* %22)
  store %struct.sunxi_mmc_host* %23, %struct.sunxi_mmc_host** %4, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %26, i32 0, i32 7
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  %28 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %29 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %30 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %29, i32 0, i32 6
  store %struct.mmc_host* %28, %struct.mmc_host** %30, align 8
  %31 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %32 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %31, i32 0, i32 5
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @sunxi_mmc_resource_request(%struct.sunxi_mmc_host* %34, %struct.platform_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %267

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %44, i32 0, i32 1
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @dma_alloc_coherent(%struct.TYPE_13__* %42, i32 %43, i32* %45, i32 %46)
  %48 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %49 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %51 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %40
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %267

60:                                               ; preds = %40
  %61 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %62 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %61, i32 0, i32 3
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %69 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sunxi_ccu_set_mmc_timing_mode(i32 %70, i32 1)
  %72 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @sunxi_ccu_get_mmc_timing_mode(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @dev_warn(%struct.TYPE_13__* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %83 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %92

84:                                               ; preds = %67
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %91 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %84, %78
  br label %104

93:                                               ; preds = %60
  %94 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %95 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %94, i32 0, i32 3
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %102 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %92
  %105 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %105, i32 0, i32 9
  store i32* @sunxi_mmc_ops, i32** %106, align 8
  %107 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %108 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %107, i32 0, i32 0
  store i32 8192, i32* %108, align 8
  %109 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 1
  store i32 4096, i32* %110, align 4
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %116 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %118 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %117, i32 0, i32 3
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 1, %121
  %123 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %124 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %126 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %129 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %133 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %135 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %134, i32 0, i32 5
  store i32 400000, i32* %135, align 4
  %136 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %137 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %136, i32 0, i32 6
  store i32 52000000, i32* %137, align 8
  %138 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %139 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MMC_CAP_ERASE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %146 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %150 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %104
  %156 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %157 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %155, %104
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @of_device_is_compatible(i32 %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %169 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %172 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %167, %160, %155
  %176 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %177 = call i32 @mmc_of_parse(%struct.mmc_host* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %256

181:                                              ; preds = %175
  %182 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %183 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %182, i32 0, i32 3
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %212, label %188

188:                                              ; preds = %181
  %189 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %190 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %212, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* @MMC_CAP_3_3V_DDR, align 4
  %195 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @MMC_CAP_1_2V_DDR, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @MMC_CAP_UHS, align 4
  %200 = or i32 %198, %199
  %201 = xor i32 %200, -1
  %202 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %203 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* @MMC_CAP2_HS200, align 4
  %207 = xor i32 %206, -1
  %208 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %209 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %193, %188, %181
  %213 = load i32, i32* @MMC_CAP2_HS400, align 4
  %214 = xor i32 %213, -1
  %215 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %216 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %220 = call i32 @sunxi_mmc_init_host(%struct.sunxi_mmc_host* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %212
  br label %256

224:                                              ; preds = %212
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @pm_runtime_set_active(%struct.TYPE_13__* %226)
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %228, i32 0, i32 0
  %230 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__* %229, i32 50)
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__* %232)
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 @pm_runtime_enable(%struct.TYPE_13__* %235)
  %237 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %238 = call i32 @mmc_add_host(%struct.mmc_host* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %224
  br label %256

242:                                              ; preds = %224
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %246 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = ashr i32 %247, 10
  %249 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %250 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %255 = call i32 @dev_info(%struct.TYPE_13__* %244, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %248, i8* %254)
  store i32 0, i32* %2, align 4
  br label %271

256:                                              ; preds = %241, %223, %180
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load i32, i32* @PAGE_SIZE, align 4
  %260 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %261 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %4, align 8
  %264 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @dma_free_coherent(%struct.TYPE_13__* %258, i32 %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %256, %54, %39
  %268 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %269 = call i32 @mmc_free_host(%struct.mmc_host* %268)
  %270 = load i32, i32* %6, align 4
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %267, %242, %12
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local %struct.sunxi_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sunxi_mmc_resource_request(%struct.sunxi_mmc_host*, %struct.platform_device*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @sunxi_ccu_set_mmc_timing_mode(i32, i32) #1

declare dso_local i32 @sunxi_ccu_get_mmc_timing_mode(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @sunxi_mmc_init_host(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_13__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_13__*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, i8*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
