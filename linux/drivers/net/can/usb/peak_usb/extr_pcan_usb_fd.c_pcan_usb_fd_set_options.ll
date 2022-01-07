; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }
%struct.pcan_ufd_options = type { i8*, i8*, i32 }

@PUCAN_CMD_SET_EN_OPTION = common dso_local global i32 0, align 4
@PUCAN_CMD_CLR_DIS_OPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32, i32, i32)* @pcan_usb_fd_set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_set_options(%struct.peak_usb_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.peak_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcan_ufd_options*, align 8
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %11 = call %struct.pcan_ufd_options* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %10)
  store %struct.pcan_ufd_options* %11, %struct.pcan_ufd_options** %9, align 8
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @PUCAN_CMD_SET_EN_OPTION, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @PUCAN_CMD_CLR_DIS_OPTION, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @pucan_cmd_opcode_channel(i32 %14, i32 %22)
  %24 = load %struct.pcan_ufd_options*, %struct.pcan_ufd_options** %9, align 8
  %25 = getelementptr inbounds %struct.pcan_ufd_options, %struct.pcan_ufd_options* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.pcan_ufd_options*, %struct.pcan_ufd_options** %9, align 8
  %29 = getelementptr inbounds %struct.pcan_ufd_options, %struct.pcan_ufd_options* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.pcan_ufd_options*, %struct.pcan_ufd_options** %9, align 8
  %33 = getelementptr inbounds %struct.pcan_ufd_options, %struct.pcan_ufd_options* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.peak_usb_device*, %struct.peak_usb_device** %5, align 8
  %35 = load %struct.pcan_ufd_options*, %struct.pcan_ufd_options** %9, align 8
  %36 = getelementptr inbounds %struct.pcan_ufd_options, %struct.pcan_ufd_options* %35, i32 1
  store %struct.pcan_ufd_options* %36, %struct.pcan_ufd_options** %9, align 8
  %37 = call i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %34, %struct.pcan_ufd_options* %36)
  ret i32 %37
}

declare dso_local %struct.pcan_ufd_options* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @pucan_cmd_opcode_channel(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device*, %struct.pcan_ufd_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
