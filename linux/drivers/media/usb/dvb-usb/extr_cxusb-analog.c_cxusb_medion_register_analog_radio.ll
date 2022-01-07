; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_register_analog_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_6__*, %struct.cxusb_medion_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.cxusb_medion_dev = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32 (%struct.TYPE_7__*)*, i32*, i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"radio device alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@radiocaps = common dso_local global i32 0, align 4
@cxusb_radio_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cxusb\00", align 1
@VFL_DIR_RX = common dso_local global i32 0, align 4
@cxusb_radio_ioctl = common dso_local global i32 0, align 4
@VFL_TYPE_RADIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"radio device register failed, ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @cxusb_medion_register_analog_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_register_analog_radio(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %6, i32 0, i32 1
  %8 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %7, align 8
  store %struct.cxusb_medion_dev* %8, %struct.cxusb_medion_dev** %4, align 8
  %9 = call %struct.TYPE_7__* (...) @video_device_alloc()
  %10 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %11 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %10, i32 0, i32 0
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %90

24:                                               ; preds = %1
  %25 = load i32, i32* @radiocaps, align 4
  %26 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %27 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  store i32 %25, i32* %29, align 8
  %30 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  store i32* @cxusb_radio_fops, i32** %33, align 8
  %34 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %35 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %34, i32 0, i32 2
  %36 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %37 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i32* %35, i32** %39, align 8
  %40 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %41 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strscpy(i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %46 = load i32, i32* @VFL_DIR_RX, align 4
  %47 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i32 %46, i32* %50, align 8
  %51 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %52 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32* @cxusb_radio_ioctl, i32** %54, align 8
  %55 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %56 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 (%struct.TYPE_7__*)* @video_device_release, i32 (%struct.TYPE_7__*)** %58, align 8
  %59 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %60 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %59, i32 0, i32 1
  %61 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %62 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32* %60, i32** %64, align 8
  %65 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %66 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %69 = call i32 @video_set_drvdata(%struct.TYPE_7__* %67, %struct.dvb_usb_device* %68)
  %70 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %71 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* @VFL_TYPE_RADIO, align 4
  %74 = call i32 @video_register_device(%struct.TYPE_7__* %72, i32 %73, i32 -1)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %24
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %5, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %85 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = call i32 @video_device_release(%struct.TYPE_7__* %86)
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %77, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_7__* @video_device_alloc(...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @video_device_release(%struct.TYPE_7__*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_7__*, %struct.dvb_usb_device*) #1

declare dso_local i32 @video_register_device(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
