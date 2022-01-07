; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_core.c_intel_soc_pmic_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_core.c_intel_soc_pmic_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_soc_pmic_config = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.intel_soc_pmic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get PMIC hardware revision\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@intel_soc_pmic_config_byt_crc = common dso_local global %struct.intel_soc_pmic_config zeroinitializer, align 4
@intel_soc_pmic_config_cht_crc = common dso_local global %struct.intel_soc_pmic_config zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Unknown hardware rev %llu, assuming BYT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't enable IRQ as wake source: %d\0A\00", align 1
@panel_gpio_table = common dso_local global i32 0, align 4
@crc_pwm_lookup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @intel_soc_pmic_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_soc_pmic_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.intel_soc_pmic_config*, align 8
  %8 = alloca %struct.intel_soc_pmic*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @ACPI_HANDLE(%struct.device* %14)
  %16 = call i32 @acpi_evaluate_integer(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %133

25:                                               ; preds = %2
  %26 = load i64, i64* %9, align 8
  switch i64 %26, label %29 [
    i64 129, label %27
    i64 128, label %28
  ]

27:                                               ; preds = %25
  store %struct.intel_soc_pmic_config* @intel_soc_pmic_config_byt_crc, %struct.intel_soc_pmic_config** %7, align 8
  br label %34

28:                                               ; preds = %25
  store %struct.intel_soc_pmic_config* @intel_soc_pmic_config_cht_crc, %struct.intel_soc_pmic_config** %7, align 8
  br label %34

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  store %struct.intel_soc_pmic_config* @intel_soc_pmic_config_byt_crc, %struct.intel_soc_pmic_config** %7, align 8
  br label %34

34:                                               ; preds = %29, %28, %27
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.intel_soc_pmic* @devm_kzalloc(%struct.device* %35, i32 12, i32 %36)
  store %struct.intel_soc_pmic* %37, %struct.intel_soc_pmic** %8, align 8
  %38 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %39 = icmp ne %struct.intel_soc_pmic* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %133

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.intel_soc_pmic* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.intel_soc_pmic_config*, %struct.intel_soc_pmic_config** %7, align 8
  %49 = getelementptr inbounds %struct.intel_soc_pmic_config, %struct.intel_soc_pmic_config* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %47, i32 %50)
  %52 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %53 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %55 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %43
  %60 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %61 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %133

64:                                               ; preds = %43
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %69 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %71 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %74 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.intel_soc_pmic_config*, %struct.intel_soc_pmic_config** %7, align 8
  %77 = getelementptr inbounds %struct.intel_soc_pmic_config, %struct.intel_soc_pmic_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IRQF_ONESHOT, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.intel_soc_pmic_config*, %struct.intel_soc_pmic_config** %7, align 8
  %82 = getelementptr inbounds %struct.intel_soc_pmic_config, %struct.intel_soc_pmic_config* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %85 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %84, i32 0, i32 0
  %86 = call i32 @regmap_add_irq_chip(i32 %72, i32 %75, i32 %80, i32 0, i32 %83, i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %64
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %133

91:                                               ; preds = %64
  %92 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %93 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @enable_irq_wake(i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dev_warn(%struct.device* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %91
  %103 = call i32 @gpiod_add_lookup_table(i32* @panel_gpio_table)
  %104 = load i32, i32* @crc_pwm_lookup, align 4
  %105 = load i32, i32* @crc_pwm_lookup, align 4
  %106 = call i32 @ARRAY_SIZE(i32 %105)
  %107 = call i32 @pwm_add_table(i32 %104, i32 %106)
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load %struct.intel_soc_pmic_config*, %struct.intel_soc_pmic_config** %7, align 8
  %110 = getelementptr inbounds %struct.intel_soc_pmic_config, %struct.intel_soc_pmic_config* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.intel_soc_pmic_config*, %struct.intel_soc_pmic_config** %7, align 8
  %113 = getelementptr inbounds %struct.intel_soc_pmic_config, %struct.intel_soc_pmic_config* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %116 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regmap_irq_get_domain(i32 %117)
  %119 = call i32 @mfd_add_devices(%struct.device* %108, i32 -1, i32 %111, i32 %114, i32* null, i32 0, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  br label %124

123:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %133

124:                                              ; preds = %122
  %125 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %126 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %8, align 8
  %129 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @regmap_del_irq_chip(i32 %127, i32 %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %124, %123, %89, %59, %40, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local %struct.intel_soc_pmic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.intel_soc_pmic*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @gpiod_add_lookup_table(i32*) #1

declare dso_local i32 @pwm_add_table(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
