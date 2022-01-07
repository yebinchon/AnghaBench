; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6105x.c_tps6105x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps6105x = type { %struct.tps6105x_platform_data*, %struct.i2c_client*, i32 }
%struct.tps6105x_platform_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps6105x_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"chip initialization failed\0A\00", align 1
@tps6105x_gpio_cell = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"present, not used for anything, only GPIO\0A\00", align 1
@tps6105x_leds_cell = common dso_local global i32 0, align 4
@tps6105x_flash_cell = common dso_local global i32 0, align 4
@tps6105x_regulator_cell = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps6105x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6105x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps6105x*, align 8
  %7 = alloca %struct.tps6105x_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.tps6105x_platform_data* @dev_get_platdata(i32* %10)
  store %struct.tps6105x_platform_data* %11, %struct.tps6105x_platform_data** %7, align 8
  %12 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %7, align 8
  %13 = icmp ne %struct.tps6105x_platform_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tps6105x* @devm_kmalloc(i32* %22, i32 24, i32 %23)
  store %struct.tps6105x* %24, %struct.tps6105x** %6, align 8
  %25 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %26 = icmp ne %struct.tps6105x* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tps6105x_regmap_config)
  %33 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %34 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %36 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %42 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %104

45:                                               ; preds = %30
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %46, %struct.tps6105x* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %51 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %50, i32 0, i32 1
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %7, align 8
  %53 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %54 = getelementptr inbounds %struct.tps6105x, %struct.tps6105x* %53, i32 0, i32 0
  store %struct.tps6105x_platform_data* %52, %struct.tps6105x_platform_data** %54, align 8
  %55 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %56 = call i32 @tps6105x_startup(%struct.tps6105x* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %104

64:                                               ; preds = %45
  %65 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %66 = call i32 @tps6105x_add_device(%struct.tps6105x* %65, i32* @tps6105x_gpio_cell)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %104

71:                                               ; preds = %64
  %72 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.tps6105x_platform_data, %struct.tps6105x_platform_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %88 [
    i32 131, label %75
    i32 130, label %79
    i32 129, label %82
    i32 128, label %85
  ]

75:                                               ; preds = %71
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %95

79:                                               ; preds = %71
  %80 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %81 = call i32 @tps6105x_add_device(%struct.tps6105x* %80, i32* @tps6105x_leds_cell)
  store i32 %81, i32* %8, align 4
  br label %95

82:                                               ; preds = %71
  %83 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %84 = call i32 @tps6105x_add_device(%struct.tps6105x* %83, i32* @tps6105x_flash_cell)
  store i32 %84, i32* %8, align 4
  br label %95

85:                                               ; preds = %71
  %86 = load %struct.tps6105x*, %struct.tps6105x** %6, align 8
  %87 = call i32 @tps6105x_add_device(%struct.tps6105x* %86, i32* @tps6105x_regulator_cell)
  store i32 %87, i32* %8, align 4
  br label %95

88:                                               ; preds = %71
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load %struct.tps6105x_platform_data*, %struct.tps6105x_platform_data** %7, align 8
  %92 = getelementptr inbounds %struct.tps6105x_platform_data, %struct.tps6105x_platform_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88, %85, %82, %79, %75
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = call i32 @mfd_remove_devices(i32* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %69, %59, %40, %27, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.tps6105x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.tps6105x* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps6105x*) #1

declare dso_local i32 @tps6105x_startup(%struct.tps6105x*) #1

declare dso_local i32 @tps6105x_add_device(%struct.tps6105x*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
