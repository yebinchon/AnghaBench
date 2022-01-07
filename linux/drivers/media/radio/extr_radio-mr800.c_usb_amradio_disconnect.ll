; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.amradio_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_amradio_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_amradio_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.amradio_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call i32 @usb_get_intfdata(%struct.usb_interface* %4)
  %6 = call %struct.amradio_device* @to_amradio_dev(i32 %5)
  store %struct.amradio_device* %6, %struct.amradio_device** %3, align 8
  %7 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %8 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %11 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %10, i32 0, i32 2
  %12 = call i32 @video_unregister_device(i32* %11)
  %13 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %14 = call i32 @amradio_set_mute(%struct.amradio_device* %13, i32 1)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = call i32 @usb_set_intfdata(%struct.usb_interface* %15, i32* null)
  %17 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %18 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %17, i32 0, i32 0
  %19 = call i32 @v4l2_device_disconnect(i32* %18)
  %20 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %21 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.amradio_device*, %struct.amradio_device** %3, align 8
  %24 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %23, i32 0, i32 0
  %25 = call i32 @v4l2_device_put(i32* %24)
  ret void
}

declare dso_local %struct.amradio_device* @to_amradio_dev(i32) #1

declare dso_local i32 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @amradio_set_mute(%struct.amradio_device*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
