; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_usb_driver_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_usb_driver_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.si470x_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @si470x_usb_driver_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si470x_usb_driver_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.si470x_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.si470x_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.si470x_device* %5, %struct.si470x_device** %3, align 8
  %6 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %7 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 0
  %11 = call i32 @v4l2_device_disconnect(i32* %10)
  %12 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %13 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %12, i32 0, i32 3
  %14 = call i32 @video_unregister_device(i32* %13)
  %15 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %16 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_kill_urb(i32 %17)
  %19 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %20 = call i32 @usb_set_intfdata(%struct.usb_interface* %19, i32* null)
  %21 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %22 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.si470x_device*, %struct.si470x_device** %3, align 8
  %25 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %24, i32 0, i32 0
  %26 = call i32 @v4l2_device_put(i32* %25)
  ret void
}

declare dso_local %struct.si470x_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
