; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_can_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_can_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.pcan_ufd_led = type { i32, i32 }

@PCAN_UFD_CMD_LED_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32)* @pcan_usb_fd_set_can_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_can_led(%struct.peak_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcan_ufd_led*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %7 = call %struct.pcan_ufd_led* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %6)
  store %struct.pcan_ufd_led* %7, %struct.pcan_ufd_led** %5, align 8
  %8 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCAN_UFD_CMD_LED_SET, align 4
  %12 = call i32 @pucan_cmd_opcode_channel(i32 %10, i32 %11)
  %13 = load %struct.pcan_ufd_led*, %struct.pcan_ufd_led** %5, align 8
  %14 = getelementptr inbounds %struct.pcan_ufd_led, %struct.pcan_ufd_led* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pcan_ufd_led*, %struct.pcan_ufd_led** %5, align 8
  %17 = getelementptr inbounds %struct.pcan_ufd_led, %struct.pcan_ufd_led* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %19 = load %struct.pcan_ufd_led*, %struct.pcan_ufd_led** %5, align 8
  %20 = getelementptr inbounds %struct.pcan_ufd_led, %struct.pcan_ufd_led* %19, i32 1
  store %struct.pcan_ufd_led* %20, %struct.pcan_ufd_led** %5, align 8
  %21 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %18, %struct.pcan_ufd_led* %20)
  ret i32 %21
}

declare dso_local %struct.pcan_ufd_led* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, %struct.pcan_ufd_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
