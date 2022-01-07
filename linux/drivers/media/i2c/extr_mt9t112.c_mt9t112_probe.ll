; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t112.c_mt9t112_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.mt9t112_priv = type { i32, i32, i32*, i32*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"mt9t112: missing platform data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9t112_subdev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"extclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to get clock \22extclk\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to get gpio \22standby\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9t112_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t112_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9t112_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_5__* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mt9t112_priv* @devm_kzalloc(%struct.TYPE_5__* %21, i32 32, i32 %22)
  store %struct.mt9t112_priv* %23, %struct.mt9t112_priv** %6, align 8
  %24 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %25 = icmp ne %struct.mt9t112_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %103

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %38, i32 0, i32 1
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @v4l2_i2c_subdev_init(i32* %39, %struct.i2c_client* %40, i32* @mt9t112_subdev_ops)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32* @devm_clk_get(%struct.TYPE_5__* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %46 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %29
  %55 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %56 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  br label %72

57:                                               ; preds = %29
  %58 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %59 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = call i32 @dev_err(%struct.TYPE_5__* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %3, align 4
  br label %103

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %54
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %76 = call i32* @devm_gpiod_get_optional(%struct.TYPE_5__* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %78 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  %79 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_5__* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %89 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @PTR_ERR(i32* %90)
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %72
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = call i32 @mt9t112_camera_probe(%struct.i2c_client* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %103

99:                                               ; preds = %92
  %100 = load %struct.mt9t112_priv*, %struct.mt9t112_priv** %6, align 8
  %101 = getelementptr inbounds %struct.mt9t112_priv, %struct.mt9t112_priv* %100, i32 0, i32 1
  %102 = call i32 @v4l2_async_register_subdev(i32* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %97, %84, %63, %26, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.mt9t112_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @mt9t112_camera_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
