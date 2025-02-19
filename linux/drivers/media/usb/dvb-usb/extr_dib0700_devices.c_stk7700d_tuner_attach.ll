; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700d_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700d_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i64, %struct.TYPE_4__*, %struct.dib0700_adapter_state* }
%struct.TYPE_4__ = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i2c_adapter* (i32, i32, i32)* }
%struct.i2c_adapter = type { i32 }

@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@mt2266_attach = common dso_local global i32 0, align 4
@stk7700d_mt2266_config = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk7700d_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk7700d_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 2
  %7 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  store %struct.dib0700_adapter_state* %7, %struct.dib0700_adapter_state** %4, align 8
  %8 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %9 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.i2c_adapter* (i32, i32, i32)*, %struct.i2c_adapter* (i32, i32, i32)** %10, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %19 = call %struct.i2c_adapter* %11(i32 %17, i32 %18, i32 1)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %3, align 8
  %20 = load i32, i32* @mt2266_attach, align 4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = load i32*, i32** @stk7700d_mt2266_config, align 8
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = call i32* @dvb_attach(i32 %20, i32 %26, %struct.i2c_adapter* %27, i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  ret i32 %40
}

declare dso_local i32* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
