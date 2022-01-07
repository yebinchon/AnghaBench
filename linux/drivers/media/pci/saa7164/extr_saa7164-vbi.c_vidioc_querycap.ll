; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-vbi.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-vbi.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.saa7164_vbi_fh* }
%struct.saa7164_vbi_fh = type { %struct.saa7164_port* }
%struct.saa7164_port = type { %struct.saa7164_dev* }
%struct.saa7164_dev = type { i64, i32, i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }

@saa7164_boards = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"PCI:%s\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.saa7164_vbi_fh*, align 8
  %8 = alloca %struct.saa7164_port*, align 8
  %9 = alloca %struct.saa7164_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %11, align 8
  store %struct.saa7164_vbi_fh* %12, %struct.saa7164_vbi_fh** %7, align 8
  %13 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %7, align 8
  %14 = getelementptr inbounds %struct.saa7164_vbi_fh, %struct.saa7164_vbi_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7164_port*, %struct.saa7164_port** %14, align 8
  store %struct.saa7164_port* %15, %struct.saa7164_port** %8, align 8
  %16 = load %struct.saa7164_port*, %struct.saa7164_port** %8, align 8
  %17 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %16, i32 0, i32 0
  %18 = load %struct.saa7164_dev*, %struct.saa7164_dev** %17, align 8
  store %struct.saa7164_dev* %18, %struct.saa7164_dev** %9, align 8
  %19 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.saa7164_dev*, %struct.saa7164_dev** %9, align 8
  %23 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %21, i32 %24, i32 4)
  %26 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @saa7164_boards, align 8
  %30 = load %struct.saa7164_dev*, %struct.saa7164_dev** %9, align 8
  %31 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strscpy(i32 %28, i32 %35, i32 4)
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.saa7164_dev*, %struct.saa7164_dev** %9, align 8
  %41 = getelementptr inbounds %struct.saa7164_dev, %struct.saa7164_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @pci_name(i32 %42)
  %44 = call i32 @sprintf(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %46 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %55 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  ret i32 0
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
