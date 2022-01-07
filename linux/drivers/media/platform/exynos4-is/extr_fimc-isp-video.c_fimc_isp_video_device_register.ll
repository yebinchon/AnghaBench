; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_fimc_isp_video_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_fimc_isp_video_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_isp = type { i32, %struct.TYPE_7__*, %struct.fimc_is_video }
%struct.TYPE_7__ = type { i32 }
%struct.fimc_is_video = type { %struct.TYPE_9__, %struct.TYPE_8__, i64, %struct.TYPE_6__, %struct.TYPE_10__*, i32, i32, %struct.video_device }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.video_device }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.video_device = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.v4l2_device*, i32*, i32*, %struct.video_device*, i32*, i32, %struct.fimc_isp*, i32*, i32* }
%struct.v4l2_device = type { i32 }
%struct.vb2_queue = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.v4l2_device*, i32*, i32*, %struct.vb2_queue*, i32*, i32, %struct.fimc_isp*, i32*, i32* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@IS_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@IS_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@isp_video_capture_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"fimc-is-isp.capture\00", align 1
@isp_video_fops = common dso_local global i32 0, align 4
@isp_video_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fimc_isp_video_device_register(%struct.fimc_isp* %0, %struct.v4l2_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fimc_isp*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vb2_queue*, align 8
  %9 = alloca %struct.fimc_is_video*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  store %struct.fimc_isp* %0, %struct.fimc_isp** %5, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %13 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %13, i32 0, i32 7
  %15 = bitcast %struct.video_device* %14 to %struct.vb2_queue*
  store %struct.vb2_queue* %15, %struct.vb2_queue** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %21 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %20, i32 0, i32 2
  store %struct.fimc_is_video* %21, %struct.fimc_is_video** %9, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %170

25:                                               ; preds = %19
  %26 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %27 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %26, i32 0, i32 0
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %30 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %29, i32 0, i32 6
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %33 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %32, i32 0, i32 5
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = call %struct.TYPE_10__* @fimc_isp_find_format(i32* null, i32* null, i32 0)
  %36 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %37 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %36, i32 0, i32 4
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %37, align 8
  %38 = load i32, i32* @IS_DEFAULT_WIDTH, align 4
  %39 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %40 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @IS_DEFAULT_HEIGHT, align 4
  %43 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %44 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %47 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %46, i32 0, i32 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %52 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %55 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %56 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %59 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %61 = bitcast %struct.vb2_queue* %60 to %struct.video_device*
  %62 = call i32 @memset(%struct.video_device* %61, i32 0, i32 120)
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @VB2_MMAP, align 4
  %67 = load i32, i32* @VB2_USERPTR, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 17
  store i32* @isp_video_capture_qops, i32** %72, align 8
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 16
  store i32* @vb2_dma_contig_memops, i32** %74, align 8
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 2
  store i32 4, i32* %76, align 8
  %77 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %79 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %78, i32 0, i32 15
  store %struct.fimc_isp* %77, %struct.fimc_isp** %79, align 8
  %80 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %81 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %82 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %84 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %83, i32 0, i32 0
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 7
  store i32* %84, i32** %86, align 8
  %87 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %88 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %92 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %91, i32 0, i32 13
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %94 = bitcast %struct.vb2_queue* %93 to %struct.video_device*
  %95 = call i32 @vb2_queue_init(%struct.video_device* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %25
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %170

100:                                              ; preds = %25
  %101 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %102 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store %struct.video_device* %103, %struct.video_device** %10, align 8
  %104 = load %struct.video_device*, %struct.video_device** %10, align 8
  %105 = call i32 @memset(%struct.video_device* %104, i32 0, i32 120)
  %106 = load %struct.video_device*, %struct.video_device** %10, align 8
  %107 = getelementptr inbounds %struct.video_device, %struct.video_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @strscpy(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 4)
  %110 = load %struct.vb2_queue*, %struct.vb2_queue** %8, align 8
  %111 = bitcast %struct.vb2_queue* %110 to %struct.video_device*
  %112 = load %struct.video_device*, %struct.video_device** %10, align 8
  %113 = getelementptr inbounds %struct.video_device, %struct.video_device* %112, i32 0, i32 12
  store %struct.video_device* %111, %struct.video_device** %113, align 8
  %114 = load %struct.video_device*, %struct.video_device** %10, align 8
  %115 = getelementptr inbounds %struct.video_device, %struct.video_device* %114, i32 0, i32 11
  store i32* @isp_video_fops, i32** %115, align 8
  %116 = load %struct.video_device*, %struct.video_device** %10, align 8
  %117 = getelementptr inbounds %struct.video_device, %struct.video_device* %116, i32 0, i32 10
  store i32* @isp_video_ioctl_ops, i32** %117, align 8
  %118 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %119 = load %struct.video_device*, %struct.video_device** %10, align 8
  %120 = getelementptr inbounds %struct.video_device, %struct.video_device* %119, i32 0, i32 9
  store %struct.v4l2_device* %118, %struct.v4l2_device** %120, align 8
  %121 = load %struct.video_device*, %struct.video_device** %10, align 8
  %122 = getelementptr inbounds %struct.video_device, %struct.video_device* %121, i32 0, i32 3
  store i32 -1, i32* %122, align 4
  %123 = load i32, i32* @video_device_release_empty, align 4
  %124 = load %struct.video_device*, %struct.video_device** %10, align 8
  %125 = getelementptr inbounds %struct.video_device, %struct.video_device* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %127 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %126, i32 0, i32 0
  %128 = load %struct.video_device*, %struct.video_device** %10, align 8
  %129 = getelementptr inbounds %struct.video_device, %struct.video_device* %128, i32 0, i32 7
  store i32* %127, i32** %129, align 8
  %130 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %131 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.video_device*, %struct.video_device** %10, align 8
  %134 = getelementptr inbounds %struct.video_device, %struct.video_device* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %136 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %137 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.video_device*, %struct.video_device** %10, align 8
  %140 = getelementptr inbounds %struct.video_device, %struct.video_device* %139, i32 0, i32 6
  %141 = load %struct.fimc_is_video*, %struct.fimc_is_video** %9, align 8
  %142 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %141, i32 0, i32 0
  %143 = call i32 @media_entity_pads_init(i32* %140, i32 1, %struct.TYPE_9__* %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %100
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %170

148:                                              ; preds = %100
  %149 = load %struct.video_device*, %struct.video_device** %10, align 8
  %150 = load %struct.fimc_isp*, %struct.fimc_isp** %5, align 8
  %151 = call i32 @video_set_drvdata(%struct.video_device* %149, %struct.fimc_isp* %150)
  %152 = load %struct.video_device*, %struct.video_device** %10, align 8
  %153 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %154 = call i32 @video_register_device(%struct.video_device* %152, i32 %153, i32 -1)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.video_device*, %struct.video_device** %10, align 8
  %159 = getelementptr inbounds %struct.video_device, %struct.video_device* %158, i32 0, i32 6
  %160 = call i32 @media_entity_cleanup(i32* %159)
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %4, align 4
  br label %170

162:                                              ; preds = %148
  %163 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %164 = load %struct.video_device*, %struct.video_device** %10, align 8
  %165 = getelementptr inbounds %struct.video_device, %struct.video_device* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.video_device*, %struct.video_device** %10, align 8
  %168 = call i32 @video_device_node_name(%struct.video_device* %167)
  %169 = call i32 @v4l2_info(%struct.v4l2_device* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %168)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %162, %157, %146, %98, %22
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_10__* @fimc_isp_find_format(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.video_device*, i32, i32) #1

declare dso_local i32 @vb2_queue_init(%struct.video_device*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.fimc_isp*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_device*, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
