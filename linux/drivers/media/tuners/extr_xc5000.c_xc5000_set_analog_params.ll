; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_set_analog_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc5000.c_xc5000_set_analog_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.analog_parameters = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @xc5000_set_analog_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc5000_set_analog_params(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.analog_parameters*, align 8
  %6 = alloca %struct.xc5000_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.xc5000_priv*, %struct.xc5000_priv** %9, align 8
  store %struct.xc5000_priv* %10, %struct.xc5000_priv** %6, align 8
  %11 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  %12 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %21 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %36 [
    i32 128, label %23
    i32 129, label %32
  ]

23:                                               ; preds = %19
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %25 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %26 = call i32 @xc5000_config_radio(%struct.dvb_frontend* %24, %struct.analog_parameters* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %23
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %34 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %35 = call i32 @xc5000_config_tv(%struct.dvb_frontend* %33, %struct.analog_parameters* %34)
  br label %37

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %32, %31
  %38 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %39 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  %42 = getelementptr inbounds %struct.xc5000_priv, %struct.xc5000_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %44 = call i32 @xc5000_set_params(%struct.dvb_frontend* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %29, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @xc5000_config_radio(%struct.dvb_frontend*, %struct.analog_parameters*) #1

declare dso_local i32 @xc5000_config_tv(%struct.dvb_frontend*, %struct.analog_parameters*) #1

declare dso_local i32 @xc5000_set_params(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
