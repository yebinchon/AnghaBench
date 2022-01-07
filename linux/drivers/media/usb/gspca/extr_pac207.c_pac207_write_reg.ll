; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_pac207_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_pac207_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.usb_device* }
%struct.usb_device = type { i32 }

@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@PAC207_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Failed to write a register (index 0x%04X, value 0x%02X, error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @pac207_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pac207_write_reg(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 1
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %40

17:                                               ; preds = %3
  %18 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* @USB_DIR_OUT, align 4
  %22 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PAC207_CTRL_TIMEOUT, align 4
  %29 = call i32 @usb_control_msg(%struct.usb_device* %18, i32 %20, i32 0, i32 %25, i32 %26, i32 %27, i32* null, i32 0, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %16, %32, %17
  ret void
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
