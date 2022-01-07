; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw9910_priv = type { i64, i64, i64, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rstb\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to get GPIO \22rstb\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw9910_priv*)* @tw9910_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_power_on(%struct.tw9910_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw9910_priv*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.tw9910_priv* %0, %struct.tw9910_priv** %3, align 8
  %6 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %6, i32 0, i32 3
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %15 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_prepare_enable(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %25 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tw9910_set_gpio_value(i64 %26, i32 0)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %31 = call i64 @gpiod_get_optional(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %35 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @IS_ERR(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %23
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %44 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @clk_disable_unprepare(i64 %45)
  %47 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %48 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @tw9910_set_gpio_value(i64 %49, i32 1)
  %51 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %52 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @PTR_ERR(i64 %53)
  store i32 %54, i32* %2, align 4
  br label %74

55:                                               ; preds = %23
  %56 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %57 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %62 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @tw9910_set_gpio_value(i64 %63, i32 1)
  %65 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %66 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @tw9910_set_gpio_value(i64 %67, i32 0)
  %69 = load %struct.tw9910_priv*, %struct.tw9910_priv** %3, align 8
  %70 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gpiod_put(i64 %71)
  br label %73

73:                                               ; preds = %60, %55
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %39, %20
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @tw9910_set_gpio_value(i64, i32) #1

declare dso_local i64 @gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @gpiod_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
