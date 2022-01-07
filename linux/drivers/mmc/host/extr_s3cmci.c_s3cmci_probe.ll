; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.s3cmci_host = type { i32, i64, i32, i32, %struct.TYPE_11__*, i32, i32, i32*, i32, i64, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, %struct.platform_device*, %struct.mmc_host* }
%struct.TYPE_11__ = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@pio_tasklet = common dso_local global i32 0, align 4
@S3C2440_SDIIMSK = common dso_local global i32 0, align 4
@S3C2440_SDIDATA = common dso_local global i32 0, align 4
@S3C2410_SDIIMSK = common dso_local global i32 0, align 4
@S3C2410_SDIDATA = common dso_local global i32 0, align 4
@COMPLETION_NONE = common dso_local global i32 0, align 4
@XFER_NONE = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to get io memory region resource.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to request io memory region.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to ioremap() io memory region.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@s3cmci_irq = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to request mci interrupt.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot get DMA channel.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sdi\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to find clock source.\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"failed to enable clock source.\0A\00", align 1
@s3cmci_ops = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@dbg_debug = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"probe: mode:%s mapped mci_base:%p irq:%u irq_cd:%u dma:%p.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"2440\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"failed to register cpufreq\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to add mmc host.\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s - using %s, %s SDIO IRQ\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3cmci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3cmci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3cmci_host*, align 8
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.mmc_host* @mmc_alloc_host(i32 112, %struct.TYPE_12__* %9)
  store %struct.mmc_host* %10, %struct.mmc_host** %5, align 8
  %11 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %12 = icmp ne %struct.mmc_host* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %429

16:                                               ; preds = %1
  %17 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %18 = call %struct.s3cmci_host* @mmc_priv(%struct.mmc_host* %17)
  store %struct.s3cmci_host* %18, %struct.s3cmci_host** %4, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %20 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %21 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %20, i32 0, i32 18
  store %struct.mmc_host* %19, %struct.mmc_host** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %24 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %23, i32 0, i32 17
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %32 = call i32 @s3cmci_probe_dt(%struct.s3cmci_host* %31)
  store i32 %32, i32* %6, align 4
  br label %36

33:                                               ; preds = %16
  %34 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %35 = call i32 @s3cmci_probe_pdata(%struct.s3cmci_host* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %426

40:                                               ; preds = %36
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %46 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %45, i32 0, i32 10
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %46, align 8
  %47 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %48 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %47, i32 0, i32 16
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %51 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %50, i32 0, i32 15
  %52 = load i32, i32* @pio_tasklet, align 4
  %53 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %54 = ptrtoint %struct.s3cmci_host* %53 to i64
  %55 = call i32 @tasklet_init(i32* %51, i32 %52, i64 %54)
  %56 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %57 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %40
  %61 = load i32, i32* @S3C2440_SDIIMSK, align 4
  %62 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %63 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %62, i32 0, i32 14
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @S3C2440_SDIDATA, align 4
  %65 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %66 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 8
  %67 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %68 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %78

69:                                               ; preds = %40
  %70 = load i32, i32* @S3C2410_SDIIMSK, align 4
  %71 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %72 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %71, i32 0, i32 14
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @S3C2410_SDIDATA, align 4
  %74 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %75 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %77 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i32, i32* @COMPLETION_NONE, align 4
  %80 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %81 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %80, i32 0, i32 12
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @XFER_NONE, align 4
  %83 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %84 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load i32, i32* @IORESOURCE_MEM, align 4
  %87 = call %struct.TYPE_11__* @platform_get_resource(%struct.platform_device* %85, i32 %86, i32 0)
  %88 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %89 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %88, i32 0, i32 4
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  %90 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %91 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %90, i32 0, i32 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = icmp ne %struct.TYPE_11__* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %78
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %406

100:                                              ; preds = %78
  %101 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %102 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %101, i32 0, i32 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %107 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %106, i32 0, i32 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = call i32 @resource_size(%struct.TYPE_11__* %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.TYPE_11__* @request_mem_region(i32 %105, i32 %109, i32 %112)
  %114 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %115 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %114, i32 0, i32 4
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %115, align 8
  %116 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %117 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = icmp ne %struct.TYPE_11__* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %100
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_err(%struct.TYPE_12__* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %6, align 4
  br label %406

126:                                              ; preds = %100
  %127 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %128 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %127, i32 0, i32 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %133 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %132, i32 0, i32 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = call i32 @resource_size(%struct.TYPE_11__* %134)
  %136 = call i32 @ioremap(i32 %131, i32 %135)
  %137 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %138 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %140 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %126
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @dev_err(%struct.TYPE_12__* %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %6, align 4
  br label %395

149:                                              ; preds = %126
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = call i64 @platform_get_irq(%struct.platform_device* %150, i32 0)
  %152 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %153 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %155 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sle i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %6, align 4
  br label %390

161:                                              ; preds = %149
  %162 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %163 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @s3cmci_irq, align 4
  %166 = load i32, i32* @DRIVER_NAME, align 4
  %167 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %168 = call i64 @request_irq(i64 %164, i32 %165, i32 0, i32 %166, %struct.s3cmci_host* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %161
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_err(%struct.TYPE_12__* %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %174 = load i32, i32* @ENOENT, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  br label %390

176:                                              ; preds = %161
  %177 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %178 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @disable_irq(i64 %179)
  %181 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %182 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  %183 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %184 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %176
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = call i32 @dma_request_chan(%struct.TYPE_12__* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %190 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %191 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 4
  %192 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %193 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @PTR_ERR_OR_ZERO(i32 %194)
  store i32 %195, i32* %6, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %186
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_err(%struct.TYPE_12__* %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %384

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %176
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32* @clk_get(%struct.TYPE_12__* %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %207 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %208 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %207, i32 0, i32 7
  store i32* %206, i32** %208, align 8
  %209 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %210 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %209, i32 0, i32 7
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @IS_ERR(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %203
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @dev_err(%struct.TYPE_12__* %216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %218 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %219 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %218, i32 0, i32 7
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @PTR_ERR(i32* %220)
  store i32 %221, i32* %6, align 4
  %222 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %223 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %222, i32 0, i32 7
  store i32* null, i32** %223, align 8
  br label %374

224:                                              ; preds = %203
  %225 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %226 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %225, i32 0, i32 7
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @clk_prepare_enable(i32* %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = call i32 @dev_err(%struct.TYPE_12__* %233, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %369

235:                                              ; preds = %224
  %236 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %237 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %236, i32 0, i32 7
  %238 = load i32*, i32** %237, align 8
  %239 = call i32 @clk_get_rate(i32* %238)
  %240 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %241 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %243 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %242, i32 0, i32 9
  store i32* @s3cmci_ops, i32** %243, align 8
  %244 = load i32, i32* @MMC_VDD_32_33, align 4
  %245 = load i32, i32* @MMC_VDD_33_34, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %248 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %250 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %251 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %253 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %256 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = mul nsw i32 %257, 256
  %259 = sdiv i32 %254, %258
  %260 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %261 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %263 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %266 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = sdiv i32 %264, %267
  %269 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %270 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %272 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %271, i32 0, i32 10
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %235
  %278 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %279 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %278, i32 0, i32 10
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %284 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %277, %235
  %286 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %287 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %286, i32 0, i32 4
  store i32 4095, i32* %287, align 8
  %288 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %289 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %288, i32 0, i32 5
  store i32 4095, i32* %289, align 4
  %290 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %291 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %290, i32 0, i32 6
  store i32 2096640, i32* %291, align 8
  %292 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %293 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %296 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %295, i32 0, i32 7
  store i32 %294, i32* %296, align 4
  %297 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %298 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %297, i32 0, i32 8
  store i32 128, i32* %298, align 8
  %299 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %300 = load i32, i32* @dbg_debug, align 4
  %301 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %302 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %301, i32 0, i32 9
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %307 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %308 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %311 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %314 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %317 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @dbg(%struct.s3cmci_host* %299, i32 %300, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i8* %306, i32 %309, i64 %312, i32 %315, i32 %318)
  %320 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %321 = call i32 @s3cmci_cpufreq_register(%struct.s3cmci_host* %320)
  store i32 %321, i32* %6, align 4
  %322 = load i32, i32* %6, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %285
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = call i32 @dev_err(%struct.TYPE_12__* %326, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %364

328:                                              ; preds = %285
  %329 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %330 = call i32 @mmc_add_host(%struct.mmc_host* %329)
  store i32 %330, i32* %6, align 4
  %331 = load i32, i32* %6, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %328
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = call i32 @dev_err(%struct.TYPE_12__* %335, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %361

337:                                              ; preds = %328
  %338 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %339 = call i32 @s3cmci_debugfs_attach(%struct.s3cmci_host* %338)
  %340 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %341 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %342 = call i32 @platform_set_drvdata(%struct.platform_device* %340, %struct.mmc_host* %341)
  %343 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %344 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %343, i32 0, i32 0
  %345 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %346 = call i32 @mmc_hostname(%struct.mmc_host* %345)
  %347 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %348 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %347)
  %349 = icmp ne i64 %348, 0
  %350 = zext i1 %349 to i64
  %351 = select i1 %349, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)
  %352 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %353 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)
  %360 = call i32 @dev_info(%struct.TYPE_12__* %344, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %346, i8* %351, i8* %359)
  store i32 0, i32* %2, align 4
  br label %431

361:                                              ; preds = %333
  %362 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %363 = call i32 @s3cmci_cpufreq_deregister(%struct.s3cmci_host* %362)
  br label %364

364:                                              ; preds = %361, %324
  %365 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %366 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %365, i32 0, i32 7
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @clk_disable_unprepare(i32* %367)
  br label %369

369:                                              ; preds = %364, %231
  %370 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %371 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %370, i32 0, i32 7
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @clk_put(i32* %372)
  br label %374

374:                                              ; preds = %369, %214
  %375 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %376 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %374
  %379 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %380 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @dma_release_channel(i32 %381)
  br label %383

383:                                              ; preds = %378, %374
  br label %384

384:                                              ; preds = %383, %198
  %385 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %386 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %389 = call i32 @free_irq(i64 %387, %struct.s3cmci_host* %388)
  br label %390

390:                                              ; preds = %384, %170, %158
  %391 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %392 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %391, i32 0, i32 5
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @iounmap(i32 %393)
  br label %395

395:                                              ; preds = %390, %143
  %396 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %397 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %396, i32 0, i32 4
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.s3cmci_host*, %struct.s3cmci_host** %4, align 8
  %402 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %401, i32 0, i32 4
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %402, align 8
  %404 = call i32 @resource_size(%struct.TYPE_11__* %403)
  %405 = call i32 @release_mem_region(i32 %400, i32 %404)
  br label %406

406:                                              ; preds = %395, %120, %94
  %407 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %408 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %425, label %412

412:                                              ; preds = %406
  %413 = call i32 @S3C2410_GPE(i32 5)
  store i32 %413, i32* %7, align 4
  br label %414

414:                                              ; preds = %421, %412
  %415 = load i32, i32* %7, align 4
  %416 = call i32 @S3C2410_GPE(i32 10)
  %417 = icmp sle i32 %415, %416
  br i1 %417, label %418, label %424

418:                                              ; preds = %414
  %419 = load i32, i32* %7, align 4
  %420 = call i32 @gpio_free(i32 %419)
  br label %421

421:                                              ; preds = %418
  %422 = load i32, i32* %7, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %7, align 4
  br label %414

424:                                              ; preds = %414
  br label %425

425:                                              ; preds = %424, %406
  br label %426

426:                                              ; preds = %425, %39
  %427 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %428 = call i32 @mmc_free_host(%struct.mmc_host* %427)
  br label %429

429:                                              ; preds = %426, %13
  %430 = load i32, i32* %6, align 4
  store i32 %430, i32* %2, align 4
  br label %431

431:                                              ; preds = %429, %337
  %432 = load i32, i32* %2, align 4
  ret i32 %432
}

declare dso_local %struct.mmc_host* @mmc_alloc_host(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.s3cmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @s3cmci_probe_dt(%struct.s3cmci_host*) #1

declare dso_local i32 @s3cmci_probe_pdata(%struct.s3cmci_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local %struct.TYPE_11__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_11__* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_11__*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, %struct.s3cmci_host*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i64 @s3cmci_host_usedma(%struct.s3cmci_host*) #1

declare dso_local i32 @dma_request_chan(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32* @clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @s3cmci_cpufreq_register(%struct.s3cmci_host*) #1

declare dso_local i32 @mmc_add_host(%struct.mmc_host*) #1

declare dso_local i32 @s3cmci_debugfs_attach(%struct.s3cmci_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmc_host*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @s3cmci_cpufreq_deregister(%struct.s3cmci_host*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @free_irq(i64, %struct.s3cmci_host*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @S3C2410_GPE(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @mmc_free_host(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
