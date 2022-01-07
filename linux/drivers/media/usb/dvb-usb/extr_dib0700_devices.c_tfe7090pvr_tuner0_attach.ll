; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe7090pvr_tuner0_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_tfe7090pvr_tuner0_attach.c"
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

@tfe7090pvr_dib0090_config = common dso_local global %struct.TYPE_14__* null, align 8
@dib0090_register = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dib7090_agc_startup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @tfe7090pvr_tuner0_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfe7090pvr_tuner0_attach(%struct.dvb_usb_adapter* %0) #0 {
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
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tfe7090pvr_dib0090_config, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %28 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tfe7090pvr_dib0090_config, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %35 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tfe7090pvr_dib0090_config, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @dib0090_register, align 4
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @tfe7090pvr_dib0090_config, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 0
  %51 = call i32* @dvb_attach(i32 %41, %struct.TYPE_15__* %47, %struct.i2c_adapter* %48, %struct.TYPE_14__* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %1
  %57 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %58 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_15__*, i32, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32, i32)** %59, align 8
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = call i32 %60(%struct.TYPE_15__* %66, i32 8, i32 0, i32 1)
  %68 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %79 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @dib7090_agc_startup, align 4
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %80, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %56, %53
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32* @dvb_attach(i32, %struct.TYPE_15__*, %struct.i2c_adapter*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
