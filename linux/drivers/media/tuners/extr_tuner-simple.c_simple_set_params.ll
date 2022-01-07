; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tuner-simple.c_simple_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.analog_parameters = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @simple_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_set_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.analog_parameters*, align 8
  %6 = alloca %struct.tuner_simple_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  store %struct.tuner_simple_priv* %10, %struct.tuner_simple_priv** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %14 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %50 [
    i32 128, label %25
    i32 130, label %38
    i32 129, label %38
  ]

25:                                               ; preds = %21
  %26 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %27 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %30 = call i32 @simple_set_radio_freq(%struct.dvb_frontend* %28, %struct.analog_parameters* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 125
  %35 = sdiv i32 %34, 2
  %36 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %37 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %50

38:                                               ; preds = %21, %21
  %39 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %40 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %43 = call i32 @simple_set_tv_freq(%struct.dvb_frontend* %41, %struct.analog_parameters* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %45 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 62500
  %48 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %49 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %21, %38, %25
  %51 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %52 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @simple_set_radio_freq(%struct.dvb_frontend*, %struct.analog_parameters*) #1

declare dso_local i32 @simple_set_tv_freq(%struct.dvb_frontend*, %struct.analog_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
