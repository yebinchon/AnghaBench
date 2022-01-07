; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_send_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32, i32, i32 }

@PCAN_USB_STATE_CONNECTED = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"unable to request usb[type=%d value=%d] err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcan_usb_pro_send_req(%struct.peak_usb_device* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.peak_usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCAN_USB_STATE_CONNECTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

22:                                               ; preds = %5
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = load i32, i32* @USB_RECIP_OTHER, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %32 [
    i32 128, label %27
  ]

27:                                               ; preds = %22
  %28 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %29 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_sndctrlpipe(i32 %30, i32 0)
  store i32 %31, i32* %14, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %34 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_rcvctrlpipe(i32 %35, i32 0)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memset(i8* %40, i8 signext 0, i32 %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %45 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %54 = mul nsw i32 2, %53
  %55 = call i32 @usb_control_msg(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i8* %51, i32 %52, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %43
  %59 = load %struct.peak_usb_device*, %struct.peak_usb_device** %7, align 8
  %60 = getelementptr inbounds %struct.peak_usb_device, %struct.peak_usb_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @netdev_info(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %68

67:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %67, %58, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
