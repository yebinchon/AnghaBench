; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_mmcsd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_davinci_mmcsd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.of_device_id = type { i32 }
%struct.mmc_davinci_host = type { i64, i32, i32, i32, i64, %struct.mmc_host*, i32, i32, i32, %struct.resource* }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.resource = type { i32 }
%struct.platform_device_id = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@davinci_mmc_dt_ids = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not parse of data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"could not parse platform data: %d\0A\00", align 1
@MAX_NR_SG = common dso_local global i64 0, align 8
@use_dma = common dso_local global i64 0, align 8
@MMC_CAP_WAIT_WHILE_BUSY = common dso_local global i32 0, align 4
@mmc_davinci_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MAX_CCNT = common dso_local global i32 0, align 4
@rw_threshold = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"max_segs=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"max_blk_size=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"max_req_size=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"max_seg_size=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register cpufreq\0A\00", align 1
@mmc_davinci_irq = common dso_local global i32 0, align 4
@mmc_davinci_sdio_irq = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Using %s, %d-bit mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_mmcsd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mmcsd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.mmc_davinci_host*, align 8
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.mmc_davinci_host* null, %struct.mmc_davinci_host** %5, align 8
  store %struct.mmc_host* null, %struct.mmc_host** %6, align 8
  store %struct.resource* null, %struct.resource** %8, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %7, align 8
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %377

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i8* @platform_get_irq(%struct.platform_device* %22, i32 0)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %377

29:                                               ; preds = %21
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = call i64 @resource_size(%struct.resource* %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.resource* @devm_request_mem_region(i32* %33, i32 %36, i64 %37, i32 %40)
  store %struct.resource* %41, %struct.resource** %8, align 8
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = icmp ne %struct.resource* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %377

47:                                               ; preds = %29
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call %struct.mmc_host* @mmc_alloc_host(i32 64, i32* %49)
  store %struct.mmc_host* %50, %struct.mmc_host** %6, align 8
  %51 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %52 = icmp ne %struct.mmc_host* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %377

56:                                               ; preds = %47
  %57 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %58 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %57)
  store %struct.mmc_davinci_host* %58, %struct.mmc_davinci_host** %5, align 8
  %59 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %60 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %60, i32 0, i32 5
  store %struct.mmc_host* %59, %struct.mmc_host** %61, align 8
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %64 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %63, i32 0, i32 9
  store %struct.resource* %62, %struct.resource** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %8, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @devm_ioremap(i32* %66, i32 %69, i64 %70)
  %72 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %73 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %75 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %56
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %373

81:                                               ; preds = %56
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @devm_clk_get(i32* %83, i32* null)
  %85 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %86 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %88 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %81
  %93 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %94 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %9, align 4
  br label %372

97:                                               ; preds = %81
  %98 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @clk_prepare_enable(i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %371

105:                                              ; preds = %97
  %106 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %107 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @clk_get_rate(i32 %108)
  %110 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %111 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @davinci_mmc_dt_ids, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call %struct.of_device_id* @of_match_device(i32 %112, i32* %114)
  store %struct.of_device_id* %115, %struct.of_device_id** %4, align 8
  %116 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %117 = icmp ne %struct.of_device_id* %116, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %105
  %119 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %120 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %125 = call i32 @mmc_of_parse(%struct.mmc_host* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @EPROBE_DEFER, align 4
  %131 = sub nsw i32 0, %130
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  br label %365

139:                                              ; preds = %118
  br label %151

140:                                              ; preds = %105
  %141 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %142 = call i32 @mmc_davinci_parse_pdata(%struct.mmc_host* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %365

150:                                              ; preds = %140
  br label %151

151:                                              ; preds = %150, %139
  %152 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %153 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MAX_NR_SG, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %162, label %157

157:                                              ; preds = %151
  %158 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %159 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157, %151
  %163 = load i64, i64* @MAX_NR_SG, align 8
  %164 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %165 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %162, %157
  %167 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %168 = call i32 @init_mmcsd_host(%struct.mmc_davinci_host* %167)
  %169 = load i64, i64* @use_dma, align 8
  %170 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %171 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %174 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = call i8* @platform_get_irq(%struct.platform_device* %175, i32 1)
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %179 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %181 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %166
  %185 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %186 = call i32 @davinci_acquire_dma_channels(%struct.mmc_davinci_host* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @EPROBE_DEFER, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %366

192:                                              ; preds = %184
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %197 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %196, i32 0, i32 4
  store i64 0, i64* %197, align 8
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %166
  %201 = load i32, i32* @MMC_CAP_WAIT_WHILE_BUSY, align 4
  %202 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %203 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %206)
  store %struct.platform_device_id* %207, %struct.platform_device_id** %12, align 8
  %208 = load %struct.platform_device_id*, %struct.platform_device_id** %12, align 8
  %209 = icmp ne %struct.platform_device_id* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %200
  %211 = load %struct.platform_device_id*, %struct.platform_device_id** %12, align 8
  %212 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %215 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %210, %200
  %217 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %218 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %217, i32 0, i32 7
  store i32* @mmc_davinci_ops, i32** %218, align 8
  %219 = load i32, i32* @MMC_VDD_32_33, align 4
  %220 = load i32, i32* @MMC_VDD_33_34, align 4
  %221 = or i32 %219, %220
  %222 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %223 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i64, i64* @MAX_NR_SG, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %227 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* @MAX_CCNT, align 4
  %229 = load i32, i32* @rw_threshold, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %232 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %234 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %233, i32 0, i32 4
  store i32 4095, i32* %234, align 8
  %235 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %236 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %235, i32 0, i32 5
  store i32 65535, i32* %236, align 4
  %237 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %238 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %241 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %239, %242
  %244 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %245 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %244, i32 0, i32 6
  store i32 %243, i32* %245, align 8
  %246 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %247 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %246, i32 0, i32 5
  %248 = load %struct.mmc_host*, %struct.mmc_host** %247, align 8
  %249 = call i32 @mmc_dev(%struct.mmc_host* %248)
  %250 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %251 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @dev_dbg(i32 %249, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  %254 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %255 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %254, i32 0, i32 5
  %256 = load %struct.mmc_host*, %struct.mmc_host** %255, align 8
  %257 = call i32 @mmc_dev(%struct.mmc_host* %256)
  %258 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %259 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dev_dbg(i32 %257, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %260)
  %262 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %263 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %262, i32 0, i32 5
  %264 = load %struct.mmc_host*, %struct.mmc_host** %263, align 8
  %265 = call i32 @mmc_dev(%struct.mmc_host* %264)
  %266 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %267 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dev_dbg(i32 %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %268)
  %270 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %271 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %270, i32 0, i32 5
  %272 = load %struct.mmc_host*, %struct.mmc_host** %271, align 8
  %273 = call i32 @mmc_dev(%struct.mmc_host* %272)
  %274 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %275 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @dev_dbg(i32 %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %276)
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %280 = call i32 @platform_set_drvdata(%struct.platform_device* %278, %struct.mmc_davinci_host* %279)
  %281 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %282 = call i32 @mmc_davinci_cpufreq_register(%struct.mmc_davinci_host* %281)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %216
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = call i32 (i32*, i8*, ...) @dev_err(i32* %287, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %362

289:                                              ; preds = %216
  %290 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %291 = call i32 @mmc_add_host(%struct.mmc_host* %290)
  store i32 %291, i32* %9, align 4
  %292 = load i32, i32* %9, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %359

295:                                              ; preds = %289
  %296 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %297 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %296, i32 0, i32 0
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* @mmc_davinci_irq, align 4
  %300 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %301 = call i32 @mmc_hostname(%struct.mmc_host* %300)
  %302 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %303 = call i32 @devm_request_irq(i32* %297, i32 %298, i32 %299, i32 0, i32 %301, %struct.mmc_davinci_host* %302)
  store i32 %303, i32* %9, align 4
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %295
  br label %356

307:                                              ; preds = %295
  %308 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %309 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = icmp sge i32 %310, 0
  br i1 %311, label %312, label %332

312:                                              ; preds = %307
  %313 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %314 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %313, i32 0, i32 0
  %315 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %316 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @mmc_davinci_sdio_irq, align 4
  %319 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %320 = call i32 @mmc_hostname(%struct.mmc_host* %319)
  %321 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %322 = call i32 @devm_request_irq(i32* %314, i32 %317, i32 %318, i32 0, i32 %320, %struct.mmc_davinci_host* %321)
  store i32 %322, i32* %9, align 4
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %312
  %326 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %327 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %328 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %325, %312
  br label %332

332:                                              ; preds = %331, %307
  %333 = load %struct.resource*, %struct.resource** %8, align 8
  %334 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %335 = call i32 @mmc_hostname(%struct.mmc_host* %334)
  %336 = call i32 @rename_region(%struct.resource* %333, i32 %335)
  %337 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %338 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %337, i32 0, i32 5
  %339 = load %struct.mmc_host*, %struct.mmc_host** %338, align 8
  %340 = call i32 @mmc_dev(%struct.mmc_host* %339)
  %341 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %342 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %341, i32 0, i32 4
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  %345 = zext i1 %344 to i64
  %346 = select i1 %344, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %347 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %348 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  %353 = zext i1 %352 to i64
  %354 = select i1 %352, i32 4, i32 1
  %355 = call i32 @dev_info(i32 %340, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %346, i32 %354)
  store i32 0, i32* %2, align 4
  br label %377

356:                                              ; preds = %306
  %357 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %358 = call i32 @mmc_remove_host(%struct.mmc_host* %357)
  br label %359

359:                                              ; preds = %356, %294
  %360 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %361 = call i32 @mmc_davinci_cpufreq_deregister(%struct.mmc_davinci_host* %360)
  br label %362

362:                                              ; preds = %359, %285
  %363 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %364 = call i32 @davinci_release_dma_channels(%struct.mmc_davinci_host* %363)
  br label %365

365:                                              ; preds = %362, %145, %138
  br label %366

366:                                              ; preds = %365, %191
  %367 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %5, align 8
  %368 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @clk_disable_unprepare(i32 %369)
  br label %371

371:                                              ; preds = %366, %104
  br label %372

372:                                              ; preds = %371, %92
  br label %373

373:                                              ; preds = %372, %78
  %374 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %375 = call i32 @mmc_free_host(%struct.mmc_host* %374)
  %376 = load i32, i32* %9, align 4
  store i32 %376, i32* %2, align 4
  br label %377

377:                                              ; preds = %373, %332, %53, %44, %27, %18
  %378 = load i32, i32* %2, align 4
  ret i32 %378
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local %struct.resource* @devm_request_mem_region(i32*, i32, i64, i32) #1

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i64) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mmc_davinci_parse_pdata(%struct.mmc_host*) #1

declare dso_local i32 @init_mmcsd_host(%struct.mmc_davinci_host*) #1

declare dso_local i32 @davinci_acquire_dma_channels(%struct.mmc_davinci_host*) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_davinci_host*) #1

declare dso_local i32 @mmc_davinci_cpufreq_register(%struct.mmc_davinci_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mmc_davinci_host*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @rename_region(%struct.resource*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32) #1

declare dso_local i32 @mmc_remove_host(%struct.mmc_host*) #1

declare dso_local i32 @mmc_davinci_cpufreq_deregister(%struct.mmc_davinci_host*) #1

declare dso_local i32 @davinci_release_dma_channels(%struct.mmc_davinci_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
