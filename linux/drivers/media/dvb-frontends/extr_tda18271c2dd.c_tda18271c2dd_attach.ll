; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_tda18271c2dd_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_tda18271c2dd_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tda_state* }
%struct.TYPE_2__ = type { i32 }
%struct.tda_state = type { %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tuner_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @tda18271c2dd_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tda_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tda_state* @kzalloc(i32 16, i32 %9)
  store %struct.tda_state* %10, %struct.tda_state** %8, align 8
  %11 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %12 = icmp ne %struct.tda_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %33

14:                                               ; preds = %3
  %15 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1
  store %struct.tda_state* %15, %struct.tda_state** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %20 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %23 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %22, i32 0, i32 0
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32* %26, i32* @tuner_ops, i32 4)
  %28 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %29 = call i32 @reset(%struct.tda_state* %28)
  %30 = load %struct.tda_state*, %struct.tda_state** %8, align 8
  %31 = call i32 @InitCal(%struct.tda_state* %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %32, %struct.dvb_frontend** %4, align 8
  br label %33

33:                                               ; preds = %14, %13
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %34
}

declare dso_local %struct.tda_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @reset(%struct.tda_state*) #1

declare dso_local i32 @InitCal(%struct.tda_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
