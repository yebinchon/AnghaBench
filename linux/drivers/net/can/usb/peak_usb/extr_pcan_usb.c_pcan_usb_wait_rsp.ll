; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_wait_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_wait_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i64, i32, i32 }

@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@PCAN_USB_EP_CMDIN = common dso_local global i32 0, align 4
@PCAN_USB_CMD_LEN = common dso_local global i32 0, align 4
@PCAN_USB_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"waiting rsp f=0x%x n=0x%x failure: %d\0A\00", align 1
@PCAN_USB_CMD_ARGS = common dso_local global i64 0, align 8
@PCAN_USB_CMD_ARGS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32, i32, i32*)* @pcan_usb_wait_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_wait_rsp(%struct.peak_usb_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.peak_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

19:                                               ; preds = %4
  %20 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pcan_usb_send_cmd(%struct.peak_usb_device* %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %68

28:                                               ; preds = %19
  %29 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %30 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %33 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCAN_USB_EP_CMDIN, align 4
  %36 = call i32 @usb_rcvbulkpipe(i32 %34, i32 %35)
  %37 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @PCAN_USB_CMD_LEN, align 4
  %41 = load i32, i32* @PCAN_USB_COMMAND_TIMEOUT, align 4
  %42 = call i32 @usb_bulk_msg(i32 %31, i32 %36, i64 %39, i32 %40, i32* %11, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %28
  %46 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %47 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @netdev_err(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %66

53:                                               ; preds = %28
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %59 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PCAN_USB_CMD_ARGS, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @PCAN_USB_CMD_ARGS_LEN, align 4
  %64 = call i32 @memcpy(i32* %57, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %53
  br label %66

66:                                               ; preds = %65, %45
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %26, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @pcan_usb_send_cmd(%struct.peak_usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
