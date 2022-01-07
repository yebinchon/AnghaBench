; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_setup_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_setup_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, %struct.video_device, %struct.vb2_queue, %struct.v4l2_device }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.video_device = type { i32, i32*, i32*, i32, i32, i32, i32, %struct.v4l2_device*, i32*, %struct.vb2_queue* }
%struct.vb2_queue = type { i32, i32, i32, i32, %struct.aspeed_video*, i32*, i32*, i32*, i32, i32 }
%struct.v4l2_device = type { i32, %struct.TYPE_7__* }

@V4L2_JPEG_CHROMA_SUBSAMPLING_444 = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_420 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_QUANTIZATION_FULL_RANGE = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to register v4l2 device\0A\00", align 1
@aspeed_video_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@ASPEED_VIDEO_JPEG_NUM_QUALITIES = common dso_local global i64 0, align 8
@V4L2_CID_JPEG_CHROMA_SUBSAMPLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init controls: %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@aspeed_video_vb2_ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to init vb2 queue\0A\00", align 1
@aspeed_video_v4l2_fops = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@aspeed_video_ioctl_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_video*)* @aspeed_video_setup_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_video_setup_video(%struct.aspeed_video* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aspeed_video*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %3, align 8
  %9 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_444, align 4
  %10 = call i32 @BIT(i32 %9)
  %11 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_420, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = or i32 %10, %12
  %14 = xor i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %16 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %15, i32 0, i32 7
  store %struct.v4l2_device* %16, %struct.v4l2_device** %5, align 8
  %17 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %18 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %17, i32 0, i32 6
  store %struct.vb2_queue* %18, %struct.vb2_queue** %6, align 8
  %19 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %20 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %19, i32 0, i32 5
  store %struct.video_device* %20, %struct.video_device** %7, align 8
  %21 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %22 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %23 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %26 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %27 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %30 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %31 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @V4L2_QUANTIZATION_FULL_RANGE, align 4
  %34 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %35 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %38 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %39 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %41 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %44 = call i32 @v4l2_device_register(i32 %42, %struct.v4l2_device* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %49 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %201

53:                                               ; preds = %1
  %54 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %55 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %54, i32 0, i32 1
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %55, i32 2)
  %57 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %58 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %57, i32 0, i32 1
  %59 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %60 = load i64, i64* @ASPEED_VIDEO_JPEG_NUM_QUALITIES, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %58, i32* @aspeed_video_ctrl_ops, i32 %59, i32 0, i64 %61, i32 1, i32 0)
  %63 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %64 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %63, i32 0, i32 1
  %65 = load i32, i32* @V4L2_CID_JPEG_CHROMA_SUBSAMPLING, align 4
  %66 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_420, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_444, align 4
  %69 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_7__* %64, i32* @aspeed_video_ctrl_ops, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %71 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %53
  %76 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %77 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %76, i32 0, i32 1
  %78 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %77)
  %79 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %80 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %79)
  %81 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %82 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %85 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %201

90:                                               ; preds = %53
  %91 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %92 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %91, i32 0, i32 1
  %93 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %93, i32 0, i32 1
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %94, align 8
  %95 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %96 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %97 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @VB2_MMAP, align 4
  %99 = load i32, i32* @VB2_READ, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @VB2_DMABUF, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %104 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %109 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  %110 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %111 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %110, i32 0, i32 2
  %112 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %113 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %112, i32 0, i32 7
  store i32* %111, i32** %113, align 8
  %114 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %115 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %114, i32 0, i32 6
  store i32* @aspeed_video_vb2_ops, i32** %115, align 8
  %116 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %117 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %116, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %117, align 8
  %118 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %119 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %120 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %119, i32 0, i32 4
  store %struct.aspeed_video* %118, %struct.aspeed_video** %120, align 8
  %121 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %122 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %121, i32 0, i32 1
  store i32 4, i32* %122, align 4
  %123 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %124 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %125 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %127 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %126, i32 0, i32 2
  store i32 3, i32* %127, align 8
  %128 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %129 = call i32 @vb2_queue_init(%struct.vb2_queue* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %90
  %133 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %134 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %133, i32 0, i32 1
  %135 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %134)
  %136 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %137 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %136)
  %138 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %139 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %2, align 4
  br label %201

143:                                              ; preds = %90
  %144 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %145 = load %struct.video_device*, %struct.video_device** %7, align 8
  %146 = getelementptr inbounds %struct.video_device, %struct.video_device* %145, i32 0, i32 9
  store %struct.vb2_queue* %144, %struct.vb2_queue** %146, align 8
  %147 = load %struct.video_device*, %struct.video_device** %7, align 8
  %148 = getelementptr inbounds %struct.video_device, %struct.video_device* %147, i32 0, i32 8
  store i32* @aspeed_video_v4l2_fops, i32** %148, align 8
  %149 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %150 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.video_device*, %struct.video_device** %7, align 8
  %155 = getelementptr inbounds %struct.video_device, %struct.video_device* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %157 = load %struct.video_device*, %struct.video_device** %7, align 8
  %158 = getelementptr inbounds %struct.video_device, %struct.video_device* %157, i32 0, i32 7
  store %struct.v4l2_device* %156, %struct.v4l2_device** %158, align 8
  %159 = load %struct.video_device*, %struct.video_device** %7, align 8
  %160 = getelementptr inbounds %struct.video_device, %struct.video_device* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @DEVICE_NAME, align 4
  %163 = call i32 @strscpy(i32 %161, i32 %162, i32 4)
  %164 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %165 = load %struct.video_device*, %struct.video_device** %7, align 8
  %166 = getelementptr inbounds %struct.video_device, %struct.video_device* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @VFL_DIR_RX, align 4
  %168 = load %struct.video_device*, %struct.video_device** %7, align 8
  %169 = getelementptr inbounds %struct.video_device, %struct.video_device* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @video_device_release_empty, align 4
  %171 = load %struct.video_device*, %struct.video_device** %7, align 8
  %172 = getelementptr inbounds %struct.video_device, %struct.video_device* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.video_device*, %struct.video_device** %7, align 8
  %174 = getelementptr inbounds %struct.video_device, %struct.video_device* %173, i32 0, i32 2
  store i32* @aspeed_video_ioctl_ops, i32** %174, align 8
  %175 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %176 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %175, i32 0, i32 2
  %177 = load %struct.video_device*, %struct.video_device** %7, align 8
  %178 = getelementptr inbounds %struct.video_device, %struct.video_device* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  %179 = load %struct.video_device*, %struct.video_device** %7, align 8
  %180 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %181 = call i32 @video_set_drvdata(%struct.video_device* %179, %struct.aspeed_video* %180)
  %182 = load %struct.video_device*, %struct.video_device** %7, align 8
  %183 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %184 = call i32 @video_register_device(%struct.video_device* %182, i32 %183, i32 0)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %143
  %188 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %189 = call i32 @vb2_queue_release(%struct.vb2_queue* %188)
  %190 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %191 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %190, i32 0, i32 1
  %192 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__* %191)
  %193 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %194 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %193)
  %195 = load %struct.aspeed_video*, %struct.aspeed_video** %3, align 8
  %196 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32, i8*, ...) @dev_err(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %2, align 4
  br label %201

200:                                              ; preds = %143
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %187, %132, %75, %47
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @v4l2_device_register(i32, %struct.v4l2_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_7__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_7__*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.aspeed_video*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @vb2_queue_release(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
