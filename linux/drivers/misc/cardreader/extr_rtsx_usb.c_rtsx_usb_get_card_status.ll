; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_card_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_card_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@polling_pipe = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTSX_USB_REQ_POLL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_get_card_status(%struct.rtsx_ucr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_ucr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %55

13:                                               ; preds = %2
  %14 = load i64, i64* @polling_pipe, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 4, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %16
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %26 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %29 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_rcvctrlpipe(i32 %30, i32 0)
  %32 = load i32, i32* @RTSX_USB_REQ_POLL, align 4
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @usb_control_msg(i32 %27, i32 %31, i32 %32, i32 %37, i32 0, i32 0, i32* %38, i32 2, i32 100)
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @kfree(i32* %43)
  br label %49

45:                                               ; preds = %13
  %46 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @rtsx_usb_get_status_with_bulk(%struct.rtsx_ucr* %46, i32* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %24
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %21, %10
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtsx_usb_get_status_with_bulk(%struct.rtsx_ucr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
