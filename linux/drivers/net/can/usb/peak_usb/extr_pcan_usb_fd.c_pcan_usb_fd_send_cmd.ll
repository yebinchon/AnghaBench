; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_fd.c_pcan_usb_fd_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@PCAN_UFD_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@PCAN_UFD_LOSPD_PKT_SIZE = common dso_local global i32 0, align 4
@PCAN_USBPRO_EP_CMDOUT = common dso_local global i32 0, align 4
@PCAN_UFD_CMD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sending command failure: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i8*)* @pcan_usb_fd_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_fd_send_cmd(%struct.peak_usb_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %12 = call i8* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* @PCAN_UFD_CMD_BUFFER_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 4
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @memset(i8* %34, i32 255, i32 4)
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %33, %20
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_SPEED_HIGH, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @PCAN_UFD_LOSPD_PKT_SIZE, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %40
  br label %59

59:                                               ; preds = %94, %58
  %60 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %61 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %64 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* @PCAN_USBPRO_EP_CMDOUT, align 4
  %67 = call i32 @usb_sndbulkpipe(%struct.TYPE_3__* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PCAN_UFD_CMD_TIMEOUT_MS, align 4
  %71 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %62, i32 %67, i32* %68, i32 %69, i32* null, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %76 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @netdev_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %97

80:                                               ; preds = %59
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @PCAN_UFD_LOSPD_PKT_SIZE, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %59, label %97

97:                                               ; preds = %94, %74
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @pcan_usb_fd_cmd_buffer(%struct.peak_usb_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
