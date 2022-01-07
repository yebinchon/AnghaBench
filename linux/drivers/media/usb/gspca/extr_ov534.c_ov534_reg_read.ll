; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_ov534_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534.c_ov534_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i64*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@CTRL_TIMEOUT = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GET 01 0000 %04x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"read failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.gspca_dev*, i32)* @ov534_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ov534_reg_read(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 2
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %58

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @USB_DIR_IN, align 4
  %21 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* @CTRL_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(%struct.usb_device* %17, i32 %19, i32 1, i32 %24, i32 0, i32 %25, i64* %28, i32 1, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = load i32, i32* @D_USBI, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @gspca_dbg(%struct.gspca_dev* %31, i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %16
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %42, %16
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %52, %15
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
