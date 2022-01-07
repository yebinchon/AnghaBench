; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096p_agc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib8096p_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i32, %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*, i32, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dibx000_bandwidth_config = type { i32, i32 }
%struct.dibx090p_best_adc = type { i32, i32, i32 }

@DEMOD_TIMF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8096p_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8096p_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  %6 = alloca %struct.dibx000_bandwidth_config, align 4
  %7 = alloca %struct.dibx090p_best_adc, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %13, align 8
  store %struct.dvb_usb_adapter* %14, %struct.dvb_usb_adapter** %4, align 8
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 1
  %17 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %16, align 8
  store %struct.dib0700_adapter_state* %17, %struct.dib0700_adapter_state** %5, align 8
  %18 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %19 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.dvb_frontend*)**
  %21 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %20, align 8
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %23 = call i32 %21(%struct.dvb_frontend* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %83

28:                                               ; preds = %1
  %29 = call i32 @memset(%struct.dibx000_bandwidth_config* %6, i32 0, i32 8)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = call i32 @dib0090_get_wbd_target(%struct.dvb_frontend* %32)
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %8, align 4
  %37 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %39, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 %40(%struct.dvb_frontend* %41, i32 %42)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %45 = call i64 @dib8096p_get_best_sampling(%struct.dvb_frontend* %44, %struct.dibx090p_best_adc* %7)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dib0700_set_i2c_speed(i32 %56, i32 200)
  %58 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %59 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*, i32, i32)*, i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*, i32, i32)** %60, align 8
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 1000
  %68 = call i32 %61(%struct.dvb_frontend* %62, %struct.dibx000_bandwidth_config* %6, i32 %67, i32 0)
  %69 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %70 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32)** %71, align 8
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %74 = load i32, i32* @DEMOD_TIMF_SET, align 4
  %75 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %7, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %72(%struct.dvb_frontend* %73, i32 %74, i32 %76)
  %78 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dib0700_set_i2c_speed(i32 %80, i32 1000)
  br label %82

82:                                               ; preds = %47, %28
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.dibx000_bandwidth_config*, i32, i32) #1

declare dso_local i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_get_wbd_target(%struct.dvb_frontend*) #1

declare dso_local i64 @dib8096p_get_best_sampling(%struct.dvb_frontend*, %struct.dibx090p_best_adc*) #1

declare dso_local i32 @dib0700_set_i2c_speed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
