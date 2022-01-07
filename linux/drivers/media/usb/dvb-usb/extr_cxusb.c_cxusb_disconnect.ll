; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_6__, %struct.cxusb_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }
%struct.cxusb_state = type { %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@cxusb_table = common dso_local global i32* null, align 8
@MEDION_MD95700 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cxusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.cxusb_state*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 1
  %10 = load %struct.cxusb_state*, %struct.cxusb_state** %9, align 8
  store %struct.cxusb_state* %10, %struct.cxusb_state** %4, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @cxusb_table, align 8
  %21 = load i64, i64* @MEDION_MD95700, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = icmp eq i32* %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %26 = call i32 @cxusb_medion_unregister_analog(%struct.dvb_usb_device* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.cxusb_state*, %struct.cxusb_state** %4, align 8
  %29 = getelementptr inbounds %struct.cxusb_state, %struct.cxusb_state* %28, i32 0, i32 1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %29, align 8
  store %struct.i2c_client* %30, %struct.i2c_client** %5, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = icmp ne %struct.i2c_client* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @module_put(i32 %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %42 = call i32 @i2c_unregister_device(%struct.i2c_client* %41)
  br label %43

43:                                               ; preds = %33, %27
  %44 = load %struct.cxusb_state*, %struct.cxusb_state** %4, align 8
  %45 = getelementptr inbounds %struct.cxusb_state, %struct.cxusb_state* %44, i32 0, i32 0
  %46 = load %struct.i2c_client*, %struct.i2c_client** %45, align 8
  store %struct.i2c_client* %46, %struct.i2c_client** %5, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %48 = icmp ne %struct.i2c_client* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @module_put(i32 %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = call i32 @i2c_unregister_device(%struct.i2c_client* %57)
  br label %59

59:                                               ; preds = %49, %43
  %60 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %61 = call i32 @dvb_usb_device_exit(%struct.usb_interface* %60)
  ret void
}

declare dso_local %struct.dvb_usb_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @cxusb_medion_unregister_analog(%struct.dvb_usb_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @dvb_usb_device_exit(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
