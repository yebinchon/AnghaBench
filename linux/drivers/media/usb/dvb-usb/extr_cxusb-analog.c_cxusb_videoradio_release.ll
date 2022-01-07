; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_videoradio_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_videoradio_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i64 }
%struct.dvb_usb_device = type { i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"got release\0A\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cxusb_videoradio_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_videoradio_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.video_device* @video_devdata(%struct.file* %6)
  store %struct.video_device* %7, %struct.video_device** %3, align 8
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %4, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = load i32, i32* @OPS, align 4
  %12 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %10, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.video_device*, %struct.video_device** %3, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.file*, %struct.file** %2, align 8
  %20 = call i32 @vb2_fop_release(%struct.file* %19)
  store i32 %20, i32* %5, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = call i32 @v4l2_fh_release(%struct.file* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %26 = call i32 @cxusb_medion_put(%struct.dvb_usb_device* %25)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @vb2_fop_release(%struct.file*) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @cxusb_medion_put(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
