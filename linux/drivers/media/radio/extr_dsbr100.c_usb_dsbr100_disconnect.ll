; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dsbr100_device = type { i32, i32, i32, i32, i32 }

@DSB100_ONOFF = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_dsbr100_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dsbr100_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dsbr100_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.dsbr100_device* %5, %struct.dsbr100_device** %3, align 8
  %6 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %7 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %10 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %13 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_rcvctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* @DSB100_ONOFF, align 4
  %17 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %18 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %23 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_control_msg(i32 %11, i32 %15, i32 %16, i32 %21, i32 0, i32 0, i32 %24, i32 8, i32 300)
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, i32* null)
  %28 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %29 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %28, i32 0, i32 2
  %30 = call i32 @video_unregister_device(i32* %29)
  %31 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %32 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %31, i32 0, i32 0
  %33 = call i32 @v4l2_device_disconnect(i32* %32)
  %34 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %35 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %38 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %37, i32 0, i32 0
  %39 = call i32 @v4l2_device_put(i32* %38)
  ret void
}

declare dso_local %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
