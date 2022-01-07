; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-spi.c_wm831x_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm831x-spi.c_wm831x_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.wm831x_pdata = type { i32 }
%struct.spi_device_id = type { i64 }
%struct.of_device_id = type { i64 }
%struct.wm831x = type { i32, i32, %struct.TYPE_5__*, i32 }

@wm831x_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to match device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@wm831x_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @wm831x_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.wm831x_pdata*, align 8
  %5 = alloca %struct.spi_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = call %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_5__* %11)
  store %struct.wm831x_pdata* %12, %struct.wm831x_pdata** %4, align 8
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %13)
  store %struct.spi_device_id* %14, %struct.spi_device_id** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load i32, i32* @wm831x_of_match, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = call %struct.of_device_id* @of_match_device(i32 %21, %struct.TYPE_5__* %23)
  store %struct.of_device_id* %24, %struct.of_device_id** %6, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %20
  %34 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %35 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %1
  %39 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %40 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.wm831x* @devm_kzalloc(%struct.TYPE_5__* %45, i32 24, i32 %46)
  store %struct.wm831x* %47, %struct.wm831x** %7, align 8
  %48 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %49 = icmp eq %struct.wm831x* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %101

53:                                               ; preds = %43
  %54 = load i32, i32* @SPI_MODE_0, align 4
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %58 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %59 = call i32 @spi_set_drvdata(%struct.spi_device* %57, %struct.wm831x* %58)
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %63 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %62, i32 0, i32 2
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %66 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = call i32 @devm_regmap_init_spi(%struct.spi_device* %67, i32* @wm831x_regmap_config)
  %69 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %70 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %72 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %53
  %77 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %78 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %82 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %101

87:                                               ; preds = %53
  %88 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %4, align 8
  %89 = icmp ne %struct.wm831x_pdata* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %92 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %91, i32 0, i32 1
  %93 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %4, align 8
  %94 = call i32 @memcpy(i32* %92, %struct.wm831x_pdata* %93, i32 4)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wm831x_device_init(%struct.wm831x* %96, i32 %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %76, %50, %27
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.wm831x_pdata* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local %struct.wm831x* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.wm831x*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

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
