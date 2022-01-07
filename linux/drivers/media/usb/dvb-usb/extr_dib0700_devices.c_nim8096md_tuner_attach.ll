; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim8096md_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim8096md_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_8__*, %struct.dib0700_adapter_state* }
%struct.TYPE_8__ = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.dib0700_adapter_state = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i2c_adapter* (%struct.dvb_frontend*, i32, i32)*, %struct.dvb_frontend* (%struct.dvb_frontend*, i32)* }
%struct.i2c_adapter = type { i32 }

@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@dib0090_register = common dso_local global i32 0, align 4
@dib809x_dib0090_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dib8096_set_param_override = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @nim8096md_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nim8096md_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %8, align 8
  store %struct.dib0700_adapter_state* %9, %struct.dib0700_adapter_state** %4, align 8
  %10 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %11 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.dvb_frontend* (%struct.dvb_frontend*, i32)*, %struct.dvb_frontend* (%struct.dvb_frontend*, i32)** %12, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %18, align 8
  %20 = call %struct.dvb_frontend* %13(%struct.dvb_frontend* %19, i32 1)
  store %struct.dvb_frontend* %20, %struct.dvb_frontend** %6, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %22 = icmp ne %struct.dvb_frontend* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %1
  %24 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %25 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.i2c_adapter* (%struct.dvb_frontend*, i32, i32)*, %struct.i2c_adapter* (%struct.dvb_frontend*, i32, i32)** %26, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %29 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %30 = call %struct.i2c_adapter* %27(%struct.dvb_frontend* %28, i32 %29, i32 1)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %5, align 8
  %31 = load i32, i32* @dib0090_register, align 4
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %34 = call i32* @dvb_attach(i32 %31, %struct.dvb_frontend* %32, %struct.i2c_adapter* %33, i32* @dib809x_dib0090_config)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %23
  %40 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %44, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** @dib8096_set_param_override, align 8
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %39, %1
  %56 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %57 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.i2c_adapter* (%struct.dvb_frontend*, i32, i32)*, %struct.i2c_adapter* (%struct.dvb_frontend*, i32, i32)** %58, align 8
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %64, align 8
  %66 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %67 = call %struct.i2c_adapter* %59(%struct.dvb_frontend* %65, i32 %66, i32 1)
  store %struct.i2c_adapter* %67, %struct.i2c_adapter** %5, align 8
  %68 = load i32, i32* @dib0090_register, align 4
  %69 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %73, align 8
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %76 = call i32* @dvb_attach(i32 %68, %struct.dvb_frontend* %74, %struct.i2c_adapter* %75, i32* @dib809x_dib0090_config)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %55
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %104

81:                                               ; preds = %55
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %86, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %93 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @dib8096_set_param_override, align 8
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %99, align 8
  %101 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i8* %94, i8** %103, align 8
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %81, %78, %36
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32* @dvb_attach(i32, %struct.dvb_frontend*, %struct.i2c_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
