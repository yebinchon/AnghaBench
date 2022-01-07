; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.cx25821_channel = type { %struct.cx25821_dev* }
%struct.cx25821_dev = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cx25821\00", align 1
@cx25821_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"PCIe:%s\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @cx25821_vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.cx25821_channel*, align 8
  %8 = alloca %struct.cx25821_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.cx25821_channel* @video_drvdata(%struct.file* %9)
  store %struct.cx25821_channel* %10, %struct.cx25821_channel** %7, align 8
  %11 = load %struct.cx25821_channel*, %struct.cx25821_channel** %7, align 8
  %12 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %11, i32 0, i32 0
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %12, align 8
  store %struct.cx25821_dev* %13, %struct.cx25821_dev** %8, align 8
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strscpy(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %18 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx25821_boards, align 8
  %22 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %23 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strscpy(i32 %20, i8* %27, i32 4)
  %29 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cx25821_dev*, %struct.cx25821_dev** %8, align 8
  %33 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @pci_name(i32 %34)
  %36 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %38 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %47 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  ret i32 0
}

declare dso_local %struct.cx25821_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
