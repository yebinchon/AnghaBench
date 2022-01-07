; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bittiming_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bittiming_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }
%struct.pucan_timing_fast = type { i32, i32, i32, i32, i32 }

@PUCAN_CMD_TIMING_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.can_bittiming*)* @pcan_usb_fd_set_bittiming_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_bittiming_fast(%struct.peak_usb_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.pucan_timing_fast*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %6 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %7 = call %struct.pucan_timing_fast* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %6)
  store %struct.pucan_timing_fast* %7, %struct.pucan_timing_fast** %5, align 8
  %8 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PUCAN_CMD_TIMING_FAST, align 4
  %12 = call i32 @pucan_cmd_opcode_channel(i32 %10, i32 %11)
  %13 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %14 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %16 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @PUCAN_TFAST_SJW(i64 %18)
  %20 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %21 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %23 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @PUCAN_TFAST_TSEG2(i64 %25)
  %27 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %28 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %30 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %33 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @PUCAN_TFAST_TSEG1(i64 %36)
  %38 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %39 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %41 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @PUCAN_TFAST_BRP(i64 %43)
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %47 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %49 = load %struct.pucan_timing_fast*, %struct.pucan_timing_fast** %5, align 8
  %50 = getelementptr inbounds %struct.pucan_timing_fast, %struct.pucan_timing_fast* %49, i32 1
  store %struct.pucan_timing_fast* %50, %struct.pucan_timing_fast** %5, align 8
  %51 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %48, %struct.pucan_timing_fast* %50)
  ret i32 %51
}

declare dso_local %struct.pucan_timing_fast* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i32 @PUCAN_TFAST_SJW(i64) #1

declare dso_local i32 @PUCAN_TFAST_TSEG2(i64) #1

declare dso_local i32 @PUCAN_TFAST_TSEG1(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @PUCAN_TFAST_BRP(i64) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, %struct.pucan_timing_fast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
