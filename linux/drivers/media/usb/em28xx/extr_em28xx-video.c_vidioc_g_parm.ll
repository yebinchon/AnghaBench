; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_vidioc_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, i32 }
%struct.em28xx = type { i64, %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EM28XX_MIN_BUF = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_frame_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.v4l2_subdev_frame_interval, align 4
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca %struct.em28xx_v4l2*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %12 = bitcast %struct.v4l2_subdev_frame_interval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.em28xx* @video_drvdata(%struct.file* %13)
  store %struct.em28xx* %14, %struct.em28xx** %9, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 1
  %17 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %16, align 8
  store %struct.em28xx_v4l2* %17, %struct.em28xx_v4l2** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %74

32:                                               ; preds = %23, %3
  %33 = load i32, i32* @EM28XX_MIN_BUF, align 4
  %34 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %33, i32* %37, align 8
  %38 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %39 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %44 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %32
  %48 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %10, align 8
  %49 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %48, i32 0, i32 1
  %50 = load i32, i32* @video, align 4
  %51 = load i32, i32* @g_frame_interval, align 4
  %52 = call i32 @v4l2_device_call_until_err(i32* %49, i32 0, i32 %50, i32 %51, %struct.v4l2_subdev_frame_interval* %8)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %47
  br label %72

63:                                               ; preds = %32
  %64 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %10, align 8
  %65 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @v4l2_video_std_frame_period(i32 %66, i32* %70)
  br label %72

72:                                               ; preds = %63, %62
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %29
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.em28xx* @video_drvdata(%struct.file*) #2

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, %struct.v4l2_subdev_frame_interval*) #2

declare dso_local i32 @v4l2_video_std_frame_period(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
