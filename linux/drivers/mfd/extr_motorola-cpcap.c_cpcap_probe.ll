; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.of_device_id = type { i32 }
%struct.cpcap_ddata = type { %struct.spi_device*, i32, i32* }

@cpcap_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@cpcap_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize regmap: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to detect CPCAP: %i\0A\00", align 1
@cpcap_mfd_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cpcap_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.cpcap_ddata*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load i32, i32* @cpcap_of_match, align 4
  %8 = call i32 @of_match_ptr(i32 %7)
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = call %struct.of_device_id* @of_match_device(i32 %8, i32* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %4, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.cpcap_ddata* @devm_kzalloc(i32* %19, i32 24, i32 %20)
  store %struct.cpcap_ddata* %21, %struct.cpcap_ddata** %5, align 8
  %22 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %23 = icmp ne %struct.cpcap_ddata* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %98

27:                                               ; preds = %17
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %30 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %29, i32 0, i32 0
  store %struct.spi_device* %28, %struct.spi_device** %30, align 8
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %33 = call i32 @spi_set_drvdata(%struct.spi_device* %31, %struct.cpcap_ddata* %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  store i32 16, i32* %35, align 4
  %36 = load i32, i32* @SPI_MODE_0, align 4
  %37 = load i32, i32* @SPI_CS_HIGH, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = call i32 @spi_setup(%struct.spi_device* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %98

47:                                               ; preds = %27
  %48 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %49 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %48, i32 0, i32 2
  store i32* @cpcap_regmap_config, i32** %49, align 8
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = call i32 @devm_regmap_init_spi(%struct.spi_device* %50, i32* @cpcap_regmap_config)
  %52 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %53 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %55 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %47
  %60 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %61 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %65 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %64, i32 0, i32 0
  %66 = load %struct.spi_device*, %struct.spi_device** %65, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 2
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %98

71:                                               ; preds = %47
  %72 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %73 = call i32 @cpcap_check_revision(%struct.cpcap_ddata* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %78 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %77, i32 0, i32 0
  %79 = load %struct.spi_device*, %struct.spi_device** %78, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 2
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %98

84:                                               ; preds = %71
  %85 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %5, align 8
  %86 = call i32 @cpcap_init_irq(%struct.cpcap_ddata* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %98

91:                                               ; preds = %84
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 2
  %94 = load i32, i32* @cpcap_mfd_devices, align 4
  %95 = load i32, i32* @cpcap_mfd_devices, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = call i32 @devm_mfd_add_devices(i32* %93, i32 0, i32 %94, i32 %96, i32* null, i32 0, i32* null)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %91, %89, %76, %59, %45, %24, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.cpcap_ddata* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.cpcap_ddata*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @cpcap_check_revision(%struct.cpcap_ddata*) #1

declare dso_local i32 @cpcap_init_irq(%struct.cpcap_ddata*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
