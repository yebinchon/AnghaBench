; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pdn\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tvp5150_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %9 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.gpio_desc* %9, %struct.gpio_desc** %4, align 8
  %10 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %11 = call i64 @IS_ERR(%struct.gpio_desc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.gpio_desc* %14)
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %18 = icmp ne %struct.gpio_desc* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %21 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %20, i32 0)
  %22 = call i32 @msleep(i32 20)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %27 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store %struct.gpio_desc* %27, %struct.gpio_desc** %5, align 8
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %29 = call i64 @IS_ERR(%struct.gpio_desc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.gpio_desc* %32)
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %23
  %35 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %36 = icmp ne %struct.gpio_desc* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call i32 @ndelay(i32 500)
  %39 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %40 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %39, i32 0)
  %41 = call i32 @usleep_range(i32 200, i32 250)
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %31, %13
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
