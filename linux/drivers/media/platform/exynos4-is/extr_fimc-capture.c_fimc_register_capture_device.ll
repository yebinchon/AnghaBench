; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_register_capture_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_register_capture_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_dev = type { i32, %struct.TYPE_12__*, i32, %struct.fimc_vid_cap }
%struct.TYPE_12__ = type { i32 }
%struct.fimc_vid_cap = type { %struct.TYPE_17__, %struct.TYPE_14__, %struct.TYPE_14__, i32, i32, %struct.fimc_ctx*, i64, i64, %struct.video_device, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i8*, i8* }
%struct.fimc_ctx = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, i32, i32, i32, %struct.fimc_dev* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.fimc_fmt*, i8*, i8* }
%struct.fimc_fmt = type { i32 }
%struct.TYPE_11__ = type { %struct.fimc_fmt* }
%struct.video_device = type { i32, i32, i32, i32, %struct.TYPE_16__, i32*, i32, i32*, i32*, i32, i32*, i32*, %struct.fimc_ctx*, i32, %struct.video_device*, i32, %struct.v4l2_device*, i32*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { %struct.video_device }
%struct.v4l2_device = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, %struct.TYPE_16__, i32*, i32, i32*, i32*, i32, i32*, i32*, %struct.fimc_ctx*, i32, %struct.vb2_queue*, i32, %struct.v4l2_device*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FIMC_IO_CAMERA = common dso_local global i32 0, align 4
@FIMC_IO_DMA = common dso_local global i32 0, align 4
@FIMC_CTX_CAP = common dso_local global i32 0, align 4
@FMT_FLAGS_CAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fimc.%d.capture\00", align 1
@fimc_capture_fops = common dso_local global i32 0, align 4
@fimc_capture_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@fimc_capture_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@FIMC_DEFAULT_WIDTH = common dso_local global i8* null, align 8
@FIMC_DEFAULT_HEIGHT = common dso_local global i8* null, align 8
@FMT_FLAGS_WRITEBACK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_SCALER = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_dev*, %struct.v4l2_device*)* @fimc_register_capture_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_register_capture_device(%struct.fimc_dev* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fimc_dev*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca %struct.fimc_ctx*, align 8
  %9 = alloca %struct.fimc_vid_cap*, align 8
  %10 = alloca %struct.fimc_fmt*, align 8
  %11 = alloca i32, align 4
  store %struct.fimc_dev* %0, %struct.fimc_dev** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %12 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %13 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %17, i32 0, i32 8
  %19 = bitcast %struct.video_device* %18 to %struct.vb2_queue*
  store %struct.vb2_queue* %19, %struct.vb2_queue** %7, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fimc_ctx* @kzalloc(i32 64, i32 %22)
  store %struct.fimc_ctx* %23, %struct.fimc_ctx** %8, align 8
  %24 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %25 = icmp ne %struct.fimc_ctx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %246

29:                                               ; preds = %2
  %30 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %31 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %31, i32 0, i32 6
  store %struct.fimc_dev* %30, %struct.fimc_dev** %32, align 8
  %33 = load i32, i32* @FIMC_IO_CAMERA, align 4
  %34 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @FIMC_IO_DMA, align 4
  %37 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @FIMC_CTX_CAP, align 4
  %40 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @FMT_FLAGS_CAM, align 4
  %43 = call i8* @fimc_find_format(i32* null, i32* null, i32 %42, i32 0)
  %44 = bitcast i8* %43 to %struct.fimc_fmt*
  %45 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store %struct.fimc_fmt* %44, %struct.fimc_fmt** %47, align 8
  %48 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.fimc_fmt*, %struct.fimc_fmt** %50, align 8
  %52 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %53 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store %struct.fimc_fmt* %51, %struct.fimc_fmt** %54, align 8
  %55 = load %struct.video_device*, %struct.video_device** %6, align 8
  %56 = call i32 @memset(%struct.video_device* %55, i32 0, i32 136)
  %57 = load %struct.video_device*, %struct.video_device** %6, align 8
  %58 = getelementptr inbounds %struct.video_device, %struct.video_device* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @snprintf(i32 %59, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.video_device*, %struct.video_device** %6, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 18
  store i32* @fimc_capture_fops, i32** %65, align 8
  %66 = load %struct.video_device*, %struct.video_device** %6, align 8
  %67 = getelementptr inbounds %struct.video_device, %struct.video_device* %66, i32 0, i32 17
  store i32* @fimc_capture_ioctl_ops, i32** %67, align 8
  %68 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %69 = load %struct.video_device*, %struct.video_device** %6, align 8
  %70 = getelementptr inbounds %struct.video_device, %struct.video_device* %69, i32 0, i32 16
  store %struct.v4l2_device* %68, %struct.v4l2_device** %70, align 8
  %71 = load %struct.video_device*, %struct.video_device** %6, align 8
  %72 = getelementptr inbounds %struct.video_device, %struct.video_device* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load i32, i32* @video_device_release_empty, align 4
  %74 = load %struct.video_device*, %struct.video_device** %6, align 8
  %75 = getelementptr inbounds %struct.video_device, %struct.video_device* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %77 = bitcast %struct.vb2_queue* %76 to %struct.video_device*
  %78 = load %struct.video_device*, %struct.video_device** %6, align 8
  %79 = getelementptr inbounds %struct.video_device, %struct.video_device* %78, i32 0, i32 14
  store %struct.video_device* %77, %struct.video_device** %79, align 8
  %80 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %81 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %80, i32 0, i32 2
  %82 = load %struct.video_device*, %struct.video_device** %6, align 8
  %83 = getelementptr inbounds %struct.video_device, %struct.video_device* %82, i32 0, i32 8
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %85 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.video_device*, %struct.video_device** %6, align 8
  %88 = getelementptr inbounds %struct.video_device, %struct.video_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.video_device*, %struct.video_device** %6, align 8
  %90 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %91 = call i32 @video_set_drvdata(%struct.video_device* %89, %struct.fimc_dev* %90)
  %92 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %93 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %92, i32 0, i32 3
  store %struct.fimc_vid_cap* %93, %struct.fimc_vid_cap** %9, align 8
  %94 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %95 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %97 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %99 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %100 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %99, i32 0, i32 5
  store %struct.fimc_ctx* %98, %struct.fimc_ctx** %100, align 8
  %101 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %102 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %101, i32 0, i32 4
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %105 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %104, i32 0, i32 3
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %108 = bitcast %struct.vb2_queue* %107 to %struct.video_device*
  %109 = call i32 @memset(%struct.video_device* %108, i32 0, i32 136)
  %110 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %111 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %112 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %111, i32 0, i32 13
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @VB2_MMAP, align 4
  %114 = load i32, i32* @VB2_USERPTR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @VB2_DMABUF, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %119 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %121 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %122 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %121, i32 0, i32 12
  store %struct.fimc_ctx* %120, %struct.fimc_ctx** %122, align 8
  %123 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %124 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %123, i32 0, i32 11
  store i32* @fimc_capture_qops, i32** %124, align 8
  %125 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %126 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %125, i32 0, i32 10
  store i32* @vb2_dma_contig_memops, i32** %126, align 8
  %127 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %128 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %127, i32 0, i32 3
  store i32 4, i32* %128, align 4
  %129 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %130 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %131 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 8
  %132 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %133 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %132, i32 0, i32 2
  %134 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %135 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %134, i32 0, i32 8
  store i32* %133, i32** %135, align 8
  %136 = load %struct.fimc_dev*, %struct.fimc_dev** %4, align 8
  %137 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %141 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %140, i32 0, i32 7
  store i32* %139, i32** %141, align 8
  %142 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %143 = bitcast %struct.vb2_queue* %142 to %struct.video_device*
  %144 = call i32 @vb2_queue_init(%struct.video_device* %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %29
  br label %242

148:                                              ; preds = %29
  %149 = load i32, i32* @FMT_FLAGS_CAM, align 4
  %150 = call i8* @fimc_find_format(i32* null, i32* null, i32 %149, i32 0)
  %151 = bitcast i8* %150 to %struct.fimc_fmt*
  store %struct.fimc_fmt* %151, %struct.fimc_fmt** %10, align 8
  %152 = load i8*, i8** @FIMC_DEFAULT_WIDTH, align 8
  %153 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %154 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  store i8* %152, i8** %155, align 8
  %156 = load i8*, i8** @FIMC_DEFAULT_HEIGHT, align 8
  %157 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %158 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %161 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %164 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load i8*, i8** @FIMC_DEFAULT_WIDTH, align 8
  %167 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %168 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  store i8* %166, i8** %169, align 8
  %170 = load i8*, i8** @FIMC_DEFAULT_HEIGHT, align 8
  %171 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %172 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i8* %170, i8** %173, align 8
  %174 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %175 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store %struct.fimc_fmt* %174, %struct.fimc_fmt** %177, align 8
  %178 = load i32, i32* @FMT_FLAGS_WRITEBACK, align 4
  %179 = call i8* @fimc_find_format(i32* null, i32* null, i32 %178, i32 0)
  %180 = bitcast i8* %179 to %struct.fimc_fmt*
  store %struct.fimc_fmt* %180, %struct.fimc_fmt** %10, align 8
  %181 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %182 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %181, i32 0, i32 1
  %183 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %184 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %183, i32 0, i32 2
  %185 = bitcast %struct.TYPE_14__* %182 to i8*
  %186 = bitcast %struct.TYPE_14__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 %186, i64 24, i1 false)
  %187 = load %struct.fimc_fmt*, %struct.fimc_fmt** %10, align 8
  %188 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %191 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  %193 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %194 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %195 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_SCALER, align 4
  %198 = load %struct.video_device*, %struct.video_device** %6, align 8
  %199 = getelementptr inbounds %struct.video_device, %struct.video_device* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  store i32 %197, i32* %200, align 8
  %201 = load %struct.video_device*, %struct.video_device** %6, align 8
  %202 = getelementptr inbounds %struct.video_device, %struct.video_device* %201, i32 0, i32 4
  %203 = load %struct.fimc_vid_cap*, %struct.fimc_vid_cap** %9, align 8
  %204 = getelementptr inbounds %struct.fimc_vid_cap, %struct.fimc_vid_cap* %203, i32 0, i32 0
  %205 = call i32 @media_entity_pads_init(%struct.TYPE_16__* %202, i32 1, %struct.TYPE_17__* %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %148
  br label %242

209:                                              ; preds = %148
  %210 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %211 = call i32 @fimc_ctrls_create(%struct.fimc_ctx* %210)
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %238

215:                                              ; preds = %209
  %216 = load %struct.video_device*, %struct.video_device** %6, align 8
  %217 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %218 = call i32 @video_register_device(%struct.video_device* %216, i32 %217, i32 -1)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %235

222:                                              ; preds = %215
  %223 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %224 = load %struct.video_device*, %struct.video_device** %6, align 8
  %225 = getelementptr inbounds %struct.video_device, %struct.video_device* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.video_device*, %struct.video_device** %6, align 8
  %228 = call i32 @video_device_node_name(%struct.video_device* %227)
  %229 = call i32 @v4l2_info(%struct.v4l2_device* %223, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %226, i32 %228)
  %230 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %231 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  %233 = load %struct.video_device*, %struct.video_device** %6, align 8
  %234 = getelementptr inbounds %struct.video_device, %struct.video_device* %233, i32 0, i32 5
  store i32* %232, i32** %234, align 8
  store i32 0, i32* %3, align 4
  br label %246

235:                                              ; preds = %221
  %236 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %237 = call i32 @fimc_ctrls_delete(%struct.fimc_ctx* %236)
  br label %238

238:                                              ; preds = %235, %214
  %239 = load %struct.video_device*, %struct.video_device** %6, align 8
  %240 = getelementptr inbounds %struct.video_device, %struct.video_device* %239, i32 0, i32 4
  %241 = call i32 @media_entity_cleanup(%struct.TYPE_16__* %240)
  br label %242

242:                                              ; preds = %238, %208, %147
  %243 = load %struct.fimc_ctx*, %struct.fimc_ctx** %8, align 8
  %244 = call i32 @kfree(%struct.fimc_ctx* %243)
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %242, %222, %26
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local %struct.fimc_ctx* @kzalloc(i32, i32) #1

declare dso_local i8* @fimc_find_format(i32*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.video_device*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.fimc_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.video_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_16__*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @fimc_ctrls_create(%struct.fimc_ctx*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_device*, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local i32 @fimc_ctrls_delete(%struct.fimc_ctx*) #1

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.fimc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
