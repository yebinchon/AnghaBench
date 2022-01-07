; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_videoradio_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_videoradio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dvb_usb_device = type { i32 }

@CXUSB_OPEN_ANALOG = common dso_local global i32 0, align 4
@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"got open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cxusb_videoradio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_videoradio_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %6)
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %4, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = load i32, i32* @CXUSB_OPEN_ANALOG, align 4
  %10 = call i32 @cxusb_medion_get(%struct.dvb_usb_device* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call i32 @v4l2_fh_open(%struct.file* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %25

21:                                               ; preds = %15
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = load i32, i32* @OPS, align 4
  %24 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %22, i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %27 = call i32 @cxusb_medion_put(%struct.dvb_usb_device* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %21, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cxusb_medion_get(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @cxusb_medion_put(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
