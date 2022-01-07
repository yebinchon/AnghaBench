; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32 }
%struct.dvb_usb_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"Medion 95700\00", align 1
@videocaps = common dso_local global i32 0, align 4
@radiocaps = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @cxusb_medion_v_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_v_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.dvb_usb_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %7, align 8
  %10 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strscpy(i32 %12, i8* %20, i32 4)
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strscpy(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_make_path(%struct.TYPE_6__* %28, i32 %31, i32 4)
  %33 = load i32, i32* @videocaps, align 4
  %34 = load i32, i32* @radiocaps, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
