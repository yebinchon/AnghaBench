; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_set_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-usb.c_si470x_set_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@usb_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"si470x_set_report: usb_control_msg returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i8*, i32)* @si470x_set_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_set_report(%struct.si470x_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %11 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %14 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_sndctrlpipe(i32 %15, i32 0)
  %17 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %18 = load i32, i32* @USB_TYPE_CLASS, align 4
  %19 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_DIR_OUT, align 4
  %22 = or i32 %20, %21
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @usb_timeout, align 4
  %29 = call i32 @usb_control_msg(i32 %12, i32 %16, i32 %17, i32 %22, i8 zeroext %25, i32 2, i8* %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %34 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %3
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i8 zeroext, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
