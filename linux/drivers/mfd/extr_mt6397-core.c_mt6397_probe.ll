; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-core.c_mt6397_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mt6397-core.c_mt6397_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mt6397_chip = type { i32, i64, i32, i32, %struct.TYPE_5__* }
%struct.chip_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read chip id: %d\0A\00", align 1
@mt6323_devs = common dso_local global i32 0, align 4
@mt6397_devs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unsupported chip: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to add child devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt6397_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6397_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt6397_chip*, align 8
  %7 = alloca %struct.chip_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mt6397_chip* @devm_kzalloc(%struct.TYPE_5__* %9, i32 32, i32 %10)
  store %struct.mt6397_chip* %11, %struct.mt6397_chip** %6, align 8
  %12 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %13 = icmp ne %struct.mt6397_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %140

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %21 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %20, i32 0, i32 4
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_get_regmap(i32 %25, i32* null)
  %27 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %28 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %30 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %140

36:                                               ; preds = %17
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.chip_data* @of_device_get_match_data(%struct.TYPE_5__* %38)
  store %struct.chip_data* %39, %struct.chip_data** %7, align 8
  %40 = load %struct.chip_data*, %struct.chip_data** %7, align 8
  %41 = icmp ne %struct.chip_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %140

45:                                               ; preds = %36
  %46 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %47 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.chip_data*, %struct.chip_data** %7, align 8
  %50 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_read(i32 %48, i32 %51, i32* %5)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dev_err(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %140

61:                                               ; preds = %45
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.chip_data*, %struct.chip_data** %7, align 8
  %64 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %62, %65
  %67 = and i32 %66, 255
  %68 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %69 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.mt6397_chip* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i64 @platform_get_irq(%struct.platform_device* %73, i32 0)
  %75 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %76 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %78 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp sle i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %61
  %82 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %83 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %2, align 4
  br label %140

86:                                               ; preds = %61
  %87 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %88 = call i32 @mt6397_irq_init(%struct.mt6397_chip* %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %140

93:                                               ; preds = %86
  %94 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %95 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %117 [
    i32 130, label %97
    i32 129, label %107
    i32 128, label %107
  ]

97:                                               ; preds = %93
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* @mt6323_devs, align 4
  %101 = load i32, i32* @mt6323_devs, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %104 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @devm_mfd_add_devices(%struct.TYPE_5__* %99, i32 -1, i32 %100, i32 %102, i32* null, i32 0, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %126

107:                                              ; preds = %93, %93
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load i32, i32* @mt6397_devs, align 4
  %111 = load i32, i32* @mt6397_devs, align 4
  %112 = call i32 @ARRAY_SIZE(i32 %111)
  %113 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %114 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @devm_mfd_add_devices(%struct.TYPE_5__* %109, i32 -1, i32 %110, i32 %112, i32* null, i32 0, i32 %115)
  store i32 %116, i32* %4, align 4
  br label %126

117:                                              ; preds = %93
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %121 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dev_err(%struct.TYPE_5__* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %140

126:                                              ; preds = %107, %97
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load %struct.mt6397_chip*, %struct.mt6397_chip** %6, align 8
  %131 = getelementptr inbounds %struct.mt6397_chip, %struct.mt6397_chip* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @irq_domain_remove(i32 %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @dev_err(%struct.TYPE_5__* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %129, %126
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %138, %117, %91, %81, %55, %42, %33, %14
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.mt6397_chip* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local %struct.chip_data* @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt6397_chip*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mt6397_irq_init(%struct.mt6397_chip*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_5__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
