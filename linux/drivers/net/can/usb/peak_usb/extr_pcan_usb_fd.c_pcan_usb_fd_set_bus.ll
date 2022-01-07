; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.pucan_command = type { i32 }

@PUCAN_CMD_RESET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i64)* @pcan_usb_fd_set_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_bus(%struct.peak_usb_device* %0, i64 %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pucan_command*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %9 = call i64* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %8)
  store i64* %9, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 @pcan_usb_fd_build_restart_cmd(%struct.peak_usb_device* %13, i64* %14)
  store i32 %15, i32* %6, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i64*, i64** %5, align 8
  %18 = bitcast i64* %17 to %struct.pucan_command*
  store %struct.pucan_command* %18, %struct.pucan_command** %7, align 8
  %19 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PUCAN_CMD_RESET_MODE, align 4
  %23 = call i32 @pucan_cmd_opcode_channel(i32 %21, i32 %22)
  %24 = load %struct.pucan_command*, %struct.pucan_command** %7, align 8
  %25 = getelementptr inbounds %struct.pucan_command, %struct.pucan_command* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 4, i32* %6, align 4
  br label %26

26:                                               ; preds = %16, %12
  %27 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %27, i64* %31)
  ret i32 %32
}

declare dso_local i64* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pcan_usb_fd_build_restart_cmd(%struct.peak_usb_device*, i64*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
