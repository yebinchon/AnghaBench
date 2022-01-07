; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-spi.c_mc13xxx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-spi.c_mc13xxx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.mc13xxx = type { i8*, i32, i32 }
%struct.of_device_id = type { i8* }
%struct.spi_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@regmap_mc13xxx_bus = common dso_local global i32 0, align 4
@mc13xxx_regmap_spi_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize regmap: %d\0A\00", align 1
@mc13xxx_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mc13xxx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mc13xxx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.spi_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mc13xxx* @devm_kzalloc(%struct.TYPE_8__* %9, i32 16, i32 %10)
  store %struct.mc13xxx* %11, %struct.mc13xxx** %4, align 8
  %12 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %13 = icmp ne %struct.mc13xxx* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %100

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %21 = call i32 @dev_set_drvdata(%struct.TYPE_8__* %19, %struct.mc13xxx* %20)
  %22 = load i32, i32* @SPI_MODE_0, align 4
  %23 = load i32, i32* @SPI_CS_HIGH, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %31 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %38

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %36
  %39 = phi i32 [ %34, %36 ], [ 26000000, %37 ]
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = call i32 @spi_setup(%struct.spi_device* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %100

48:                                               ; preds = %38
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 2
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 2
  %53 = call i32 @devm_regmap_init(%struct.TYPE_8__* %50, i32* @regmap_mc13xxx_bus, %struct.TYPE_8__* %52, i32* @mc13xxx_regmap_spi_config)
  %54 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %55 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %57 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %48
  %62 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %63 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 2
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %100

71:                                               ; preds = %48
  %72 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i32, i32* @mc13xxx_dt_ids, align 4
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 2
  %81 = call %struct.of_device_id* @of_match_device(i32 %78, %struct.TYPE_8__* %80)
  store %struct.of_device_id* %81, %struct.of_device_id** %6, align 8
  %82 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %83 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %86 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  br label %96

87:                                               ; preds = %71
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %88)
  store %struct.spi_device_id* %89, %struct.spi_device_id** %7, align 8
  %90 = load %struct.spi_device_id*, %struct.spi_device_id** %7, align 8
  %91 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.mc13xxx*, %struct.mc13xxx** %4, align 8
  %95 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %87, %77
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 2
  %99 = call i32 @mc13xxx_common_init(%struct.TYPE_8__* %98)
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %61, %46, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.mc13xxx* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_8__*, %struct.mc13xxx*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @devm_regmap_init(%struct.TYPE_8__*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @mc13xxx_common_init(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
