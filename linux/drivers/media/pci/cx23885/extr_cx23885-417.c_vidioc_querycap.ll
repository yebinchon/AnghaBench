; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.cx23885_dev = type { i64, i32, i32, %struct.cx23885_tsport }
%struct.cx23885_tsport = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@cx23885_boards = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"PCIe:%s\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_AUDIO = common dso_local global i32 0, align 4
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
  %8 = alloca %struct.cx23885_tsport*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %9)
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %7, align 8
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 3
  store %struct.cx23885_tsport* %12, %struct.cx23885_tsport** %8, align 8
  %13 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %17 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strscpy(i32 %15, i32 %18, i32 4)
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx23885_boards, align 8
  %24 = load %struct.cx23885_tsport*, %struct.cx23885_tsport** %8, align 8
  %25 = getelementptr inbounds %struct.cx23885_tsport, %struct.cx23885_tsport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strscpy(i32 %22, i32 %31, i32 4)
  %33 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %37 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @pci_name(i32 %38)
  %40 = call i32 @sprintf(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %42 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @V4L2_CAP_AUDIO, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %55 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TUNER_ABSENT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %3
  %60 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %61 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %3
  ret i32 0
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
