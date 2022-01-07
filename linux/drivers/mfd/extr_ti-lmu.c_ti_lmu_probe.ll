; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ti-lmu.c_ti_lmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ti-lmu.c_ti_lmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.ti_lmu_data = type { i32, i32, i32 }
%struct.regmap_config = type { i32, i32, i32, i32 }
%struct.ti_lmu = type { %struct.device*, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can not request enable GPIO: %d\0A\00", align 1
@ti_lmu_disable_hw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ti_lmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_lmu_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ti_lmu_data*, align 8
  %8 = alloca %struct.regmap_config, align 4
  %9 = alloca %struct.ti_lmu*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.ti_lmu_data* @of_device_get_match_data(%struct.device* %13)
  store %struct.ti_lmu_data* %14, %struct.ti_lmu_data** %7, align 8
  %15 = load %struct.ti_lmu_data*, %struct.ti_lmu_data** %7, align 8
  %16 = icmp ne %struct.ti_lmu_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %115

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ti_lmu* @devm_kzalloc(%struct.device* %21, i32 24, i32 %22)
  store %struct.ti_lmu* %23, %struct.ti_lmu** %9, align 8
  %24 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %25 = icmp ne %struct.ti_lmu* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %115

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %33 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %32, i32 0, i32 0
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = call i32 @memset(%struct.regmap_config* %8, i32 0, i32 16)
  %35 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %8, i32 0, i32 0
  store i32 8, i32* %35, align 4
  %36 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %8, i32 0, i32 1
  store i32 8, i32* %36, align 4
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %8, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ti_lmu_data*, %struct.ti_lmu_data** %7, align 8
  %42 = getelementptr inbounds %struct.ti_lmu_data, %struct.ti_lmu_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %8, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %45, %struct.regmap_config* %8)
  %47 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %48 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %50 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %29
  %55 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %56 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %115

59:                                               ; preds = %29
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %62 = call i32 @devm_gpiod_get_optional(%struct.device* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %64 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %66 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %59
  %71 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %72 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %115

79:                                               ; preds = %59
  %80 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %81 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %82 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ti_lmu_enable_hw(%struct.ti_lmu* %80, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %79
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load i32, i32* @ti_lmu_disable_hw, align 4
  %92 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %93 = call i32 @devm_add_action_or_reset(%struct.device* %90, i32 %91, %struct.ti_lmu* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %115

98:                                               ; preds = %89
  %99 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %100 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %99, i32 0, i32 1
  %101 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %100)
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %104 = call i32 @i2c_set_clientdata(%struct.i2c_client* %102, %struct.ti_lmu* %103)
  %105 = load %struct.ti_lmu*, %struct.ti_lmu** %9, align 8
  %106 = getelementptr inbounds %struct.ti_lmu, %struct.ti_lmu* %105, i32 0, i32 0
  %107 = load %struct.device*, %struct.device** %106, align 8
  %108 = load %struct.ti_lmu_data*, %struct.ti_lmu_data** %7, align 8
  %109 = getelementptr inbounds %struct.ti_lmu_data, %struct.ti_lmu_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ti_lmu_data*, %struct.ti_lmu_data** %7, align 8
  %112 = getelementptr inbounds %struct.ti_lmu_data, %struct.ti_lmu_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @devm_mfd_add_devices(%struct.device* %107, i32 0, i32 %110, i32 %113, i32* null, i32 0, i32* null)
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %98, %96, %87, %70, %54, %26, %17
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.ti_lmu_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.ti_lmu* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memset(%struct.regmap_config*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_lmu_enable_hw(%struct.ti_lmu*, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.ti_lmu*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ti_lmu*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
