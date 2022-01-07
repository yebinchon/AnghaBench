; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usbnet = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @sierra_net_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_net_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %9 = call i32 @usbnet_probe(%struct.usb_interface* %7, %struct.usb_device_id* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %14 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %13)
  store %struct.usbnet* %14, %struct.usbnet** %6, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @usbnet_status_start(%struct.usbnet* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %22 = call i32 @sierra_net_dosync(%struct.usbnet* %21)
  br label %23

23:                                               ; preds = %20, %12
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @usbnet_probe(%struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_status_start(%struct.usbnet*, i32) #1

declare dso_local i32 @sierra_net_dosync(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
