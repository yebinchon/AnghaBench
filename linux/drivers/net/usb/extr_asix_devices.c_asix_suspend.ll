; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_asix_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { %struct.asix_common_private* }
%struct.asix_common_private = type { i32 (%struct.usbnet*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @asix_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asix_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.asix_common_private*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %5, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = load %struct.asix_common_private*, %struct.asix_common_private** %10, align 8
  store %struct.asix_common_private* %11, %struct.asix_common_private** %6, align 8
  %12 = load %struct.asix_common_private*, %struct.asix_common_private** %6, align 8
  %13 = icmp ne %struct.asix_common_private* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.asix_common_private*, %struct.asix_common_private** %6, align 8
  %16 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %15, i32 0, i32 0
  %17 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %16, align 8
  %18 = icmp ne i32 (%struct.usbnet*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.asix_common_private*, %struct.asix_common_private** %6, align 8
  %21 = getelementptr inbounds %struct.asix_common_private, %struct.asix_common_private* %20, i32 0, i32 0
  %22 = load i32 (%struct.usbnet*)*, i32 (%struct.usbnet*)** %21, align 8
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = call i32 %22(%struct.usbnet* %23)
  br label %25

25:                                               ; preds = %19, %14, %2
  %26 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @usbnet_suspend(%struct.usb_interface* %26, i32 %27)
  ret i32 %28
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
