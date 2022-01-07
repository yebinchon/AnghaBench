; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_notify_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_notify_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.ceu_device = type { %struct.vb2_queue, i32, %struct.TYPE_4__*, i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.video_device }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32, i32*, i32*, %struct.ceu_device*, i32 }
%struct.TYPE_4__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.video_device = type { i32, %struct.v4l2_device*, i32, i32*, i32*, i32, %struct.vb2_queue*, i32*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@ceu_vb2_ops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@ceu_fops = common dso_local global i32 0, align 4
@ceu_ioctl_ops = common dso_local global i32 0, align 4
@ceu_vdev_release = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"video_register_device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*)* @ceu_notify_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_notify_complete(%struct.v4l2_async_notifier* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_async_notifier*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca %struct.ceu_device*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %3, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %10, i32 0, i32 0
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %11, align 8
  store %struct.v4l2_device* %12, %struct.v4l2_device** %4, align 8
  %13 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %14 = call %struct.ceu_device* @v4l2_to_ceu(%struct.v4l2_device* %13)
  store %struct.ceu_device* %14, %struct.ceu_device** %5, align 8
  %15 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %16 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %15, i32 0, i32 6
  store %struct.video_device* %16, %struct.video_device** %6, align 8
  %17 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %18 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %17, i32 0, i32 0
  store %struct.vb2_queue* %18, %struct.vb2_queue** %7, align 8
  %19 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @VB2_MMAP, align 4
  %23 = load i32, i32* @VB2_DMABUF, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 8
  store %struct.ceu_device* %27, %struct.ceu_device** %29, align 8
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 7
  store i32* @ceu_vb2_ops, i32** %31, align 8
  %32 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %32, i32 0, i32 6
  store i32* @vb2_dma_contig_memops, i32** %33, align 8
  %34 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %35 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %34, i32 0, i32 1
  store i32 4, i32* %35, align 4
  %36 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %38 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %40 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %39, i32 0, i32 2
  store i32 2, i32* %40, align 8
  %41 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %42 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %41, i32 0, i32 1
  %43 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %44 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %43, i32 0, i32 4
  store i32* %42, i32** %44, align 8
  %45 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %46 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %50 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %52 = call i32 @vb2_queue_init(%struct.vb2_queue* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %2, align 4
  br label %140

57:                                               ; preds = %1
  %58 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %59 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %64 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %68 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %67, i32 0, i32 2
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %70 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %73 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %75, align 8
  store %struct.v4l2_subdev* %76, %struct.v4l2_subdev** %8, align 8
  %77 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %78 = call i32 @ceu_init_mbus_fmt(%struct.ceu_device* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %71
  %84 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %85 = call i32 @ceu_set_default_fmt(%struct.ceu_device* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %140

90:                                               ; preds = %83
  %91 = load %struct.video_device*, %struct.video_device** %6, align 8
  %92 = getelementptr inbounds %struct.video_device, %struct.video_device* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DRIVER_NAME, align 4
  %95 = call i32 @strscpy(i32 %93, i32 %94, i32 4)
  %96 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %97 = load %struct.video_device*, %struct.video_device** %6, align 8
  %98 = getelementptr inbounds %struct.video_device, %struct.video_device* %97, i32 0, i32 1
  store %struct.v4l2_device* %96, %struct.v4l2_device** %98, align 8
  %99 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %100 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %99, i32 0, i32 1
  %101 = load %struct.video_device*, %struct.video_device** %6, align 8
  %102 = getelementptr inbounds %struct.video_device, %struct.video_device* %101, i32 0, i32 7
  store i32* %100, i32** %102, align 8
  %103 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %104 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %103, i32 0, i32 0
  %105 = load %struct.video_device*, %struct.video_device** %6, align 8
  %106 = getelementptr inbounds %struct.video_device, %struct.video_device* %105, i32 0, i32 6
  store %struct.vb2_queue* %104, %struct.vb2_queue** %106, align 8
  %107 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.video_device*, %struct.video_device** %6, align 8
  %111 = getelementptr inbounds %struct.video_device, %struct.video_device* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.video_device*, %struct.video_device** %6, align 8
  %113 = getelementptr inbounds %struct.video_device, %struct.video_device* %112, i32 0, i32 4
  store i32* @ceu_fops, i32** %113, align 8
  %114 = load %struct.video_device*, %struct.video_device** %6, align 8
  %115 = getelementptr inbounds %struct.video_device, %struct.video_device* %114, i32 0, i32 3
  store i32* @ceu_ioctl_ops, i32** %115, align 8
  %116 = load i32, i32* @ceu_vdev_release, align 4
  %117 = load %struct.video_device*, %struct.video_device** %6, align 8
  %118 = getelementptr inbounds %struct.video_device, %struct.video_device* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  %120 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.video_device*, %struct.video_device** %6, align 8
  %123 = getelementptr inbounds %struct.video_device, %struct.video_device* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.video_device*, %struct.video_device** %6, align 8
  %125 = load %struct.ceu_device*, %struct.ceu_device** %5, align 8
  %126 = call i32 @video_set_drvdata(%struct.video_device* %124, %struct.ceu_device* %125)
  %127 = load %struct.video_device*, %struct.video_device** %6, align 8
  %128 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %129 = call i32 @video_register_device(%struct.video_device* %127, i32 %128, i32 -1)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %90
  %133 = load %struct.video_device*, %struct.video_device** %6, align 8
  %134 = getelementptr inbounds %struct.video_device, %struct.video_device* %133, i32 0, i32 1
  %135 = load %struct.v4l2_device*, %struct.v4l2_device** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @v4l2_err(%struct.v4l2_device* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %90
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %132, %88, %81, %55
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.ceu_device* @v4l2_to_ceu(%struct.v4l2_device*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @ceu_init_mbus_fmt(%struct.ceu_device*) #1

declare dso_local i32 @ceu_set_default_fmt(%struct.ceu_device*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.ceu_device*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
