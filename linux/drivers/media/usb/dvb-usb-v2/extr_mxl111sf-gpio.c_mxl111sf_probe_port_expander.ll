; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_probe_port_expander.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-gpio.c_mxl111sf_probe_port_expander.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@mxl111sf_PCA9534 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"found port expander at 0x%02x\00", align 1
@mxl111sf_gpio_hw = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"using hardware gpio\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*)* @mxl111sf_probe_port_expander to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_probe_port_expander(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32* %5, i32** %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i64 1
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  store i32* %6, i32** %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %18 = load i32, i32* @I2C_M_RD, align 4
  store i32 %18, i32* %17, align 8
  %19 = call i32 (i8*, ...) @mxl_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 56, i32* %21, align 4
  %22 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  store i32 56, i32* %23, align 4
  %24 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %25 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %29 = call i32 @i2c_transfer(i32* %27, %struct.i2c_msg* %28, i32 2)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %37 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @mxl111sf_PCA9534, align 8
  %39 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %40 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %42 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i8*, ...) @mxl_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store i32 0, i32* %2, align 4
  br label %78

45:                                               ; preds = %1
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 2
  store i32 32, i32* %47, align 4
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 2
  store i32 32, i32* %49, align 4
  %50 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %51 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %55 = call i32 @i2c_transfer(i32* %53, %struct.i2c_msg* %54, i32 2)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %63 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @mxl111sf_PCA9534, align 8
  %65 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %66 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %68 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @mxl_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 0, i32* %2, align 4
  br label %78

71:                                               ; preds = %45
  %72 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %73 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %72, i32 0, i32 0
  store i32 255, i32* %73, align 8
  %74 = load i8*, i8** @mxl111sf_gpio_hw, align 8
  %75 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %76 = getelementptr inbounds %struct.mxl111sf_state, %struct.mxl111sf_state* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = call i32 (i8*, ...) @mxl_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %58, %32
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @mxl_debug(i8*, ...) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
