; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583.c_rc5t583_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.rc5t583 = type { i32*, i32 }
%struct.rc5t583_platform_data = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Err: Platform data not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rc5t583_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"regmap initialization failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IRQ init failed: %d\0A\00", align 1
@rc5t583_subdevs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"add mfd devices failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rc5t583_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca %struct.rc5t583_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.rc5t583_platform_data* @dev_get_platdata(i32* %10)
  store %struct.rc5t583_platform_data* %11, %struct.rc5t583_platform_data** %7, align 8
  %12 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %7, align 8
  %13 = icmp ne %struct.rc5t583_platform_data* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.rc5t583* @devm_kzalloc(i32* %22, i32 16, i32 %23)
  store %struct.rc5t583* %24, %struct.rc5t583** %6, align 8
  %25 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %26 = icmp ne %struct.rc5t583* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %104

30:                                               ; preds = %20
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %34 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %37 = call i32 @i2c_set_clientdata(%struct.i2c_client* %35, %struct.rc5t583* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %38, i32* @rc5t583_regmap_config)
  %40 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %41 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %43 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %30
  %48 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %49 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %104

57:                                               ; preds = %30
  %58 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %59 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %7, align 8
  %60 = call i32 @rc5t583_clear_ext_power_req(%struct.rc5t583* %58, %struct.rc5t583_platform_data* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %104

65:                                               ; preds = %57
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rc5t583_platform_data*, %struct.rc5t583_platform_data** %7, align 8
  %76 = getelementptr inbounds %struct.rc5t583_platform_data, %struct.rc5t583_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @rc5t583_irq_init(%struct.rc5t583* %71, i32 %74, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %70
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %89 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @rc5t583_subdevs, align 4
  %92 = load i32, i32* @rc5t583_subdevs, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = call i32 @devm_mfd_add_devices(i32* %90, i32 -1, i32 %91, i32 %93, i32* null, i32 0, i32* null)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %97, %63, %47, %27, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.rc5t583_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.rc5t583* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rc5t583*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rc5t583_clear_ext_power_req(%struct.rc5t583*, %struct.rc5t583_platform_data*) #1

declare dso_local i32 @rc5t583_irq_init(%struct.rc5t583*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
