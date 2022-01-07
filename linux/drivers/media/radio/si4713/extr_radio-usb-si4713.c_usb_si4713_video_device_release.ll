; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_usb_si4713_video_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_usb_si4713_video_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32 }
%struct.si4713_usb_device = type { %struct.si4713_usb_device*, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_device*)* @usb_si4713_video_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_si4713_video_device_release(%struct.v4l2_device* %0) #0 {
  %2 = alloca %struct.v4l2_device*, align 8
  %3 = alloca %struct.si4713_usb_device*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %2, align 8
  %5 = load %struct.v4l2_device*, %struct.v4l2_device** %2, align 8
  %6 = call %struct.si4713_usb_device* @to_si4713_dev(%struct.v4l2_device* %5)
  store %struct.si4713_usb_device* %6, %struct.si4713_usb_device** %3, align 8
  %7 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %7, i32 0, i32 2
  store %struct.i2c_adapter* %8, %struct.i2c_adapter** %4, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %10 = call i32 @i2c_del_adapter(%struct.i2c_adapter* %9)
  %11 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %11, i32 0, i32 1
  %13 = call i32 @v4l2_device_unregister(i32* %12)
  %14 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %15 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %14, i32 0, i32 0
  %16 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %15, align 8
  %17 = call i32 @kfree(%struct.si4713_usb_device* %16)
  %18 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %19 = call i32 @kfree(%struct.si4713_usb_device* %18)
  ret void
}

declare dso_local %struct.si4713_usb_device* @to_si4713_dev(%struct.v4l2_device*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.si4713_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
