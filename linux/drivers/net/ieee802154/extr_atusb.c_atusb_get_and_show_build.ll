; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_get_and_show_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_atusb_get_and_show_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atusb = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@ATUSB_BUILD_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATUSB_BUILD = common dso_local global i32 0, align 4
@ATUSB_REQ_FROM_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Firmware: build %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atusb*)* @atusb_get_and_show_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atusb_get_and_show_build(%struct.atusb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atusb*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.atusb* %0, %struct.atusb** %3, align 8
  %7 = load %struct.atusb*, %struct.atusb** %3, align 8
  %8 = getelementptr inbounds %struct.atusb, %struct.atusb* %7, i32 0, i32 0
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %4, align 8
  %10 = load i64, i64* @ATUSB_BUILD_SIZE, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i64 %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.atusb*, %struct.atusb** %3, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %21, i32 0)
  %23 = load i32, i32* @ATUSB_BUILD, align 4
  %24 = load i32, i32* @ATUSB_REQ_FROM_DEV, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* @ATUSB_BUILD_SIZE, align 8
  %27 = call i32 @atusb_control_msg(%struct.atusb* %20, i32 %22, i32 %23, i32 %24, i32 0, i32 0, i8* %25, i64 %26, i32 1000)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %30, %19
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @atusb_control_msg(%struct.atusb*, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
