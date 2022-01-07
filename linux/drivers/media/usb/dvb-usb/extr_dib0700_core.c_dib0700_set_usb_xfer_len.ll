; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_usb_xfer_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_usb_xfer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@EINTR = common dso_local global i32 0, align 4
@REQUEST_SET_USB_XFER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"set the USB xfer len to %i Ts packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"this firmware does not allow to change the USB xfer len\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @dib0700_set_usb_xfer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_set_usb_xfer_len(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib0700_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 1
  %10 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  store %struct.dib0700_state* %10, %struct.dib0700_state** %6, align 8
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %12 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 66049
  br i1 %14, label %15, label %53

15:                                               ; preds = %2
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 0
  %18 = call i64 @mutex_lock_interruptible(i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINTR, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %15
  %25 = load i32, i32* @REQUEST_SET_USB_XFER_LEN, align 4
  %26 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %27 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %34 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %40 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %46 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %47 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %45, i32* %48, i32 3)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %57

53:                                               ; preds = %2
  %54 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %24
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
