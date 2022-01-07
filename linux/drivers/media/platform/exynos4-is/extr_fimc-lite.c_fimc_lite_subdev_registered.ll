; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_registered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_subdev_registered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.fimc_lite = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__*, i32, i32, i32, i64, i32, %struct.video_device }
%struct.TYPE_5__ = type { i32*, %struct.video_device }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.video_device = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, %struct.fimc_lite*, i32*, i32*, i32, %struct.video_device*, i32, i32, i32*, i32* }
%struct.vb2_queue = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32, %struct.fimc_lite*, i32*, i32*, i32, %struct.vb2_queue*, i32, i32, i32*, i32* }

@FIMC_IO_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fimc-lite.%d.capture\00", align 1
@fimc_lite_fops = common dso_local global i32 0, align 4
@fimc_lite_ioctl_ops = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@fimc_lite_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @fimc_lite_subdev_registered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_subdev_registered(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.fimc_lite*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.fimc_lite* %9, %struct.fimc_lite** %4, align 8
  %10 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %11 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %10, i32 0, i32 9
  %12 = bitcast %struct.video_device* %11 to %struct.vb2_queue*
  store %struct.vb2_queue* %12, %struct.vb2_queue** %5, align 8
  %13 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %14 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = call i32 @memset(%struct.video_device* %16, i32 0, i32 112)
  %18 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %18, i32 0, i32 8
  %20 = load i32, i32* @FIMC_IO_DMA, align 4
  %21 = call i32 @atomic_set(i32* %19, i32 %20)
  %22 = load %struct.video_device*, %struct.video_device** %6, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.video_device*, %struct.video_device** %6, align 8
  %30 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 17
  store i32* @fimc_lite_fops, i32** %30, align 8
  %31 = load %struct.video_device*, %struct.video_device** %6, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 16
  store i32* @fimc_lite_ioctl_ops, i32** %32, align 8
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.video_device*, %struct.video_device** %6, align 8
  %37 = getelementptr inbounds %struct.video_device, %struct.video_device* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load %struct.video_device*, %struct.video_device** %6, align 8
  %39 = getelementptr inbounds %struct.video_device, %struct.video_device* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = load i32, i32* @video_device_release_empty, align 4
  %41 = load %struct.video_device*, %struct.video_device** %6, align 8
  %42 = getelementptr inbounds %struct.video_device, %struct.video_device* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %44 = bitcast %struct.vb2_queue* %43 to %struct.video_device*
  %45 = load %struct.video_device*, %struct.video_device** %6, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 13
  store %struct.video_device* %44, %struct.video_device** %46, align 8
  %47 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %48 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.video_device*, %struct.video_device** %6, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %53 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %55 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %54, i32 0, i32 6
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %58 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %57, i32 0, i32 5
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %61 = bitcast %struct.vb2_queue* %60 to %struct.video_device*
  %62 = call i32 @memset(%struct.video_device* %61, i32 0, i32 112)
  %63 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @VB2_MMAP, align 4
  %67 = load i32, i32* @VB2_USERPTR, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %72 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %71, i32 0, i32 11
  store i32* @fimc_lite_qops, i32** %72, align 8
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 10
  store i32* @vb2_dma_contig_memops, i32** %74, align 8
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 3
  store i32 4, i32* %76, align 4
  %77 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %78 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %79 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %78, i32 0, i32 9
  store %struct.fimc_lite* %77, %struct.fimc_lite** %79, align 8
  %80 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %81 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %82 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %84 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %83, i32 0, i32 4
  %85 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %86 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %85, i32 0, i32 7
  store i32* %84, i32** %86, align 8
  %87 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %88 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %92 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  %93 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %94 = bitcast %struct.vb2_queue* %93 to %struct.video_device*
  %95 = call i32 @vb2_queue_init(%struct.video_device* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %1
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %146

100:                                              ; preds = %1
  %101 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %102 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %103 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.video_device*, %struct.video_device** %6, align 8
  %106 = getelementptr inbounds %struct.video_device, %struct.video_device* %105, i32 0, i32 5
  %107 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %108 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %107, i32 0, i32 2
  %109 = call i32 @media_entity_pads_init(i32* %106, i32 1, %struct.TYPE_6__* %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %146

114:                                              ; preds = %100
  %115 = load %struct.video_device*, %struct.video_device** %6, align 8
  %116 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %117 = call i32 @video_set_drvdata(%struct.video_device* %115, %struct.fimc_lite* %116)
  %118 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %119 = call i32* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev* %118)
  %120 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %121 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32* %119, i32** %122, align 8
  %123 = load %struct.video_device*, %struct.video_device** %6, align 8
  %124 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %125 = call i32 @video_register_device(%struct.video_device* %123, i32 %124, i32 -1)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %114
  %129 = load %struct.video_device*, %struct.video_device** %6, align 8
  %130 = getelementptr inbounds %struct.video_device, %struct.video_device* %129, i32 0, i32 5
  %131 = call i32 @media_entity_cleanup(i32* %130)
  %132 = load %struct.fimc_lite*, %struct.fimc_lite** %4, align 8
  %133 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %146

136:                                              ; preds = %114
  %137 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %138 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.video_device*, %struct.video_device** %6, align 8
  %141 = getelementptr inbounds %struct.video_device, %struct.video_device* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.video_device*, %struct.video_device** %6, align 8
  %144 = call i32 @video_device_node_name(%struct.video_device* %143)
  %145 = call i32 @v4l2_info(i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %144)
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %136, %128, %112, %98
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.fimc_lite* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(%struct.video_device*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.video_device*) #1

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.fimc_lite*) #1

declare dso_local i32* @v4l2_get_subdev_hostdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_info(i32, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
