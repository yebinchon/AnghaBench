; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtdc_ti.c_chtdc_ti_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_chtdc_ti.c_chtdc_ti_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@chtdc_ti_regmap_config = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@chtdc_ti_irq_chip = common dso_local global i32 0, align 4
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@chtdc_ti_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @chtdc_ti_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chtdc_ti_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_soc_pmic*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.intel_soc_pmic* @devm_kzalloc(%struct.device* %9, i32 12, i32 %10)
  store %struct.intel_soc_pmic* %11, %struct.intel_soc_pmic** %5, align 8
  %12 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %13 = icmp ne %struct.intel_soc_pmic* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.intel_soc_pmic* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %21, i32* @chtdc_ti_regmap_config)
  %23 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %24 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %26 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %32 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %67

35:                                               ; preds = %17
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %40 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %43 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %46 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IRQF_ONESHOT, align 4
  %49 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %50 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %49, i32 0, i32 0
  %51 = call i32 @devm_regmap_add_irq_chip(%struct.device* %41, i32 %44, i32 %47, i32 %48, i32 0, i32* @chtdc_ti_irq_chip, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %67

56:                                               ; preds = %35
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %59 = load i32, i32* @chtdc_ti_dev, align 4
  %60 = load i32, i32* @chtdc_ti_dev, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %63 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @regmap_irq_get_domain(i32 %64)
  %66 = call i32 @devm_mfd_add_devices(%struct.device* %57, i32 %58, i32 %59, i32 %61, i32* null, i32 0, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %56, %54, %30, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.intel_soc_pmic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.intel_soc_pmic*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.device*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
