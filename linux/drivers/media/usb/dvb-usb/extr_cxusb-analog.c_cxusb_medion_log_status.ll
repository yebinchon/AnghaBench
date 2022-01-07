; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32 }

@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @cxusb_medion_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.cxusb_medion_dev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.dvb_usb_device* @video_drvdata(%struct.file* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %5, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %10, align 8
  store %struct.cxusb_medion_dev* %11, %struct.cxusb_medion_dev** %6, align 8
  %12 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %6, align 8
  %13 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %12, i32 0, i32 0
  %14 = load i32, i32* @core, align 4
  %15 = load i32, i32* @log_status, align 4
  %16 = call i32 @v4l2_device_call_all(i32* %13, i32 0, i32 %14, i32 %15)
  ret i32 0
}

declare dso_local %struct.dvb_usb_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
