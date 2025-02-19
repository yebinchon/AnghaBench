; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb2_0_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb2_0_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIBUSB_REQ_SET_STREAMING_MODE = common dso_local global i32 0, align 4
@DIBUSB_REQ_SET_IOCTL = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_CMD_ENABLE_STREAM = common dso_local global i32 0, align 4
@DIBUSB_IOCTL_CMD_DISABLE_STREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb2_0_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kmalloc(i32 3, i32 %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dibusb_streaming_ctrl(%struct.dvb_usb_adapter* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %58

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* @DIBUSB_REQ_SET_STREAMING_MODE, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @dvb_usb_generic_write(i32 %32, i32* %33, i32 2)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %58

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* @DIBUSB_REQ_SET_IOCTL, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @DIBUSB_IOCTL_CMD_ENABLE_STREAM, align 4
  br label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @DIBUSB_IOCTL_CMD_DISABLE_STREAM, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @dvb_usb_generic_write(i32 %55, i32* %56, i32 3)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %49, %37, %20
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @kfree(i32* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dibusb_streaming_ctrl(%struct.dvb_usb_adapter*, i32) #1

declare dso_local i32 @dvb_usb_generic_write(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
