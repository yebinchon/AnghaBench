; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov772x_priv = type { i64, i64, i64, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to get GPIO \22reset\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov772x_priv*)* @ov772x_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_power_on(%struct.ov772x_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov772x_priv*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.ov772x_priv* %0, %struct.ov772x_priv** %3, align 8
  %6 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %6, i32 0, i32 3
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %10 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_prepare_enable(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpiod_set_value(i64 %31, i32 1)
  %33 = call i32 @usleep_range(i32 500, i32 1000)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %38 = call i64 @gpiod_get_optional(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @IS_ERR(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @clk_disable_unprepare(i64 %52)
  %54 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @PTR_ERR(i64 %56)
  store i32 %57, i32* %2, align 4
  br label %79

58:                                               ; preds = %34
  %59 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @gpiod_set_value(i64 %66, i32 1)
  %68 = call i32 @usleep_range(i32 500, i32 1000)
  %69 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gpiod_set_value(i64 %71, i32 0)
  %73 = call i32 @usleep_range(i32 500, i32 1000)
  %74 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @gpiod_put(i64 %76)
  br label %78

78:                                               ; preds = %63, %58
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %46, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

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
