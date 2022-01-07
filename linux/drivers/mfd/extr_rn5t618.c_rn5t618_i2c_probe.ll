; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rn5t618.c_rn5t618_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rn5t618.c_rn5t618_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rn5t618 = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.of_device_id = type { i64 }

@rn5t618_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to find matching DT ID\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rn5t618_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@rn5t618_cells = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to add sub-devices: %d\0A\00", align 1
@rn5t618_pm_power_off = common dso_local global %struct.rn5t618* null, align 8
@pm_power_off = common dso_local global i64 0, align 8
@rn5t618_power_off = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Poweroff callback already assigned\0A\00", align 1
@rn5t618_restart = common dso_local global i32 0, align 4
@rn5t618_restart_handler = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot register restart handler, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rn5t618_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn5t618_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.rn5t618*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @rn5t618_of_match, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.of_device_id* @of_match_device(i32 %9, %struct.TYPE_9__* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %6, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %104

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.rn5t618* @devm_kzalloc(%struct.TYPE_9__* %23, i32 16, i32 %24)
  store %struct.rn5t618* %25, %struct.rn5t618** %7, align 8
  %26 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %27 = icmp ne %struct.rn5t618* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %104

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.rn5t618* %33)
  %35 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %39 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %40, i32* @rn5t618_regmap_config)
  %42 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %43 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %45 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %31
  %50 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  %51 = getelementptr inbounds %struct.rn5t618, %struct.rn5t618* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %104

59:                                               ; preds = %31
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* @rn5t618_cells, align 4
  %63 = load i32, i32* @rn5t618_cells, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @devm_mfd_add_devices(%struct.TYPE_9__* %61, i32 -1, i32 %62, i32 %64, i32* null, i32 0, i32* null)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %104

74:                                               ; preds = %59
  %75 = load %struct.rn5t618*, %struct.rn5t618** %7, align 8
  store %struct.rn5t618* %75, %struct.rn5t618** @rn5t618_pm_power_off, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @of_device_is_system_power_controller(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load i64, i64* @pm_power_off, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @rn5t618_power_off, align 8
  store i64 %86, i64* @pm_power_off, align 8
  br label %91

87:                                               ; preds = %82
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = call i32 @dev_warn(%struct.TYPE_9__* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %85
  br label %92

92:                                               ; preds = %91, %74
  %93 = load i32, i32* @rn5t618_restart, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rn5t618_restart_handler, i32 0, i32 1), align 4
  store i32 192, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rn5t618_restart_handler, i32 0, i32 0), align 4
  %94 = call i32 @register_restart_handler(%struct.TYPE_8__* @rn5t618_restart_handler)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %97, %68, %49, %28, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.rn5t618* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rn5t618*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @of_device_is_system_power_controller(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @register_restart_handler(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
