; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32 }

@disable_led_control = common dso_local global i64 0, align 8
@TECH_LED_OFF = common dso_local global i32 0, align 4
@TECH_LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @technisat_usb2_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.technisat_usb2_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 0
  %9 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %8, align 8
  store %struct.technisat_usb2_state* %9, %struct.technisat_usb2_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %6, align 8
  %12 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i64, i64* @disable_led_control, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = load i32, i32* @TECH_LED_OFF, align 4
  %19 = call i32 @technisat_usb2_set_led(%struct.dvb_usb_device* %17, i32 0, i32 %18)
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %21 = load i32, i32* @TECH_LED_ON, align 4
  %22 = call i32 @technisat_usb2_set_led(%struct.dvb_usb_device* %20, i32 1, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @technisat_usb2_set_led(%struct.dvb_usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
