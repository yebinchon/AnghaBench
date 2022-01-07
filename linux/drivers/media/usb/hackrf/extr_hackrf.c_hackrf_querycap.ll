; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.hackrf_dev = type { i32, %struct.TYPE_2__, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@V4L2_CAP_SDR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_SDR_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_MODULATOR = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @hackrf_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.hackrf_dev*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.hackrf_dev* @video_drvdata(%struct.file* %9)
  store %struct.hackrf_dev* %10, %struct.hackrf_dev** %7, align 8
  %11 = load %struct.hackrf_dev*, %struct.hackrf_dev** %7, align 8
  %12 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %11, i32 0, i32 2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @V4L2_CAP_SDR_CAPTURE, align 4
  %18 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @V4L2_CAP_SDR_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V4L2_CAP_MODULATOR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KBUILD_MODNAME, align 4
  %36 = call i32 @strscpy(i32 %34, i32 %35, i32 4)
  %37 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hackrf_dev*, %struct.hackrf_dev** %7, align 8
  %41 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strscpy(i32 %39, i32 %43, i32 4)
  %45 = load %struct.hackrf_dev*, %struct.hackrf_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_make_path(i32 %47, i32 %50, i32 4)
  ret i32 0
}

declare dso_local %struct.hackrf_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
