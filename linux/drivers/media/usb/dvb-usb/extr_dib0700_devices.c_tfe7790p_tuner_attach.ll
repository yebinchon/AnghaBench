; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe7790p_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe7790p_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.dvb_usb_adapter = type { %struct.TYPE_13__*, %struct.dib0700_adapter_state* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.dib0700_adapter_state = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_15__*, i32, i32, i32)*, i32, i32, %struct.i2c_adapter* (%struct.TYPE_15__*)* }
%struct.i2c_adapter = type { i32 }

@tfe7790p_dib0090_config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dib0090_register = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dib7090_agc_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @tfe7790p_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfe7790p_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %7, align 8
  store %struct.dib0700_adapter_state* %8, %struct.dib0700_adapter_state** %4, align 8
  %9 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %10 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load %struct.i2c_adapter* (%struct.TYPE_15__*)*, %struct.i2c_adapter* (%struct.TYPE_15__*)** %11, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = call %struct.i2c_adapter* %12(%struct.TYPE_15__* %18)
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %5, align 8
  %20 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %21 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tfe7790p_dib0090_config, i32 0, i32 2), align 4
  %24 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %25 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tfe7790p_dib0090_config, i32 0, i32 1), align 4
  %28 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %29 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tfe7790p_dib0090_config, i32 0, i32 0), align 4
  %32 = load i32, i32* @dib0090_register, align 4
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %40 = call i32* @dvb_attach(i32 %32, %struct.TYPE_15__* %38, %struct.i2c_adapter* %39, %struct.TYPE_14__* @tfe7790p_dib0090_config)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %79

45:                                               ; preds = %1
  %46 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %47 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_15__*, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32)** %48, align 8
  %50 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = call i32 %49(%struct.TYPE_15__* %55, i32 8, i32 0, i32 1)
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %68 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @dib7090_agc_startup, align 4
  %70 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 %69, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %45, %42
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32* @dvb_attach(i32, %struct.TYPE_15__*, %struct.i2c_adapter*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
