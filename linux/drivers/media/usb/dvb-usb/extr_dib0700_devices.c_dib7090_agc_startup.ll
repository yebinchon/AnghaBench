; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib7090_agc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib7090_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dibx000_bandwidth_config = type { i32, i32 }
%struct.dibx090p_best_adc = type { i32, i32, i32 }

@DEMOD_TIMF_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib7090_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  %6 = alloca %struct.dibx000_bandwidth_config, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dibx090p_best_adc, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %13, align 8
  store %struct.dvb_usb_adapter* %14, %struct.dvb_usb_adapter** %4, align 8
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
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
  br label %70

28:                                               ; preds = %1
  %29 = call i32 @memset(%struct.dibx000_bandwidth_config* %6, i32 0, i32 8)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = call i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend* %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %33 = call i32 @dib0090_get_wbd_target(%struct.dvb_frontend* %32)
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %7, align 4
  %37 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %38 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %39, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 %40(%struct.dvb_frontend* %41, i32 %42)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %45 = call i64 @dib7090p_get_best_sampling(%struct.dvb_frontend* %44, %struct.dibx090p_best_adc* %8)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %8, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %6, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %55 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*)*, i32 (%struct.dvb_frontend*, %struct.dibx000_bandwidth_config*)** %56, align 8
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %59 = call i32 %57(%struct.dvb_frontend* %58, %struct.dibx000_bandwidth_config* %6)
  %60 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %61 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.dvb_frontend*, i32, i32)*, i32 (%struct.dvb_frontend*, i32, i32)** %62, align 8
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %65 = load i32, i32* @DEMOD_TIMF_SET, align 4
  %66 = getelementptr inbounds %struct.dibx090p_best_adc, %struct.dibx090p_best_adc* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %63(%struct.dvb_frontend* %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %47, %28
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.dibx000_bandwidth_config*, i32, i32) #1

declare dso_local i32 @dib0090_pwm_gain_reset(%struct.dvb_frontend*) #1

declare dso_local i32 @dib0090_get_wbd_target(%struct.dvb_frontend*) #1

declare dso_local i64 @dib7090p_get_best_sampling(%struct.dvb_frontend*, %struct.dibx090p_best_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
