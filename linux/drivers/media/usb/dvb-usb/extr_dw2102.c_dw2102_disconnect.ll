; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw2102_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvb_usb_device = type { i64 }
%struct.dw2102_state = type { %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @dw2102_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw2102_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.dw2102_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dw2102_state*
  store %struct.dw2102_state* %11, %struct.dw2102_state** %4, align 8
  %12 = load %struct.dw2102_state*, %struct.dw2102_state** %4, align 8
  %13 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = icmp ne %struct.i2c_client* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @module_put(i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %26 = call i32 @i2c_unregister_device(%struct.i2c_client* %25)
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.dw2102_state*, %struct.dw2102_state** %4, align 8
  %29 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %28, i32 0, i32 0
  %30 = load %struct.i2c_client*, %struct.i2c_client** %29, align 8
  store %struct.i2c_client* %30, %struct.i2c_client** %5, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = icmp ne %struct.i2c_client* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @module_put(i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = call i32 @i2c_unregister_device(%struct.i2c_client* %41)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %45 = call i32 @dvb_usb_device_exit(%struct.usb_interface* %44)
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
