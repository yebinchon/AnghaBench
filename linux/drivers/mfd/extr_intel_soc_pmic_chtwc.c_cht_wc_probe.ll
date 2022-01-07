; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtwc.c_cht_wc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtwc.c_cht_wc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { i64, i32, i32, %struct.device* }

@.str = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get PMIC hardware revision\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CHT_WC_HRV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid PMIC hardware revision: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid IRQ\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cht_wc_regmap_cfg = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@cht_wc_regmap_irq_chip = common dso_local global i32 0, align 4
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@cht_wc_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @cht_wc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cht_wc_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_soc_pmic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @ACPI_HANDLE(%struct.device* %11)
  %13 = call i32 @acpi_evaluate_integer(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %107

22:                                               ; preds = %1
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @CHT_WC_HRV, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %107

32:                                               ; preds = %22
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %107

42:                                               ; preds = %32
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.intel_soc_pmic* @devm_kzalloc(%struct.device* %43, i32 24, i32 %44)
  store %struct.intel_soc_pmic* %45, %struct.intel_soc_pmic** %5, align 8
  %46 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %47 = icmp ne %struct.intel_soc_pmic* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %107

51:                                               ; preds = %42
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %56 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %59 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %58, i32 0, i32 3
  store %struct.device* %57, %struct.device** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %61 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.intel_soc_pmic* %61)
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = call i32 @devm_regmap_init(%struct.device* %63, i32* null, %struct.i2c_client* %64, i32* @cht_wc_regmap_cfg)
  %66 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %67 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %69 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %51
  %74 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %75 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %2, align 4
  br label %107

78:                                               ; preds = %51
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %81 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %84 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @IRQF_ONESHOT, align 4
  %87 = load i32, i32* @IRQF_SHARED, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %90 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %89, i32 0, i32 1
  %91 = call i32 @devm_regmap_add_irq_chip(%struct.device* %79, i32 %82, i64 %85, i32 %88, i32 0, i32* @cht_wc_regmap_irq_chip, i32* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %78
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %99 = load i32, i32* @cht_wc_dev, align 4
  %100 = load i32, i32* @cht_wc_dev, align 4
  %101 = call i32 @ARRAY_SIZE(i32 %100)
  %102 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %103 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @regmap_irq_get_domain(i32 %104)
  %106 = call i32 @devm_mfd_add_devices(%struct.device* %97, i32 %98, i32 %99, i32 %101, i32* null, i32 0, i32 %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %96, %94, %73, %48, %37, %26, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.intel_soc_pmic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.intel_soc_pmic*) #1

declare dso_local i32 @devm_regmap_init(%struct.device*, i32*, %struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.device*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
