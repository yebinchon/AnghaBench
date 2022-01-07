; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_restart_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_restart_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32 }
%struct.urb = type { i32 }
%struct.pcan_usb_pro_msg = type { i32 }

@PCAN_USB_MAX_CMD_LEN = common dso_local global i32 0, align 4
@PCAN_USBPRO_SETBUSACT = common dso_local global i32 0, align 4
@PCAN_USBPRO_EP_CMDOUT = common dso_local global i32 0, align 4
@pcan_usb_pro_restart_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.urb*, i32*)* @pcan_usb_pro_restart_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_restart_async(%struct.peak_usb_device* %0, %struct.urb* %1, i32* %2) #0 {
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pcan_usb_pro_msg, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @PCAN_USB_MAX_CMD_LEN, align 4
  %10 = call i32 @pcan_msg_init_empty(%struct.pcan_usb_pro_msg* %7, i32* %8, i32 %9)
  %11 = load i32, i32* @PCAN_USBPRO_SETBUSACT, align 4
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg* %7, i32 %11, i32 %14, i32 1)
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCAN_USBPRO_EP_CMDOUT, align 4
  %24 = call i32 @usb_sndbulkpipe(i32 %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @PCAN_USB_MAX_CMD_LEN, align 4
  %27 = load i32, i32* @pcan_usb_pro_restart_complete, align 4
  %28 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %29 = call i32 @usb_fill_bulk_urb(%struct.urb* %16, i32 %19, i32 %24, i32* %25, i32 %26, i32 %27, %struct.peak_usb_device* %28)
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32 @usb_submit_urb(%struct.urb* %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @pcan_msg_init_empty(%struct.pcan_usb_pro_msg*, i32*, i32) #1

declare dso_local i32 @pcan_msg_add_rec(%struct.pcan_usb_pro_msg*, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.peak_usb_device*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
