; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8295_init_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda8290.c_tda8295_init_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda8290_priv* }
%struct.tda8290_priv = type { i32 }

@tda8295_init_if.set_adc_ctl = internal global [2 x i8] c"3\14", align 1
@tda8295_init_if.set_adc_ctl2 = internal global [2 x i8] c"4\00", align 1
@tda8295_init_if.set_pll_reg6 = internal global [2 x i8] c">c", align 1
@tda8295_init_if.set_pll_reg0 = internal global [2 x i8] c"8#", align 1
@tda8295_init_if.set_pll_reg7 = internal global [2 x i8] c"?\01", align 1
@tda8295_init_if.set_pll_reg10 = internal global [2 x i8] c"Ba", align 1
@tda8295_init_if.set_gpio_reg0 = internal global [2 x i8] c"D\0B", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda8295_init_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda8295_init_if(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda8290_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.tda8290_priv*, %struct.tda8290_priv** %5, align 8
  store %struct.tda8290_priv* %6, %struct.tda8290_priv** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %8 = call i32 @tda8295_power(%struct.dvb_frontend* %7, i32 1)
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = call i32 @tda8295_set_easy_mode(%struct.dvb_frontend* %9, i32 0)
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = call i32 @tda8295_set_video_std(%struct.dvb_frontend* %11)
  %13 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %13, i32 0, i32 0
  %15 = call i32 @tuner_i2c_xfer_send(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_adc_ctl, i64 0, i64 0), i32 2)
  %16 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %16, i32 0, i32 0
  %18 = call i32 @tuner_i2c_xfer_send(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_adc_ctl2, i64 0, i64 0), i32 2)
  %19 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %19, i32 0, i32 0
  %21 = call i32 @tuner_i2c_xfer_send(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_pll_reg6, i64 0, i64 0), i32 2)
  %22 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %22, i32 0, i32 0
  %24 = call i32 @tuner_i2c_xfer_send(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_pll_reg0, i64 0, i64 0), i32 2)
  %25 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %25, i32 0, i32 0
  %27 = call i32 @tuner_i2c_xfer_send(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_pll_reg7, i64 0, i64 0), i32 2)
  %28 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %29 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %28, i32 0, i32 0
  %30 = call i32 @tuner_i2c_xfer_send(i32* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_pll_reg10, i64 0, i64 0), i32 2)
  %31 = load %struct.tda8290_priv*, %struct.tda8290_priv** %3, align 8
  %32 = getelementptr inbounds %struct.tda8290_priv, %struct.tda8290_priv* %31, i32 0, i32 0
  %33 = call i32 @tuner_i2c_xfer_send(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda8295_init_if.set_gpio_reg0, i64 0, i64 0), i32 2)
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = call i32 @tda8295_agc1_out(%struct.dvb_frontend* %34, i32 0)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %37 = call i32 @tda8295_agc2_out(%struct.dvb_frontend* %36, i32 0)
  ret void
}

declare dso_local i32 @tda8295_power(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @tda8295_set_easy_mode(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @tda8295_set_video_std(%struct.dvb_frontend*) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tda8295_agc1_out(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @tda8295_agc2_out(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
