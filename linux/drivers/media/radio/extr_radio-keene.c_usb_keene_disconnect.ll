; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_usb_keene_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-keene.c_usb_keene_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.keene_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_keene_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_keene_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.keene_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call i32 @usb_get_intfdata(%struct.usb_interface* %4)
  %6 = call %struct.keene_device* @to_keene_dev(i32 %5)
  store %struct.keene_device* %6, %struct.keene_device** %3, align 8
  %7 = load %struct.keene_device*, %struct.keene_device** %3, align 8
  %8 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.keene_device*, %struct.keene_device** %3, align 8
  %13 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %12, i32 0, i32 2
  %14 = call i32 @video_unregister_device(i32* %13)
  %15 = load %struct.keene_device*, %struct.keene_device** %3, align 8
  %16 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %15, i32 0, i32 0
  %17 = call i32 @v4l2_device_disconnect(i32* %16)
  %18 = load %struct.keene_device*, %struct.keene_device** %3, align 8
  %19 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %18, i32 0, i32 1
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.keene_device*, %struct.keene_device** %3, align 8
  %22 = getelementptr inbounds %struct.keene_device, %struct.keene_device* %21, i32 0, i32 0
  %23 = call i32 @v4l2_device_put(i32* %22)
  ret void
}

declare dso_local %struct.keene_device* @to_keene_dev(i32) #1

declare dso_local i32 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

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
