; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OVERLAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @saa7134_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %11)
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OVERLAY, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %52

23:                                               ; preds = %16, %4
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_STD_525_60, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %33, i32 0, i32 0
  store i32 11, i32* %34, align 4
  %35 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %35, i32 0, i32 1
  store i32 10, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_STD_625_50, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %47, i32 0, i32 0
  store i32 54, i32* %48, align 4
  %49 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %49, i32 0, i32 1
  store i32 59, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %37
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
