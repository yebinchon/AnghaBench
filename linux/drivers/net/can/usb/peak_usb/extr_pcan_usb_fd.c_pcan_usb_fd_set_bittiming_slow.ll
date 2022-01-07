; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bittiming_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_bittiming_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming = type { i64, i64, i64, i64, i64 }
%struct.pucan_timing_slow = type { i32, i32, i32, i32, i32, i32 }

@PUCAN_CMD_TIMING_SLOW = common dso_local global i32 0, align 4
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, %struct.can_bittiming*)* @pcan_usb_fd_set_bittiming_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_bittiming_slow(%struct.peak_usb_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca %struct.peak_usb_device*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca %struct.pucan_timing_slow*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %3, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %4, align 8
  %6 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %7 = call %struct.pucan_timing_slow* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %6)
  store %struct.pucan_timing_slow* %7, %struct.pucan_timing_slow** %5, align 8
  %8 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PUCAN_CMD_TIMING_SLOW, align 4
  %12 = call i32 @pucan_cmd_opcode_channel(i32 %10, i32 %11)
  %13 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %14 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %16 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %24 = and i32 %22, %23
  %25 = call i32 @PUCAN_TSLOW_SJW_T(i64 %18, i32 %24)
  %26 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %27 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %29 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i32 @PUCAN_TSLOW_TSEG2(i64 %31)
  %33 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %34 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %36 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %39 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @PUCAN_TSLOW_TSEG1(i64 %42)
  %44 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %45 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %47 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @PUCAN_TSLOW_BRP(i64 %49)
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %53 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %55 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %54, i32 0, i32 0
  store i32 96, i32* %55, align 4
  %56 = load %struct.peak_usb_device*, %struct.peak_usb_device** %3, align 8
  %57 = load %struct.pucan_timing_slow*, %struct.pucan_timing_slow** %5, align 8
  %58 = getelementptr inbounds %struct.pucan_timing_slow, %struct.pucan_timing_slow* %57, i32 1
  store %struct.pucan_timing_slow* %58, %struct.pucan_timing_slow** %5, align 8
  %59 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %56, %struct.pucan_timing_slow* %58)
  ret i32 %59
}

declare dso_local %struct.pucan_timing_slow* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i32 @PUCAN_TSLOW_SJW_T(i64, i32) #1

declare dso_local i32 @PUCAN_TSLOW_TSEG2(i64) #1

declare dso_local i32 @PUCAN_TSLOW_TSEG1(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @PUCAN_TSLOW_BRP(i64) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, %struct.pucan_timing_slow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
