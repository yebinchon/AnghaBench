; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_unregister_analog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_unregister_analog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.cxusb_medion_dev* }
%struct.cxusb_medion_dev = type { i32, i32, i32, i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unregistering analog\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"analog unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxusb_medion_unregister_analog(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.cxusb_medion_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %4 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %4, i32 0, i32 0
  %6 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  store %struct.cxusb_medion_dev* %6, %struct.cxusb_medion_dev** %3, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %8 = load i32, i32* @OPS, align 4
  %9 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %7, i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @video_unregister_device(i32 %12)
  %14 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %15 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @video_unregister_device(i32 %16)
  %18 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %18, i32 0, i32 1
  %20 = call i32 @v4l2_device_put(i32* %19)
  %21 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %21, i32 0, i32 0
  %23 = call i32 @wait_for_completion(i32* %22)
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %25 = load i32, i32* @OPS, align 4
  %26 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %24, i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @video_unregister_device(i32) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
