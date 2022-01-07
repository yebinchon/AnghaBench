; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_technisat-usb2.c_technisat_usb2_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvb_usb_device = type { %struct.technisat_usb2_state* }
%struct.technisat_usb2_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @technisat_usb2_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @technisat_usb2_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.technisat_usb2_state*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.dvb_usb_device* %6, %struct.dvb_usb_device** %3, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = icmp ne %struct.dvb_usb_device* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %11, align 8
  store %struct.technisat_usb2_state* %12, %struct.technisat_usb2_state** %4, align 8
  %13 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %4, align 8
  %14 = icmp ne %struct.technisat_usb2_state* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.technisat_usb2_state*, %struct.technisat_usb2_state** %4, align 8
  %17 = getelementptr inbounds %struct.technisat_usb2_state, %struct.technisat_usb2_state* %16, i32 0, i32 0
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  br label %19

19:                                               ; preds = %15, %9
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %22 = call i32 @dvb_usb_device_exit(%struct.usb_interface* %21)
  ret void
}

declare dso_local %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dvb_usb_device_exit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
