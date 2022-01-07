; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_usbvision = type { i64 }

@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@CODEC_WEBCAM = common dso_local global i64 0, align 8
@MAX_USB_WIDTH = common dso_local global i32 0, align 4
@MAX_USB_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbvision_setup(%struct.usb_usbvision* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %7 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CODEC_WEBCAM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %16 = call i32 @usbvision_init_webcam(%struct.usb_usbvision* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @usbvision_set_video_format(%struct.usb_usbvision* %18, i32 %19)
  %21 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %22 = call i32 @usbvision_set_dram_settings(%struct.usb_usbvision* %21)
  %23 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %24 = call i32 @usbvision_set_compress_params(%struct.usb_usbvision* %23)
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %26 = call i32 @usbvision_set_input(%struct.usb_usbvision* %25)
  %27 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %28 = load i32, i32* @MAX_USB_WIDTH, align 4
  %29 = load i32, i32* @MAX_USB_HEIGHT, align 4
  %30 = call i32 @usbvision_set_output(%struct.usb_usbvision* %27, i32 %28, i32 %29)
  %31 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %32 = call i32 @usbvision_restart_isoc(%struct.usb_usbvision* %31)
  %33 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %34 = call i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision* %33)
  ret i32 %34
}

declare dso_local i32 @usbvision_init_webcam(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_set_video_format(%struct.usb_usbvision*, i32) #1

declare dso_local i32 @usbvision_set_dram_settings(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_set_compress_params(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_set_input(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_set_output(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @usbvision_restart_isoc(%struct.usb_usbvision*) #1

declare dso_local i32 @USBVISION_IS_OPERATIONAL(%struct.usb_usbvision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
