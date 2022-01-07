; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_set_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_set_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gs_can = type { i32, i32 }
%struct.gs_identify_mode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GS_CAN_IDENTIFY_ON = common dso_local global i32 0, align 4
@GS_CAN_IDENTIFY_OFF = common dso_local global i32 0, align 4
@GS_USB_BREQ_IDENTIFY = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @gs_usb_set_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_usb_set_identify(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_can*, align 8
  %7 = alloca %struct.gs_identify_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.gs_can* @netdev_priv(%struct.net_device* %9)
  store %struct.gs_can* %10, %struct.gs_can** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gs_identify_mode* @kmalloc(i32 4, i32 %11)
  store %struct.gs_identify_mode* %12, %struct.gs_identify_mode** %7, align 8
  %13 = load %struct.gs_identify_mode*, %struct.gs_identify_mode** %7, align 8
  %14 = icmp ne %struct.gs_identify_mode* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @GS_CAN_IDENTIFY_ON, align 4
  %23 = load %struct.gs_identify_mode*, %struct.gs_identify_mode** %7, align 8
  %24 = getelementptr inbounds %struct.gs_identify_mode, %struct.gs_identify_mode* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @GS_CAN_IDENTIFY_OFF, align 4
  %27 = load %struct.gs_identify_mode*, %struct.gs_identify_mode** %7, align 8
  %28 = getelementptr inbounds %struct.gs_identify_mode, %struct.gs_identify_mode* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %31 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @interface_to_usbdev(i32 %32)
  %34 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %35 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @interface_to_usbdev(i32 %36)
  %38 = call i32 @usb_sndctrlpipe(i32 %37, i32 0)
  %39 = load i32, i32* @GS_USB_BREQ_IDENTIFY, align 4
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.gs_can*, %struct.gs_can** %6, align 8
  %46 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gs_identify_mode*, %struct.gs_identify_mode** %7, align 8
  %49 = call i32 @usb_control_msg(i32 %33, i32 %38, i32 %39, i32 %44, i32 %47, i32 0, %struct.gs_identify_mode* %48, i32 4, i32 100)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.gs_identify_mode*, %struct.gs_identify_mode** %7, align 8
  %51 = call i32 @kfree(%struct.gs_identify_mode* %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  br label %57

55:                                               ; preds = %29
  %56 = load i32, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gs_identify_mode* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.gs_identify_mode*, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(%struct.gs_identify_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
