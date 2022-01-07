; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-a10sr.c_altr_a10sr_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_altera-a10sr.c_altr_a10sr_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.altr_a10sr = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@altr_a10sr_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@altr_a10sr_subdev_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to register sub-devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @altr_a10sr_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_a10sr_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.altr_a10sr*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.altr_a10sr* @devm_kzalloc(i32* %7, i32 16, i32 %8)
  store %struct.altr_a10sr* %9, %struct.altr_a10sr** %5, align 8
  %10 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %11 = icmp ne %struct.altr_a10sr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load i32, i32* @SPI_MODE_3, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  store i32 8, i32* %20, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = call i32 @spi_setup(%struct.spi_device* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 1
  %25 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %26 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %29 = call i32 @spi_set_drvdata(%struct.spi_device* %27, %struct.altr_a10sr* %28)
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = call i32 @devm_regmap_init_spi(%struct.spi_device* %30, i32* @altr_a10sr_regmap_config)
  %32 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %33 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %35 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %15
  %40 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %41 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %44, i32 0, i32 1
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %15
  %50 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %51 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %54 = load i32, i32* @altr_a10sr_subdev_info, align 4
  %55 = load i32, i32* @altr_a10sr_subdev_info, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = call i32 @devm_mfd_add_devices(i32* %52, i32 %53, i32 %54, i32 %56, i32* null, i32 0, i32* null)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.altr_a10sr*, %struct.altr_a10sr** %5, align 8
  %62 = getelementptr inbounds %struct.altr_a10sr, %struct.altr_a10sr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %49
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %39, %12
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.altr_a10sr* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.altr_a10sr*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
