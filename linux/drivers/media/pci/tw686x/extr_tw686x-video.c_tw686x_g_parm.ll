; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_captureparm }
%struct.v4l2_captureparm = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tw686x_video_channel = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @tw686x_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.tw686x_video_channel*, align 8
  %9 = alloca %struct.v4l2_captureparm*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.tw686x_video_channel* @video_drvdata(%struct.file* %10)
  store %struct.tw686x_video_channel* %11, %struct.tw686x_video_channel** %8, align 8
  %12 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.v4l2_captureparm* %14, %struct.v4l2_captureparm** %9, align 8
  %15 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %26, i32 0, i32 0
  store i32 3, i32* %27, align 8
  %28 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %29 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %32 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %8, align 8
  %35 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %9, align 8
  %38 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %23, %20
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.tw686x_video_channel* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
