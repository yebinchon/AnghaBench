; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_drv_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_drv_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peak_usb_device = type { i32 }

@PCAN_USBPRO_FCT_DRVLD_REQ_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCAN_USBPRO_REQ_FCT = common dso_local global i32 0, align 4
@PCAN_USBPRO_FCT_DRVLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.peak_usb_device*, i32)* @pcan_usb_pro_drv_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_pro_drv_loaded(%struct.peak_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.peak_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.peak_usb_device* %0, %struct.peak_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PCAN_USBPRO_FCT_DRVLD_REQ_LEN, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32* @kzalloc(i32 %8, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.peak_usb_device*, %struct.peak_usb_device** %4, align 8
  %27 = load i32, i32* @PCAN_USBPRO_REQ_FCT, align 4
  %28 = load i32, i32* @PCAN_USBPRO_FCT_DRVLD, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @PCAN_USBPRO_FCT_DRVLD_REQ_LEN, align 4
  %31 = call i32 @pcan_usb_pro_send_req(%struct.peak_usb_device* %26, i32 %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @pcan_usb_pro_send_req(%struct.peak_usb_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
