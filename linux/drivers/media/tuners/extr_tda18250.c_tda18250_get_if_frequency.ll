; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_get_if_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_get_if_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @tda18250_get_if_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_get_if_frequency(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.tda18250_dev*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.tda18250_dev* %11, %struct.tda18250_dev** %6, align 8
  %12 = load %struct.tda18250_dev*, %struct.tda18250_dev** %6, align 8
  %13 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 1000
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  ret i32 0
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
