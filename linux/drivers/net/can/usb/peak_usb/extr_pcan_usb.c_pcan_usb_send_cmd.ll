; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32, i8**, i32 }

@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@PCAN_USB_CMD_FUNC = common dso_local global i64 0, align 8
@PCAN_USB_CMD_NUM = common dso_local global i64 0, align 8
@PCAN_USB_CMD_ARGS = common dso_local global i32 0, align 4
@PCAN_USB_CMD_ARGS_LEN = common dso_local global i32 0, align 4
@PCAN_USB_EP_CMDOUT = common dso_local global i32 0, align 4
@PCAN_USB_CMD_LEN = common dso_local global i32 0, align 4
@PCAN_USB_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sending cmd f=0x%x n=0x%x failure: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i8*, i8*, i8**)* @pcan_usb_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_send_cmd(%struct.peak_usb_device* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.peak_usb_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %21, i32 0, i32 2
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* @PCAN_USB_CMD_FUNC, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %28 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* @PCAN_USB_CMD_NUM, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8* %26, i8** %31, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %36 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %35, i32 0, i32 2
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* @PCAN_USB_CMD_ARGS, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8**, i8*** %9, align 8
  %42 = load i32, i32* @PCAN_USB_CMD_ARGS_LEN, align 4
  %43 = call i32 @memcpy(i8** %40, i8** %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %19
  %45 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %46 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PCAN_USB_EP_CMDOUT, align 4
  %52 = call i32 @usb_sndbulkpipe(i32 %50, i32 %51)
  %53 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %54 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* @PCAN_USB_CMD_LEN, align 4
  %57 = load i32, i32* @PCAN_USB_COMMAND_TIMEOUT, align 4
  %58 = call i32 @usb_bulk_msg(i32 %47, i32 %52, i8** %55, i32 %56, i32* %11, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %44
  %62 = load %struct.peak_usb_device*, %struct.peak_usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @netdev_err(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %44
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8**, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
