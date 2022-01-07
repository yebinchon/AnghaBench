; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_au6610.c_au6610_usb_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_au6610.c_au6610_usb_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: wlen=%d, aborting\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@AU6610_USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32*, i32, i32*, i32)* @au6610_usb_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au6610_usb_msg(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 6, i32 %19)
  store i32* %20, i32** %18, align 8
  %21 = load i32*, i32** %18, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %99

26:                                               ; preds = %7
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %43 [
    i32 1, label %28
    i32 2, label %33
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  store i32 %32, i32* %17, align 4
  br label %53

33:                                               ; preds = %26
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 8
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %17, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %17, align 4
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* @KBUILD_MODNAME, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %16, align 4
  br label %95

53:                                               ; preds = %33, %28
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @usb_rcvctrlpipe(%struct.TYPE_4__* %59, i32 0)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %63 = load i32, i32* @USB_DIR_IN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %17, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* @AU6610_USB_TIMEOUT, align 4
  %70 = call i32 @usb_control_msg(%struct.TYPE_4__* %56, i32 %60, i32 %61, i32 %64, i32 %66, i32 %67, i32* %68, i32 6, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %76 = load i32, i32* @USB_DIR_IN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 1
  %80 = load i32, i32* %17, align 4
  %81 = load i32*, i32** %18, align 8
  %82 = call i32 @dvb_usb_dbg_usb_control_msg(%struct.TYPE_4__* %73, i32 %74, i32 %77, i32 %79, i32 %80, i32* %81, i32 6)
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %53
  br label %95

86:                                               ; preds = %53
  %87 = load i32, i32* %10, align 4
  switch i32 %87, label %94 [
    i32 129, label %88
    i32 128, label %88
  ]

88:                                               ; preds = %86, %86
  %89 = load i32*, i32** %18, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %86
  br label %95

95:                                               ; preds = %94, %85, %43
  %96 = load i32*, i32** %18, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %95, %23
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dvb_usb_dbg_usb_control_msg(%struct.TYPE_4__*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
