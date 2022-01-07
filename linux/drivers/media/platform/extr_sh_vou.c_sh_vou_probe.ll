; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { %struct.vb2_queue*, i32*, i32, i32*, i32 }
%struct.vb2_queue = type { i32, i32, i32, %struct.TYPE_9__*, i32*, i32, i32*, i32*, %struct.sh_vou_device*, i32 }
%struct.TYPE_9__ = type { %struct.sh_vou_pdata* }
%struct.sh_vou_pdata = type { i64, i32, i32 }
%struct.sh_vou_device = type { i32, i32, i32, i32, %struct.vb2_queue, %struct.video_device, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, i32, %struct.sh_vou_pdata*, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.i2c_adapter = type { i32 }
%struct.resource = type { i32 }
%struct.v4l2_subdev = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Insufficient VOU platform information.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SH_VOU_INITIALISING = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@VOU_MAX_IMAGE_WIDTH = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV16 = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@sh_vou_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vou\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Error registering v4l2 device\0A\00", align 1
@sh_vou_video_template = common dso_local global %struct.video_device zeroinitializer, align 8
@SH_VOU_BUS_8BIT = common dso_local global i64 0, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@VB2_WRITE = common dso_local global i32 0, align 4
@sh_vou_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh_vou_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_vou_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh_vou_pdata*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.sh_vou_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.v4l2_subdev*, align 8
  %12 = alloca %struct.vb2_queue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %17, align 8
  store %struct.sh_vou_pdata* %18, %struct.sh_vou_pdata** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %10, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %25 = icmp ne %struct.sh_vou_pdata* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.resource*, %struct.resource** %10, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %26, %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %276

38:                                               ; preds = %29
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.sh_vou_device* @devm_kzalloc(%struct.TYPE_9__* %40, i32 216, i32 %41)
  store %struct.sh_vou_device* %42, %struct.sh_vou_device** %9, align 8
  %43 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %44 = icmp ne %struct.sh_vou_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %276

48:                                               ; preds = %38
  %49 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %50 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %49, i32 0, i32 2
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %53 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %52, i32 0, i32 12
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %56 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %55, i32 0, i32 3
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %59 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %60 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %59, i32 0, i32 11
  store %struct.sh_vou_pdata* %58, %struct.sh_vou_pdata** %60, align 8
  %61 = load i32, i32* @SH_VOU_INITIALISING, align 4
  %62 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %63 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %65 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %67 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %66, i32 0, i32 9
  store %struct.v4l2_rect* %67, %struct.v4l2_rect** %5, align 8
  %68 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %69 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %68, i32 0, i32 8
  store %struct.v4l2_pix_format* %69, %struct.v4l2_pix_format** %6, align 8
  %70 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %71 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %72 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %78 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %80, i32 0, i32 1
  store i32 480, i32* %81, align 4
  %82 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 1
  store i32 480, i32* %86, align 4
  %87 = load i32, i32* @V4L2_PIX_FMT_NV16, align 4
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %97 = mul nsw i32 %96, 2
  %98 = mul nsw i32 %97, 480
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.resource*, %struct.resource** %10, align 8
  %107 = call i32 @devm_ioremap_resource(%struct.TYPE_9__* %105, %struct.resource* %106)
  %108 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %109 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %111 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @IS_ERR(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %48
  %116 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %117 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @PTR_ERR(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %276

120:                                              ; preds = %48
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @sh_vou_isr, align 4
  %125 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %126 = call i32 @devm_request_irq(%struct.TYPE_9__* %122, i32 %123, i32 %124, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.sh_vou_device* %125)
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %2, align 4
  br label %276

131:                                              ; preds = %120
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %135 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %134, i32 0, i32 1
  %136 = call i32 @v4l2_device_register(%struct.TYPE_9__* %133, i32* %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_9__* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %2, align 4
  br label %276

144:                                              ; preds = %131
  %145 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %146 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %145, i32 0, i32 5
  store %struct.video_device* %146, %struct.video_device** %8, align 8
  %147 = load %struct.video_device*, %struct.video_device** %8, align 8
  %148 = bitcast %struct.video_device* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 bitcast (%struct.video_device* @sh_vou_video_template to i8*), i64 40, i1 false)
  %149 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %150 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SH_VOU_BUS_8BIT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @V4L2_STD_PAL, align 4
  %156 = load %struct.video_device*, %struct.video_device** %8, align 8
  %157 = getelementptr inbounds %struct.video_device, %struct.video_device* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %144
  %161 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %162 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %161, i32 0, i32 1
  %163 = load %struct.video_device*, %struct.video_device** %8, align 8
  %164 = getelementptr inbounds %struct.video_device, %struct.video_device* %163, i32 0, i32 3
  store i32* %162, i32** %164, align 8
  %165 = load i32, i32* @video_device_release_empty, align 4
  %166 = load %struct.video_device*, %struct.video_device** %8, align 8
  %167 = getelementptr inbounds %struct.video_device, %struct.video_device* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %169 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %168, i32 0, i32 3
  %170 = load %struct.video_device*, %struct.video_device** %8, align 8
  %171 = getelementptr inbounds %struct.video_device, %struct.video_device* %170, i32 0, i32 1
  store i32* %169, i32** %171, align 8
  %172 = load %struct.video_device*, %struct.video_device** %8, align 8
  %173 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %174 = call i32 @video_set_drvdata(%struct.video_device* %172, %struct.sh_vou_device* %173)
  %175 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %176 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %175, i32 0, i32 4
  store %struct.vb2_queue* %176, %struct.vb2_queue** %12, align 8
  %177 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %178 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %179 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %178, i32 0, i32 9
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @VB2_MMAP, align 4
  %181 = load i32, i32* @VB2_DMABUF, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @VB2_WRITE, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %186 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %188 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %189 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %188, i32 0, i32 8
  store %struct.sh_vou_device* %187, %struct.sh_vou_device** %189, align 8
  %190 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %191 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %190, i32 0, i32 1
  store i32 4, i32* %191, align 4
  %192 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %193 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %192, i32 0, i32 7
  store i32* @sh_vou_qops, i32** %193, align 8
  %194 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %195 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %194, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %195, align 8
  %196 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %197 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %198 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 8
  %199 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %200 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %199, i32 0, i32 2
  store i32 2, i32* %200, align 8
  %201 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %202 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %201, i32 0, i32 3
  %203 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %204 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %203, i32 0, i32 4
  store i32* %202, i32** %204, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %208 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %207, i32 0, i32 3
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %208, align 8
  %209 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %210 = call i32 @vb2_queue_init(%struct.vb2_queue* %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %160
  br label %268

214:                                              ; preds = %160
  %215 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  %216 = load %struct.video_device*, %struct.video_device** %8, align 8
  %217 = getelementptr inbounds %struct.video_device, %struct.video_device* %216, i32 0, i32 0
  store %struct.vb2_queue* %215, %struct.vb2_queue** %217, align 8
  %218 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %219 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %218, i32 0, i32 2
  %220 = call i32 @INIT_LIST_HEAD(i32* %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %221, i32 0, i32 0
  %223 = call i32 @pm_runtime_enable(%struct.TYPE_9__* %222)
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = call i32 @pm_runtime_resume(%struct.TYPE_9__* %225)
  %227 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %228 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %229)
  store %struct.i2c_adapter* %230, %struct.i2c_adapter** %7, align 8
  %231 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %232 = icmp ne %struct.i2c_adapter* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %214
  %234 = load i32, i32* @ENODEV, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %14, align 4
  br label %268

236:                                              ; preds = %214
  %237 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %238 = call i32 @sh_vou_hw_init(%struct.sh_vou_device* %237)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  br label %265

242:                                              ; preds = %236
  %243 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %244 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %243, i32 0, i32 1
  %245 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %246 = load %struct.sh_vou_pdata*, %struct.sh_vou_pdata** %4, align 8
  %247 = getelementptr inbounds %struct.sh_vou_pdata, %struct.sh_vou_pdata* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32* %244, %struct.i2c_adapter* %245, i32 %248, i32* null)
  store %struct.v4l2_subdev* %249, %struct.v4l2_subdev** %11, align 8
  %250 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  %251 = icmp ne %struct.v4l2_subdev* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %242
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %14, align 4
  br label %264

255:                                              ; preds = %242
  %256 = load %struct.video_device*, %struct.video_device** %8, align 8
  %257 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %258 = call i32 @video_register_device(%struct.video_device* %256, i32 %257, i32 -1)
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  br label %263

262:                                              ; preds = %255
  store i32 0, i32* %2, align 4
  br label %276

263:                                              ; preds = %261
  br label %264

264:                                              ; preds = %263, %252
  br label %265

265:                                              ; preds = %264, %241
  %266 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %267 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %266)
  br label %268

268:                                              ; preds = %265, %233, %213
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = call i32 @pm_runtime_disable(%struct.TYPE_9__* %270)
  %272 = load %struct.sh_vou_device*, %struct.sh_vou_device** %9, align 8
  %273 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %272, i32 0, i32 1
  %274 = call i32 @v4l2_device_unregister(i32* %273)
  %275 = load i32, i32* %14, align 4
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %268, %262, %139, %129, %115, %45, %32
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.sh_vou_device* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_9__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i8*, %struct.sh_vou_device*) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_9__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.sh_vou_device*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_resume(%struct.TYPE_9__*) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @sh_vou_hw_init(%struct.sh_vou_device*) #1

declare dso_local %struct.v4l2_subdev* @v4l2_i2c_new_subdev_board(i32*, %struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_9__*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
