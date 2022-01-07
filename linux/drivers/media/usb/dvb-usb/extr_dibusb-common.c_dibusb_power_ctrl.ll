; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIBUSB_REQ_SET_IOCTL = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_CMD_POWER_MODE = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_POWER_WAKEUP = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_POWER_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kmalloc(i32 3, i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @DIBUSB_REQ_SET_IOCTL, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @DIBUSB_IOCTL_CMD_POWER_MODE, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @DIBUSB_IOCTL_POWER_WAKEUP, align 4
  br label %28

26:                                               ; preds = %15
  %27 = load i32, i32* @DIBUSB_IOCTL_POWER_SLEEP, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @dvb_usb_generic_write(%struct.dvb_usb_device* %32, i32* %33, i32 3)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = call i32 @msleep(i32 10)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %28, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dvb_usb_generic_write(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
