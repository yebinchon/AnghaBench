; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c___isp_video_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c___isp_video_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.v4l2_format*)* @__isp_video_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__isp_video_get_format(%struct.isp_video* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isp_video* %0, %struct.isp_video** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %11 = call %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video* %10, i32* %8)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %13 = icmp eq %struct.v4l2_subdev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %23 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @get_fmt, align 4
  %28 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %25, i32 %26, i32 %27, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %30 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %17
  %37 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %38 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %44 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @isp_video_mbus_to_pix(%struct.isp_video* %42, i32* %43, i32* %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %36, %34, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.v4l2_subdev* @isp_video_remote_subdev(%struct.isp_video*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isp_video_mbus_to_pix(%struct.isp_video*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
