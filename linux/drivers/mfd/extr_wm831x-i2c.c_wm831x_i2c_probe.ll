; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-i2c.c_wm831x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-i2c.c_wm831x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.wm831x_pdata = type { i32 }
%struct.of_device_id = type { i64 }
%struct.wm831x = type { i32, i32, %struct.TYPE_5__*, i32 }

@wm831x_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to match device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm831x_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm831x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm831x_pdata*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = call %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_5__* %12)
  store %struct.wm831x_pdata* %13, %struct.wm831x_pdata** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load i32, i32* @wm831x_of_match, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call %struct.of_device_id* @of_match_device(i32 %20, %struct.TYPE_5__* %22)
  store %struct.of_device_id* %23, %struct.of_device_id** %7, align 8
  %24 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %25 = icmp ne %struct.of_device_id* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 1
  %29 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %19
  %33 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.wm831x* @devm_kzalloc(%struct.TYPE_5__* %44, i32 24, i32 %45)
  store %struct.wm831x* %46, %struct.wm831x** %8, align 8
  %47 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %48 = icmp eq %struct.wm831x* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %97

52:                                               ; preds = %42
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %55 = call i32 @i2c_set_clientdata(%struct.i2c_client* %53, %struct.wm831x* %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %59 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %58, i32 0, i32 2
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %62 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %63, i32* @wm831x_regmap_config)
  %65 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %66 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %68 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %52
  %73 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %74 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %78 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %97

83:                                               ; preds = %52
  %84 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %85 = icmp ne %struct.wm831x_pdata* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %88 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %87, i32 0, i32 1
  %89 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %6, align 8
  %90 = call i32 @memcpy(i32* %88, %struct.wm831x_pdata* %89, i32 4)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @wm831x_device_init(%struct.wm831x* %92, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %72, %49, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.wm831x* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm831x*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.wm831x_pdata*, i32) #1

declare dso_local i32 @wm831x_device_init(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
