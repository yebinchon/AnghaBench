; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_set_led_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_set_led_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32* }

@EAGAIN = common dso_local global i32 0, align 4
@SET_LED_TIMER_DIVIDER_VENDOR_REQUEST = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32)* @technisat_usb2_set_led_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_set_led_timer(%struct.dvb_usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.technisat_usb2_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 2
  %13 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %12, align 8
  store %struct.technisat_usb2_state* %13, %struct.technisat_usb2_state** %8, align 8
  %14 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %8, align 8
  %15 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %48

26:                                               ; preds = %3
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_sndctrlpipe(i32 %32, i32 0)
  %34 = load i32, i32* @SET_LED_TIMER_DIVIDER_VENDOR_REQUEST, align 4
  %35 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %36 = load i32, i32* @USB_DIR_OUT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @usb_control_msg(i32 %29, i32 %33, i32 %34, i32 %37, i32 %41, i32 0, i32* %42, i32 1, i32 500)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %26, %23
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
