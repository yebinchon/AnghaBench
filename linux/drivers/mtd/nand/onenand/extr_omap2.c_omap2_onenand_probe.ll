; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_omap2.c_omap2_onenand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.omap2_onenand = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32, %struct.platform_device*, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.device* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32 }
%struct.gpmc_onenand_info = type { i64, i64, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error getting memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"reg not found in DT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"error getting gpio: %d\0A\00", align 1
@omap2_onenand_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@omap2_onenand_wait = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@omap2_onenand_read_bufferram = common dso_local global i32 0, align 4
@omap2_onenand_write_bufferram = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"initializing on CS%d (0x%08lx), va %p, %s mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"optimized timings for %d MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap2_onenand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_onenand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.omap2_onenand*, align 8
  %11 = alloca %struct.gpmc_onenand_info, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %12, align 8
  %16 = load %struct.device*, %struct.device** %12, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %13, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %9, align 8
  %22 = load %struct.resource*, %struct.resource** %9, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %12, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %275

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %13, align 8
  %31 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %275

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %12, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.omap2_onenand* @devm_kzalloc(%struct.device* %39, i32 96, i32 %40)
  store %struct.omap2_onenand* %41, %struct.omap2_onenand** %10, align 8
  %42 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %43 = icmp ne %struct.omap2_onenand* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %275

47:                                               ; preds = %38
  %48 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %49 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %48, i32 0, i32 8
  %50 = call i32 @init_completion(i32* %49)
  %51 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %52 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %51, i32 0, i32 7
  %53 = call i32 @init_completion(i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %56 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.resource*, %struct.resource** %9, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %61 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.device*, %struct.device** %12, align 8
  %63 = load %struct.resource*, %struct.resource** %9, align 8
  %64 = call i64 @devm_ioremap_resource(%struct.device* %62, %struct.resource* %63)
  %65 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %66 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %69 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @IS_ERR(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %47
  %75 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %76 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @PTR_ERR(i64 %78)
  store i32 %79, i32* %2, align 4
  br label %275

80:                                               ; preds = %47
  %81 = load %struct.device*, %struct.device** %12, align 8
  %82 = load i32, i32* @GPIOD_IN, align 4
  %83 = call i64 @devm_gpiod_get_optional(%struct.device* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %85 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %84, i32 0, i32 6
  store i64 %83, i64* %85, align 8
  %86 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %87 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @IS_ERR(i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %80
  %92 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %93 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @PTR_ERR(i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %91
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %275

106:                                              ; preds = %80
  %107 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %108 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %106
  %112 = load %struct.device*, %struct.device** %12, align 8
  %113 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %114 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @gpiod_to_irq(i64 %115)
  %117 = load i32, i32* @omap2_onenand_interrupt, align 4
  %118 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %119 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %120 = call i32 @devm_request_irq(%struct.device* %112, i32 %116, i32 %117, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.omap2_onenand* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %111
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %275

125:                                              ; preds = %111
  %126 = load i32, i32* @omap2_onenand_wait, align 4
  %127 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %128 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 4
  store i32 %126, i32* %129, align 8
  br label %130

130:                                              ; preds = %125, %106
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @dma_cap_zero(i32 %131)
  %133 = load i32, i32* @DMA_MEMCPY, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @dma_cap_set(i32 %133, i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = call i64 @dma_request_channel(i32 %136, i32* null, i32* null)
  %138 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %139 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %141 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %130
  %145 = load i32, i32* @omap2_onenand_read_bufferram, align 4
  %146 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %147 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @omap2_onenand_write_bufferram, align 4
  %150 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %151 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  br label %153

153:                                              ; preds = %144, %130
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %156 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %155, i32 0, i32 5
  store %struct.platform_device* %154, %struct.platform_device** %156, align 8
  %157 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %158 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %157, i32 0, i32 3
  %159 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %160 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  store %struct.TYPE_8__* %158, %struct.TYPE_8__** %161, align 8
  %162 = load %struct.device*, %struct.device** %12, align 8
  %163 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %164 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store %struct.device* %162, %struct.device** %166, align 8
  %167 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %168 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %167, i32 0, i32 1
  %169 = load %struct.device*, %struct.device** %12, align 8
  %170 = getelementptr inbounds %struct.device, %struct.device* %169, i32 0, i32 0
  %171 = load %struct.device_node*, %struct.device_node** %170, align 8
  %172 = call i32 @mtd_set_of_node(%struct.TYPE_9__* %168, %struct.device_node* %171)
  %173 = load %struct.device*, %struct.device** %12, align 8
  %174 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %175 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %178 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %181 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %185 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %190 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %173, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %179, i64 %183, i8* %189)
  %191 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %192 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %191, i32 0, i32 1
  %193 = call i32 @onenand_scan(%struct.TYPE_9__* %192, i32 1)
  store i32 %193, i32* %8, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %153
  br label %263

196:                                              ; preds = %153
  %197 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %198 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @omap2_onenand_get_freq(i32 %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %248

204:                                              ; preds = %196
  %205 = load i32, i32* %6, align 4
  switch i32 %205, label %210 [
    i32 104, label %206
    i32 83, label %207
    i32 66, label %208
    i32 56, label %209
  ]

206:                                              ; preds = %204
  store i32 7, i32* %7, align 4
  br label %211

207:                                              ; preds = %204
  store i32 6, i32* %7, align 4
  br label %211

208:                                              ; preds = %204
  store i32 5, i32* %7, align 4
  br label %211

209:                                              ; preds = %204
  store i32 4, i32* %7, align 4
  br label %211

210:                                              ; preds = %204
  store i32 3, i32* %7, align 4
  br label %211

211:                                              ; preds = %210, %209, %208, %207, %206
  %212 = load %struct.device*, %struct.device** %12, align 8
  %213 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %214 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @gpmc_omap_onenand_set_timings(%struct.device* %212, i32 %215, i32 %216, i32 %217, %struct.gpmc_onenand_info* %11)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %259

222:                                              ; preds = %211
  %223 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %224 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %11, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %11, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %11, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @omap2_onenand_set_cfg(%struct.omap2_onenand* %223, i64 %225, i64 %227, i32 %228, i32 %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %259

235:                                              ; preds = %222
  %236 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %11, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %11, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %239, %235
  %244 = load %struct.device*, %struct.device** %12, align 8
  %245 = load i32, i32* %6, align 4
  %246 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %244, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %243, %239
  br label %248

248:                                              ; preds = %247, %196
  %249 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %250 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %249, i32 0, i32 1
  %251 = call i32 @mtd_device_register(%struct.TYPE_9__* %250, i32* null, i32 0)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %259

255:                                              ; preds = %248
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %258 = call i32 @platform_set_drvdata(%struct.platform_device* %256, %struct.omap2_onenand* %257)
  store i32 0, i32* %2, align 4
  br label %275

259:                                              ; preds = %254, %234, %221
  %260 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %261 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %260, i32 0, i32 1
  %262 = call i32 @onenand_release(%struct.TYPE_9__* %261)
  br label %263

263:                                              ; preds = %259, %195
  %264 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %265 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.omap2_onenand*, %struct.omap2_onenand** %10, align 8
  %270 = getelementptr inbounds %struct.omap2_onenand, %struct.omap2_onenand* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @dma_release_channel(i64 %271)
  br label %273

273:                                              ; preds = %268, %263
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %255, %123, %104, %74, %44, %34, %24
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.omap2_onenand* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.omap2_onenand*) #1

declare dso_local i32 @gpiod_to_irq(i64) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i64 @dma_request_channel(i32, i32*, i32*) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_9__*, %struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @onenand_scan(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @omap2_onenand_get_freq(i32) #1

declare dso_local i32 @gpmc_omap_onenand_set_timings(%struct.device*, i32, i32, i32, %struct.gpmc_onenand_info*) #1

declare dso_local i32 @omap2_onenand_set_cfg(%struct.omap2_onenand*, i64, i64, i32, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap2_onenand*) #1

declare dso_local i32 @onenand_release(%struct.TYPE_9__*) #1

declare dso_local i32 @dma_release_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
