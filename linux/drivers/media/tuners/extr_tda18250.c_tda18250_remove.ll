; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tda18250_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.tda18250_dev*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.tda18250_dev* %6, %struct.tda18250_dev** %3, align 8
  %7 = load %struct.tda18250_dev*, %struct.tda18250_dev** %3, align 8
  %8 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %7, i32 0, i32 0
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %8, align 8
  store %struct.dvb_frontend* %9, %struct.dvb_frontend** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @memset(i32* %15, i32 0, i32 4)
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.tda18250_dev*, %struct.tda18250_dev** %3, align 8
  %20 = call i32 @kfree(%struct.tda18250_dev* %19)
  ret i32 0
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.tda18250_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
