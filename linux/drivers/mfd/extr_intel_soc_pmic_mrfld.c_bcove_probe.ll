; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_mrfld.c_bcove_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel_soc_pmic_mrfld.c_bcove_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.intel_soc_pmic = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcove_regmap_config = common dso_local global i32 0, align 4
@irq_level2_resources = common dso_local global %struct.TYPE_5__* null, align 8
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@bcove_dev = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcove_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcove_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.intel_soc_pmic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.intel_soc_pmic* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.intel_soc_pmic* %12, %struct.intel_soc_pmic** %5, align 8
  %13 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %14 = icmp ne %struct.intel_soc_pmic* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %78

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.intel_soc_pmic* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %25 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %24, i32 0, i32 1
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %28 = call i32 @devm_regmap_init(%struct.device* %26, i32* null, %struct.intel_soc_pmic* %27, i32* @bcove_regmap_config)
  %29 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %30 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %32 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %5, align 8
  %38 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %68, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_level2_resources, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @platform_get_irq(%struct.platform_device* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %78

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_level2_resources, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @irq_level2_resources, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcove_dev, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bcove_dev, align 8
  %76 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %75)
  %77 = call i32 @devm_mfd_add_devices(%struct.device* %72, i32 %73, %struct.TYPE_5__* %74, i32 %76, i32* null, i32 0, i32* null)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %53, %36, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.intel_soc_pmic* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_soc_pmic*) #1

declare dso_local i32 @devm_regmap_init(%struct.device*, i32*, %struct.intel_soc_pmic*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, %struct.TYPE_5__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
