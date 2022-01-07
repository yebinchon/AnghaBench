; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32, %struct.v4l2_frequency*, i32, i32 }
%struct.video_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @cxusb_medion_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_dev*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %15, align 8
  store %struct.cxusb_medion_dev* %16, %struct.cxusb_medion_dev** %9, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = call %struct.video_device* @video_devdata(%struct.file* %17)
  store %struct.video_device* %18, %struct.video_device** %10, align 8
  %19 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %28 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @tuner, align 4
  %31 = load i32, i32* @s_frequency, align 4
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %33 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %29, i32 %30, i32 %31, %struct.v4l2_frequency* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %81

38:                                               ; preds = %26
  %39 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %40 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @tuner, align 4
  %43 = load i32, i32* @s_frequency, align 4
  %44 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %45 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %41, i32 %42, i32 %43, %struct.v4l2_frequency* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %81

50:                                               ; preds = %38
  %51 = load %struct.video_device*, %struct.video_device** %10, align 8
  %52 = getelementptr inbounds %struct.video_device, %struct.video_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %58 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @video, align 4
  %61 = load i32, i32* @s_std, align 4
  %62 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %63 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %62, i32 0, i32 1
  %64 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %63, align 8
  %65 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %59, i32 %60, i32 %61, %struct.v4l2_frequency* %64)
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %68 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @tuner, align 4
  %71 = load i32, i32* @s_radio, align 4
  %72 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %75 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @tuner, align 4
  %78 = load i32, i32* @s_frequency, align 4
  %79 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %80 = call i32 (i32, i32, i32, ...) @v4l2_subdev_call(i32 %76, i32 %77, i32 %78, %struct.v4l2_frequency* %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %73, %48, %36, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
