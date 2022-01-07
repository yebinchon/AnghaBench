; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_send_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_send_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@CTRL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32, i8*, i32)* @send_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_control_msg(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %12, align 8
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmemdup(i8* %16, i32 %17, i32 %18)
  store i8* %19, i8** %15, align 8
  %20 = load i8*, i8** %15, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %44

25:                                               ; preds = %6
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %28 = call i32 @usb_sndctrlpipe(%struct.usb_device* %27, i32 0)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @USB_DIR_OUT, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @CTRL_TIMEOUT, align 4
  %40 = call i32 @usb_control_msg(%struct.usb_device* %26, i32 %28, i32 %29, i32 %34, i32 %35, i32 %36, i8* %37, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %25, %22
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
