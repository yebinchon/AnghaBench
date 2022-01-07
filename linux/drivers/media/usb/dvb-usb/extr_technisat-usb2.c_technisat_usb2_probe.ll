; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.dvb_usb_device = type { %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32, %struct.dvb_usb_device* }

@technisat_usb2_devices = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@disable_led_control = common dso_local global i32 0, align 4
@technisat_usb2_green_led_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @technisat_usb2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @technisat_usb2_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.technisat_usb2_state*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load i32, i32* @adapter_nr, align 4
  %11 = call i64 @dvb_usb_device_init(%struct.usb_interface* %8, i32* @technisat_usb2_devices, i32 %9, %struct.dvb_usb_device** %6, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %18 = icmp ne %struct.dvb_usb_device* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %21, align 8
  store %struct.technisat_usb2_state* %22, %struct.technisat_usb2_state** %7, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %24 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %7, align 8
  %25 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %24, i32 0, i32 1
  store %struct.dvb_usb_device* %23, %struct.dvb_usb_device** %25, align 8
  %26 = load i32, i32* @disable_led_control, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %19
  %29 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %7, align 8
  %30 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %29, i32 0, i32 0
  %31 = load i32, i32* @technisat_usb2_green_led_control, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %7, align 8
  %34 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %33, i32 0, i32 0
  %35 = call i32 @msecs_to_jiffies(i32 500)
  %36 = call i32 @schedule_delayed_work(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %19
  br label %38

38:                                               ; preds = %37, %16
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @dvb_usb_device_init(%struct.usb_interface*, i32*, i32, %struct.dvb_usb_device**, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
