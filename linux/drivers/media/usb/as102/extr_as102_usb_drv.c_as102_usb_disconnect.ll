; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_usb_drv.c_as102_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.as102_dev_t = type { i32 }

@as102_usb_class_driver = common dso_local global i32 0, align 4
@as102_usb_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: device has been disconnected\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @as102_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as102_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.as102_dev_t*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.as102_dev_t* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.as102_dev_t* %5, %struct.as102_dev_t** %3, align 8
  %6 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %7 = call i32 @as102_dvb_unregister(%struct.as102_dev_t* %6)
  %8 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %9 = call i32 @as102_free_usb_stream_buffer(%struct.as102_dev_t* %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_deregister_dev(%struct.usb_interface* %12, i32* @as102_usb_class_driver)
  %14 = load %struct.as102_dev_t*, %struct.as102_dev_t** %3, align 8
  %15 = getelementptr inbounds %struct.as102_dev_t, %struct.as102_dev_t* %14, i32 0, i32 0
  %16 = load i32, i32* @as102_usb_release, align 4
  %17 = call i32 @kref_put(i32* %15, i32 %16)
  %18 = load i32, i32* @DRIVER_NAME, align 4
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local %struct.as102_dev_t* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @as102_dvb_unregister(%struct.as102_dev_t*) #1

declare dso_local i32 @as102_free_usb_stream_buffer(%struct.as102_dev_t*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_deregister_dev(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
