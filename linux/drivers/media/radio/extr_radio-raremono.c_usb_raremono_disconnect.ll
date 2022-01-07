; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-raremono.c_usb_raremono_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-raremono.c_usb_raremono_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.raremono_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Thanko's Raremono disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @usb_raremono_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_raremono_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.raremono_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call i32 @usb_get_intfdata(%struct.usb_interface* %4)
  %6 = call %struct.raremono_device* @to_raremono_dev(i32 %5)
  store %struct.raremono_device* %6, %struct.raremono_device** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  %9 = call i32 @dev_info(i32* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.raremono_device*, %struct.raremono_device** %3, align 8
  %11 = getelementptr inbounds %struct.raremono_device, %struct.raremono_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %14 = call i32 @usb_set_intfdata(%struct.usb_interface* %13, i32* null)
  %15 = load %struct.raremono_device*, %struct.raremono_device** %3, align 8
  %16 = getelementptr inbounds %struct.raremono_device, %struct.raremono_device* %15, i32 0, i32 2
  %17 = call i32 @video_unregister_device(i32* %16)
  %18 = load %struct.raremono_device*, %struct.raremono_device** %3, align 8
  %19 = getelementptr inbounds %struct.raremono_device, %struct.raremono_device* %18, i32 0, i32 0
  %20 = call i32 @v4l2_device_disconnect(i32* %19)
  %21 = load %struct.raremono_device*, %struct.raremono_device** %3, align 8
  %22 = getelementptr inbounds %struct.raremono_device, %struct.raremono_device* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.raremono_device*, %struct.raremono_device** %3, align 8
  %25 = getelementptr inbounds %struct.raremono_device, %struct.raremono_device* %24, i32 0, i32 0
  %26 = call i32 @v4l2_device_put(i32* %25)
  ret void
}

declare dso_local %struct.raremono_device* @to_raremono_dev(i32) #1

declare dso_local i32 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

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
