; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_s_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.em28xx = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_subdev_frame_interval = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EM28XX_MIN_BUF = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_frame_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.em28xx*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_interval, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.em28xx* @video_drvdata(%struct.file* %11)
  store %struct.em28xx* %12, %struct.em28xx** %8, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 1
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 2
  store i32 0, i32* %20, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOTTY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %34, %28
  %44 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %44, i32 0, i32 1
  %46 = call i32 @memset(%struct.TYPE_6__* %45, i32 0, i32 12)
  %47 = load i32, i32* @EM28XX_MIN_BUF, align 4
  %48 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %53 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* @video, align 4
  %62 = load i32, i32* @s_frame_interval, align 4
  %63 = call i32 @v4l2_device_call_until_err(i32* %60, i32 0, i32 %61, i32 %62, %struct.v4l2_subdev_frame_interval* %9)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %43
  %67 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %43
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %40, %25
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, %struct.v4l2_subdev_frame_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
