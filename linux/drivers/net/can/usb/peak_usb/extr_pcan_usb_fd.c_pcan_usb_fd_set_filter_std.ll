; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_filter_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_filter_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.pucan_filter_std = type { i32, i32, i32 }

@PUCAN_FLTSTD_ROW_IDX_BITS = common dso_local global i32 0, align 4
@PUCAN_CMD_FILTER_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32, i32)* @pcan_usb_fd_set_filter_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_filter_std(%struct.peak_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pucan_filter_std*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %11 = call %struct.pucan_filter_std* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %10)
  store %struct.pucan_filter_std* %11, %struct.pucan_filter_std** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PUCAN_FLTSTD_ROW_IDX_BITS, align 4
  %17 = shl i32 1, %16
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @PUCAN_FLTSTD_ROW_IDX_BITS, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %47, %25
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PUCAN_CMD_FILTER_STD, align 4
  %36 = call i32 @pucan_cmd_opcode_channel(i32 %34, i32 %35)
  %37 = load %struct.pucan_filter_std*, %struct.pucan_filter_std** %7, align 8
  %38 = getelementptr inbounds %struct.pucan_filter_std, %struct.pucan_filter_std* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.pucan_filter_std*, %struct.pucan_filter_std** %7, align 8
  %42 = getelementptr inbounds %struct.pucan_filter_std, %struct.pucan_filter_std* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.pucan_filter_std*, %struct.pucan_filter_std** %7, align 8
  %46 = getelementptr inbounds %struct.pucan_filter_std, %struct.pucan_filter_std* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pucan_filter_std*, %struct.pucan_filter_std** %7, align 8
  %51 = getelementptr inbounds %struct.pucan_filter_std, %struct.pucan_filter_std* %50, i32 1
  store %struct.pucan_filter_std* %51, %struct.pucan_filter_std** %7, align 8
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %54 = load %struct.pucan_filter_std*, %struct.pucan_filter_std** %7, align 8
  %55 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %53, %struct.pucan_filter_std* %54)
  ret i32 %55
}

declare dso_local %struct.pucan_filter_std* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, %struct.pucan_filter_std*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
