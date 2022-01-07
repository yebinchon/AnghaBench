; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.cx23885_dev = type { i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cx23885\00", align 1
@cx23885_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"PCIe:%s\00", align 1
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@TUNER_ABSENT = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %8)
  store %struct.cx23885_dev* %9, %struct.cx23885_dev** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strscpy(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx23885_boards, align 8
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %19 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strscpy(i32 %16, i8* %23, i32 4)
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %29 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @pci_name(i32 %30)
  %32 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %34 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %49 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TUNER_ABSENT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %3
  %54 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %55 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %3
  ret i32 0
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
