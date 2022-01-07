; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_querystd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i64, i32 }

@V4L2_STD_PAL = common dso_local global i64 0, align 8
@V4L2_STD_ALL = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cannot get detected standard for input %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"input %u detected standard is %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64*)* @cxusb_medion_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_querystd(%struct.file* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca %struct.cxusb_medion_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %12)
  store %struct.dvb_usb_device* %13, %struct.dvb_usb_device** %8, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 0
  %16 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %15, align 8
  store %struct.cxusb_medion_dev* %16, %struct.cxusb_medion_dev** %9, align 8
  %17 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %18 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @V4L2_STD_PAL, align 8
  store i64 %22, i64* %10, align 8
  br label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @V4L2_STD_ALL, align 8
  store i64 %24, i64* %10, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %27 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @video, align 4
  %30 = load i32, i32* @querystd, align 4
  %31 = load i64*, i64** %7, align 8
  %32 = call i32 @v4l2_subdev_call(i32 %28, i32 %29, i32 %30, i64* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %37 = load i32, i32* @OPS, align 4
  %38 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %39 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (%struct.dvb_usb_device*, i32, i8*, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %36, i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %58

44:                                               ; preds = %25
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %46 = load i32, i32* @OPS, align 4
  %47 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %9, align 8
  %48 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.dvb_usb_device*, i32, i8*, i32, ...) @cxusb_vprintk(%struct.dvb_usb_device* %45, i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, %54
  store i64 %57, i64* %55, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %44, %35
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i64*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
