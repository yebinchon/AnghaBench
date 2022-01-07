; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-video.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.usb_usbvision = type { i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"USBVision\00", align 1
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.usb_usbvision*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.usb_usbvision* @video_drvdata(%struct.file* %8)
  store %struct.usb_usbvision* %9, %struct.usb_usbvision** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strscpy(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %18 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %19 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strscpy(i32 %16, i8* %23, i32 4)
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_make_path(i32 %27, i32 %30, i32 4)
  %32 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %33 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %42 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %43 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %3
  %50 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %51 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %3
  %56 = load %struct.usb_usbvision*, %struct.usb_usbvision** %7, align 8
  %57 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %62 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  ret i32 0
}

declare dso_local %struct.usb_usbvision* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
