; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_usb_shark_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_usb_shark_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.shark_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_shark_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_shark_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.shark_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.v4l2_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.v4l2_device* %6, %struct.v4l2_device** %3, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %8 = call %struct.shark_device* @v4l2_dev_to_shark(%struct.v4l2_device* %7)
  store %struct.shark_device* %8, %struct.shark_device** %4, align 8
  %9 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %10 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %14 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %13, i32 0, i32 0
  %15 = call i32 @v4l2_device_disconnect(i32* %14)
  %16 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %17 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %16, i32 0, i32 1
  %18 = call i32 @radio_tea5777_exit(%struct.TYPE_2__* %17)
  %19 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %20 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %24 = call i32 @shark_unregister_leds(%struct.shark_device* %23)
  %25 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %26 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %25, i32 0, i32 0
  %27 = call i32 @v4l2_device_put(i32* %26)
  ret void
}

declare dso_local %struct.v4l2_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.shark_device* @v4l2_dev_to_shark(%struct.v4l2_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @radio_tea5777_exit(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @shark_unregister_leds(%struct.shark_device*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
