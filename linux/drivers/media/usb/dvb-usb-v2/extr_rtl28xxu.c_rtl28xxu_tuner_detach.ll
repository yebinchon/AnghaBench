; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_tuner_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl28xxu_tuner_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rtl28xxu_dev = type { %struct.i2c_client*, %struct.platform_device* }
%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @rtl28xxu_tuner_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl28xxu_tuner_detach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.rtl28xxu_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %8 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %7)
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = call %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device* %9)
  store %struct.rtl28xxu_dev* %10, %struct.rtl28xxu_dev** %4, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %16, i32 0, i32 1
  %18 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = icmp ne %struct.platform_device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = call i32 @platform_device_unregister(%struct.platform_device* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %25, i32 0, i32 0
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  store %struct.i2c_client* %27, %struct.i2c_client** %5, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = icmp ne %struct.i2c_client* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @module_put(i32 %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %39 = call i32 @i2c_unregister_device(%struct.i2c_client* %38)
  br label %40

40:                                               ; preds = %30, %24
  ret i32 0
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
