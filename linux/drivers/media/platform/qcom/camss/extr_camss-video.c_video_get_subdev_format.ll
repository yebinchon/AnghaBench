; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_get_subdev_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_get_subdev_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss_video = type { i32, i32*, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camss_video*, %struct.v4l2_format*)* @video_get_subdev_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_get_subdev_format(%struct.camss_video* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camss_video*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.camss_video* %0, %struct.camss_video** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %10 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %11 = call %struct.v4l2_subdev* @video_remote_subdev(%struct.camss_video* %10, i32* %8)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %13 = icmp eq %struct.v4l2_subdev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EPIPE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @get_fmt, align 4
  %25 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %22, i32 %23, i32 %24, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %40 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %43 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @video_find_format(i32 %33, i32 %38, i32* %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %70

50:                                               ; preds = %30
  %51 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %52 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %61 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.camss_video*, %struct.camss_video** %4, align 8
  %67 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @video_mbus_to_pix_mp(%struct.TYPE_5__* %56, %struct.TYPE_6__* %59, i32* %65, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %50, %48, %28, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.v4l2_subdev* @video_remote_subdev(%struct.camss_video*, i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @video_find_format(i32, i32, i32*, i32) #1

declare dso_local i32 @video_mbus_to_pix_mp(%struct.TYPE_5__*, %struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
