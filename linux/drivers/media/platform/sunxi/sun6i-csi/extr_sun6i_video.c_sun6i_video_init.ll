; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_video.c_sun6i_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_video = type { i32, %struct.video_device, %struct.vb2_queue, i64, i32, i32, %struct.TYPE_9__, %struct.sun6i_csi* }
%struct.video_device = type { i32, %struct.TYPE_8__, i32*, %struct.vb2_queue*, i32*, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.sun6i_video*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.sun6i_csi = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_MUST_CONNECT = common dso_local global i32 0, align 4
@sun6i_video_media_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@supported_pixformats = common dso_local global i32* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@sun6i_csi_vb2_ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vb2_queue_init failed: %d\0A\00", align 1
@video_device_release_empty = common dso_local global i32 0, align 4
@sun6i_video_fops = common dso_local global i32 0, align 4
@sun6i_video_ioctl_ops = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@VFL_DIR_RX = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"video_register_device failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun6i_video_init(%struct.sun6i_video* %0, %struct.sun6i_csi* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_video*, align 8
  %6 = alloca %struct.sun6i_csi*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.v4l2_format, align 8
  %11 = alloca i32, align 4
  store %struct.sun6i_video* %0, %struct.sun6i_video** %5, align 8
  store %struct.sun6i_csi* %1, %struct.sun6i_csi** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %13 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %12, i32 0, i32 1
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %15 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %14, i32 0, i32 2
  store %struct.vb2_queue* %15, %struct.vb2_queue** %9, align 8
  %16 = bitcast %struct.v4l2_format* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.sun6i_csi*, %struct.sun6i_csi** %6, align 8
  %18 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %19 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %18, i32 0, i32 7
  store %struct.sun6i_csi* %17, %struct.sun6i_csi** %19, align 8
  %20 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %21 = load i32, i32* @MEDIA_PAD_FL_MUST_CONNECT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %24 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.video_device*, %struct.video_device** %8, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i32* @sun6i_video_media_ops, i32** %28, align 8
  %29 = load %struct.video_device*, %struct.video_device** %8, align 8
  %30 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 1
  %31 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %32 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %31, i32 0, i32 6
  %33 = call i32 @media_entity_pads_init(%struct.TYPE_8__* %30, i32 1, %struct.TYPE_9__* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %172

38:                                               ; preds = %3
  %39 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %40 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %39, i32 0, i32 0
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %43 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %42, i32 0, i32 5
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %46 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %45, i32 0, i32 4
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %49 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** @supported_pixformats, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 1280, i32* %60, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 720, i32* %63, align 4
  %64 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %65 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %69 = call i32 @sun6i_video_set_fmt(%struct.sun6i_video* %68, %struct.v4l2_format* %10)
  %70 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @VB2_MMAP, align 4
  %74 = load i32, i32* @VB2_DMABUF, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %77 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %79 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %80 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %79, i32 0, i32 8
  store %struct.sun6i_video* %78, %struct.sun6i_video** %80, align 8
  %81 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %82 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %81, i32 0, i32 1
  store i32 4, i32* %82, align 4
  %83 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %84 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %83, i32 0, i32 7
  store i32* @sun6i_csi_vb2_ops, i32** %84, align 8
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %86, align 8
  %87 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %88 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %89 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  %90 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %91 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %90, i32 0, i32 0
  %92 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %93 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  %94 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %95 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %94, i32 0, i32 2
  store i32 3, i32* %95, align 8
  %96 = load %struct.sun6i_csi*, %struct.sun6i_csi** %6, align 8
  %97 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %100 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %102 = call i32 @vb2_queue_init(%struct.vb2_queue* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %38
  %106 = load %struct.sun6i_csi*, %struct.sun6i_csi** %6, align 8
  %107 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %106, i32 0, i32 0
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @v4l2_err(i32* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %163

110:                                              ; preds = %38
  %111 = load %struct.video_device*, %struct.video_device** %8, align 8
  %112 = getelementptr inbounds %struct.video_device, %struct.video_device* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strscpy(i32 %113, i8* %114, i32 4)
  %116 = load i32, i32* @video_device_release_empty, align 4
  %117 = load %struct.video_device*, %struct.video_device** %8, align 8
  %118 = getelementptr inbounds %struct.video_device, %struct.video_device* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  %119 = load %struct.video_device*, %struct.video_device** %8, align 8
  %120 = getelementptr inbounds %struct.video_device, %struct.video_device* %119, i32 0, i32 8
  store i32* @sun6i_video_fops, i32** %120, align 8
  %121 = load %struct.video_device*, %struct.video_device** %8, align 8
  %122 = getelementptr inbounds %struct.video_device, %struct.video_device* %121, i32 0, i32 7
  store i32* @sun6i_video_ioctl_ops, i32** %122, align 8
  %123 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %124 = load %struct.video_device*, %struct.video_device** %8, align 8
  %125 = getelementptr inbounds %struct.video_device, %struct.video_device* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @VFL_DIR_RX, align 4
  %127 = load %struct.video_device*, %struct.video_device** %8, align 8
  %128 = getelementptr inbounds %struct.video_device, %struct.video_device* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sun6i_csi*, %struct.sun6i_csi** %6, align 8
  %130 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %129, i32 0, i32 0
  %131 = load %struct.video_device*, %struct.video_device** %8, align 8
  %132 = getelementptr inbounds %struct.video_device, %struct.video_device* %131, i32 0, i32 4
  store i32* %130, i32** %132, align 8
  %133 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %134 = load %struct.video_device*, %struct.video_device** %8, align 8
  %135 = getelementptr inbounds %struct.video_device, %struct.video_device* %134, i32 0, i32 3
  store %struct.vb2_queue* %133, %struct.vb2_queue** %135, align 8
  %136 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %137 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %136, i32 0, i32 0
  %138 = load %struct.video_device*, %struct.video_device** %8, align 8
  %139 = getelementptr inbounds %struct.video_device, %struct.video_device* %138, i32 0, i32 2
  store i32* %137, i32** %139, align 8
  %140 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %141 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.video_device*, %struct.video_device** %8, align 8
  %144 = getelementptr inbounds %struct.video_device, %struct.video_device* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.video_device*, %struct.video_device** %8, align 8
  %146 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %147 = call i32 @video_set_drvdata(%struct.video_device* %145, %struct.sun6i_video* %146)
  %148 = load %struct.video_device*, %struct.video_device** %8, align 8
  %149 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %150 = call i32 @video_register_device(%struct.video_device* %148, i32 %149, i32 -1)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %110
  %154 = load %struct.sun6i_csi*, %struct.sun6i_csi** %6, align 8
  %155 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %154, i32 0, i32 0
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @v4l2_err(i32* %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  br label %159

158:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %172

159:                                              ; preds = %153
  %160 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %161 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %160, i32 0, i32 2
  %162 = call i32 @vb2_queue_release(%struct.vb2_queue* %161)
  br label %163

163:                                              ; preds = %159, %105
  %164 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %165 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.video_device, %struct.video_device* %165, i32 0, i32 1
  %167 = call i32 @media_entity_cleanup(%struct.TYPE_8__* %166)
  %168 = load %struct.sun6i_video*, %struct.sun6i_video** %5, align 8
  %169 = getelementptr inbounds %struct.sun6i_video, %struct.sun6i_video* %168, i32 0, i32 0
  %170 = call i32 @mutex_destroy(i32* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %163, %158, %36
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @media_entity_pads_init(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @sun6i_video_set_fmt(%struct.sun6i_video*, %struct.v4l2_format*) #2

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #2

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #2

declare dso_local i32 @strscpy(i32, i8*, i32) #2

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.sun6i_video*) #2

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #2

declare dso_local i32 @vb2_queue_release(%struct.vb2_queue*) #2

declare dso_local i32 @media_entity_cleanup(%struct.TYPE_8__*) #2

declare dso_local i32 @mutex_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
