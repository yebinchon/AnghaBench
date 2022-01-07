; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvb_usb_device = type { %struct.dib0700_state* }
%struct.dib0700_state = type { %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @dib0700_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0700_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load %struct.dib0700_state*, %struct.dib0700_state** %9, align 8
  store %struct.dib0700_state* %10, %struct.dib0700_state** %4, align 8
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %12 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %11, i32 0, i32 1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = icmp ne %struct.i2c_client* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @module_put(i32 %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = call i32 @i2c_unregister_device(%struct.i2c_client* %24)
  br label %26

26:                                               ; preds = %16, %1
  %27 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %28 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %27, i32 0, i32 0
  %29 = load %struct.i2c_client*, %struct.i2c_client** %28, align 8
  store %struct.i2c_client* %29, %struct.i2c_client** %5, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = icmp ne %struct.i2c_client* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @module_put(i32 %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = call i32 @i2c_unregister_device(%struct.i2c_client* %40)
  br label %42

42:                                               ; preds = %32, %26
  %43 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %44 = call i32 @dvb_usb_device_exit(%struct.usb_interface* %43)
  ret void
}

declare dso_local %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @dvb_usb_device_exit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
