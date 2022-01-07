; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_ep0_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_ep0_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EP0_READ_REG_CMD = common dso_local global i32 0, align 4
@EP0_OP_SHIFT = common dso_local global i32 0, align 4
@RTSX_USB_REQ_REG_OP = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_ep0_read_register(%struct.rtsx_ucr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load i32, i32* @EP0_READ_REG_CMD, align 4
  %26 = load i32, i32* @EP0_OP_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @swab16(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %33 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %36 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_rcvctrlpipe(i32 %37, i32 0)
  %39 = load i32, i32* @RTSX_USB_REQ_REG_OP, align 4
  %40 = load i32, i32* @USB_DIR_IN, align 4
  %41 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @usb_control_msg(i32 %34, i32 %38, i32 %39, i32 %44, i32 %45, i32 0, i32* %46, i32 1, i32 100)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %21, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
