; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.jz4740_mmc_host = type { i32, i32, i32, i32, i32, i32, %struct.platform_device*, %struct.mmc_host*, i32, i32, i32 }
%struct.of_device_id = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to alloc mmc host structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@jz4740_mmc_of_match = common dso_local global i32 0, align 4
@JZ_MMC_JZ4740 = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not parse device properties: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to get mmc clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to ioremap base memory\0A\00", align 1
@jz4740_mmc_ops = common dso_local global i32 0, align 4
@JZ_MMC_CLK_RATE = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@jz_mmc_irq = common dso_local global i32 0, align 4
@jz_mmc_irq_worker = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to request irq: %d\0A\00", align 1
@jz4740_mmc_timeout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to add mmc host: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"JZ SD/MMC card driver registered\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Using %s, %d-bit mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_mmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_mmc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca %struct.jz4740_mmc_host*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.mmc_host* @mmc_alloc_host(i32 56, i32* %9)
  store %struct.mmc_host* %10, %struct.mmc_host** %5, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %12 = icmp ne %struct.mmc_host* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %262

19:                                               ; preds = %1
  %20 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %21 = call %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host* %20)
  store %struct.jz4740_mmc_host* %21, %struct.jz4740_mmc_host** %6, align 8
  %22 = load i32, i32* @jz4740_mmc_of_match, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.of_device_id* @of_match_device(i32 %22, i32* %24)
  store %struct.of_device_id* %25, %struct.of_device_id** %7, align 8
  %26 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %27 = icmp ne %struct.of_device_id* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %34 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %39

35:                                               ; preds = %19
  %36 = load i32, i32* @JZ_MMC_JZ4740, align 4
  %37 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %38 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %41 = call i32 @mmc_of_parse(%struct.mmc_host* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @EPROBE_DEFER, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  br label %258

55:                                               ; preds = %39
  %56 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %57 = call i32 @mmc_regulator_get_supply(%struct.mmc_host* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  %60 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %61 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %63 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %68 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %258

70:                                               ; preds = %55
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @devm_clk_get(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %75 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %77 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %83 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %258

89:                                               ; preds = %70
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call i32 @platform_get_resource(%struct.platform_device* %90, i32 %91, i32 0)
  %93 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %94 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %98 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @devm_ioremap_resource(i32* %96, i32 %99)
  %101 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %102 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 8
  %103 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %104 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %89
  %109 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %110 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %258

116:                                              ; preds = %89
  %117 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %118 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %117, i32 0, i32 9
  store i32* @jz4740_mmc_ops, i32** %118, align 8
  %119 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %120 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* @JZ_MMC_CLK_RATE, align 4
  %125 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %126 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %129 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sdiv i32 %130, 128
  %132 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %133 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @MMC_VDD_32_33, align 4
  %135 = load i32, i32* @MMC_VDD_33_34, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %138 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %140 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %139, i32 0, i32 3
  store i32 1023, i32* %140, align 4
  %141 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %142 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %141, i32 0, i32 4
  store i32 32767, i32* %142, align 8
  %143 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %144 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %147 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %151 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %153 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %152, i32 0, i32 6
  store i32 128, i32* %153, align 8
  %154 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %155 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %158 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 4
  %159 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %160 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %161 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %160, i32 0, i32 7
  store %struct.mmc_host* %159, %struct.mmc_host** %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %164 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %163, i32 0, i32 6
  store %struct.platform_device* %162, %struct.platform_device** %164, align 8
  %165 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %166 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %165, i32 0, i32 5
  %167 = call i32 @spin_lock_init(i32* %166)
  %168 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %169 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %168, i32 0, i32 4
  store i32 -1, i32* %169, align 8
  %170 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %171 = call i32 @jz4740_mmc_reset(%struct.jz4740_mmc_host* %170)
  %172 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %173 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @jz_mmc_irq, align 4
  %176 = load i32, i32* @jz_mmc_irq_worker, align 4
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 @dev_name(i32* %178)
  %180 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %181 = call i32 @request_threaded_irq(i32 %174, i32 %175, i32 %176, i32 0, i32 %179, %struct.jz4740_mmc_host* %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %127
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %4, align 4
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  br label %258

189:                                              ; preds = %127
  %190 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %191 = call i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host* %190)
  %192 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %193 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %192, i32 0, i32 3
  %194 = load i32, i32* @jz4740_mmc_timeout, align 4
  %195 = call i32 @timer_setup(i32* %193, i32 %194, i32 0)
  %196 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %197 = call i32 @jz4740_mmc_acquire_dma_channels(%struct.jz4740_mmc_host* %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @EPROBE_DEFER, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  br label %252

203:                                              ; preds = %189
  %204 = load i32, i32* %4, align 4
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %209 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %212 = call i32 @platform_set_drvdata(%struct.platform_device* %210, %struct.jz4740_mmc_host* %211)
  %213 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %214 = call i32 @mmc_add_host(%struct.mmc_host* %213)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %203
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = load i32, i32* %4, align 4
  %221 = call i32 (i32*, i8*, ...) @dev_err(i32* %219, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %220)
  br label %243

222:                                              ; preds = %203
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 (i32*, i8*, ...) @dev_info(i32* %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %229 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %234 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %235 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 4, i32 1
  %242 = call i32 (i32*, i8*, ...) @dev_info(i32* %227, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %233, i32 %241)
  store i32 0, i32* %2, align 4
  br label %262

243:                                              ; preds = %217
  %244 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %245 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %250 = call i32 @jz4740_mmc_release_dma_channels(%struct.jz4740_mmc_host* %249)
  br label %251

251:                                              ; preds = %248, %243
  br label %252

252:                                              ; preds = %251, %202
  %253 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %254 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %6, align 8
  %257 = call i32 @free_irq(i32 %255, %struct.jz4740_mmc_host* %256)
  br label %258

258:                                              ; preds = %252, %184, %108, %81, %66, %54
  %259 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %260 = call i32 @mmc_free_host(%struct.mmc_host* %259)
  %261 = load i32, i32* %4, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %258, %222, %13
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @mmc_of_parse(%struct.mmc_host*) #1

declare dso_local i32 @mmc_regulator_get_supply(%struct.mmc_host*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @jz4740_mmc_reset(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.jz4740_mmc_host*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @jz4740_mmc_clock_disable(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @jz4740_mmc_acquire_dma_channels(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4740_mmc_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @jz4740_mmc_release_dma_channels(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @free_irq(i32, %struct.jz4740_mmc_host*) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
