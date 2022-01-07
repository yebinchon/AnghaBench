; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_cmd_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_cmd_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_can = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.gs_device_mode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GS_CAN_MODE_RESET = common dso_local global i32 0, align 4
@GS_USB_BREQ_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_can*)* @gs_cmd_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_cmd_reset(%struct.gs_can* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_can*, align 8
  %4 = alloca %struct.gs_device_mode*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.gs_can* %0, %struct.gs_can** %3, align 8
  %7 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %8 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %7, i32 0, i32 1
  %9 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  store %struct.usb_interface* %9, %struct.usb_interface** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gs_device_mode* @kzalloc(i32 4, i32 %10)
  store %struct.gs_device_mode* %11, %struct.gs_device_mode** %4, align 8
  %12 = load %struct.gs_device_mode*, %struct.gs_device_mode** %4, align 8
  %13 = icmp ne %struct.gs_device_mode* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load i32, i32* @GS_CAN_MODE_RESET, align 4
  %19 = load %struct.gs_device_mode*, %struct.gs_device_mode** %4, align 8
  %20 = getelementptr inbounds %struct.gs_device_mode, %struct.gs_device_mode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %22 = call i32 @interface_to_usbdev(%struct.usb_interface* %21)
  %23 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %24 = call i32 @interface_to_usbdev(%struct.usb_interface* %23)
  %25 = call i32 @usb_sndctrlpipe(i32 %24, i32 0)
  %26 = load i32, i32* @GS_USB_BREQ_MODE, align 4
  %27 = load i32, i32* @USB_DIR_OUT, align 4
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.gs_can*, %struct.gs_can** %3, align 8
  %33 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gs_device_mode*, %struct.gs_device_mode** %4, align 8
  %36 = call i32 @usb_control_msg(i32 %22, i32 %25, i32 %26, i32 %31, i32 %34, i32 0, %struct.gs_device_mode* %35, i32 4, i32 1000)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.gs_device_mode*, %struct.gs_device_mode** %4, align 8
  %38 = call i32 @kfree(%struct.gs_device_mode* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %17, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.gs_device_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_device_mode*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(%struct.gs_device_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
