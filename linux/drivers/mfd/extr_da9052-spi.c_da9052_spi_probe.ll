; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-spi.c_da9052_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-spi.c_da9052_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { i32, i32, i32, i32 }
%struct.spi_device_id = type { i32 }
%struct.da9052 = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@da9052_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @da9052_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.regmap_config, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device_id*, align 8
  %7 = alloca %struct.da9052*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %8)
  store %struct.spi_device_id* %9, %struct.spi_device_id** %6, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da9052* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.da9052* %13, %struct.da9052** %7, align 8
  %14 = load %struct.da9052*, %struct.da9052** %7, align 8
  %15 = icmp ne %struct.da9052* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load i32, i32* @SPI_MODE_0, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  store i32 8, i32* %24, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = call i32 @spi_setup(%struct.spi_device* %25)
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  %29 = load %struct.da9052*, %struct.da9052** %7, align 8
  %30 = getelementptr inbounds %struct.da9052, %struct.da9052* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.da9052*, %struct.da9052** %7, align 8
  %35 = getelementptr inbounds %struct.da9052, %struct.da9052* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.da9052*, %struct.da9052** %7, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.da9052* %37)
  %39 = bitcast %struct.regmap_config* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 bitcast (%struct.regmap_config* @da9052_regmap_config to i8*), i64 24, i1 false)
  %40 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 1
  store i32 7, i32* %41, align 4
  %42 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 3
  store i32 8, i32* %43, align 4
  %44 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 4
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %4, i32 0, i32 5
  store i32 1, i32* %45, align 4
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = call i32 @devm_regmap_init_spi(%struct.spi_device* %46, %struct.regmap_config* %4)
  %48 = load %struct.da9052*, %struct.da9052** %7, align 8
  %49 = getelementptr inbounds %struct.da9052, %struct.da9052* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.da9052*, %struct.da9052** %7, align 8
  %51 = getelementptr inbounds %struct.da9052, %struct.da9052* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %19
  %56 = load %struct.da9052*, %struct.da9052** %7, align 8
  %57 = getelementptr inbounds %struct.da9052, %struct.da9052* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %19
  %66 = load %struct.da9052*, %struct.da9052** %7, align 8
  %67 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %68 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @da9052_device_init(%struct.da9052* %66, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %55, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.da9052* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.da9052*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @da9052_device_init(%struct.da9052*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
