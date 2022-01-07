; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stw481x.c_stw481x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.stw481x* }
%struct.stw481x = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stw481x_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"chip initialization failed\0A\00", align 1
@stw481x_cells = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"initialized STw481x device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stw481x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stw481x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.stw481x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.stw481x* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.stw481x* %12, %struct.stw481x** %6, align 8
  %13 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %14 = icmp ne %struct.stw481x* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.stw481x* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %24 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %23, i32 0, i32 1
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %25, i32* @stw481x_regmap_config)
  %27 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %28 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %30 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %18
  %35 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %36 = getelementptr inbounds %struct.stw481x, %struct.stw481x* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %91

44:                                               ; preds = %18
  %45 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %46 = call i32 @stw481x_startup(%struct.stw481x* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %91

54:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stw481x_cells, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.stw481x*, %struct.stw481x** %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stw481x_cells, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store %struct.stw481x* %61, %struct.stw481x** %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stw481x_cells, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 16, i32* %71, align 8
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stw481x_cells, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stw481x_cells, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %79)
  %81 = call i32 @devm_mfd_add_devices(i32* %77, i32 0, %struct.TYPE_4__* %78, i32 %80, i32* null, i32 0, i32* null)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %91

86:                                               ; preds = %75
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_info(i32* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %84, %49, %34, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.stw481x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stw481x*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @stw481x_startup(%struct.stw481x*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
