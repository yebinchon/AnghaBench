; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_frontend_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_frontend_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.zd1301_dev = type { %struct.platform_device*, %struct.i2c_client* }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @zd1301_frontend_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_frontend_detach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.zd1301_dev*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %9 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %8)
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %3, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %11 = call %struct.zd1301_dev* @d_to_priv(%struct.dvb_usb_device* %10)
  store %struct.zd1301_dev* %11, %struct.zd1301_dev** %4, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  store %struct.usb_interface* %14, %struct.usb_interface** %5, align 8
  %15 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.zd1301_dev*, %struct.zd1301_dev** %4, align 8
  %19 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %18, i32 0, i32 1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %7, align 8
  %21 = load %struct.zd1301_dev*, %struct.zd1301_dev** %4, align 8
  %22 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %21, i32 0, i32 0
  %23 = load %struct.platform_device*, %struct.platform_device** %22, align 8
  store %struct.platform_device* %23, %struct.platform_device** %6, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @module_put(i32 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = call i32 @i2c_unregister_device(%struct.i2c_client* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = icmp ne %struct.platform_device* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @module_put(i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = call i32 @platform_device_unregister(%struct.platform_device* %47)
  br label %49

49:                                               ; preds = %39, %36
  ret i32 0
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.zd1301_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
