; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_max6875.c_max6875_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_max6875.c_max6875_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max6875_data = type { i32, i32 }

@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@user_eeprom_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6875_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6875_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.max6875_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.max6875_data* @kzalloc(i32 8, i32 %31)
  store %struct.max6875_data* %32, %struct.max6875_data** %7, align 8
  %33 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %34 = icmp ne %struct.max6875_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 2
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %40, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  %46 = call i32 @i2c_new_dummy_device(%struct.i2c_adapter* %41, i32 %45)
  %47 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %48 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %50 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %56 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %8, align 4
  br label %79

59:                                               ; preds = %38
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %62 = call i32 @i2c_set_clientdata(%struct.i2c_client* %60, %struct.max6875_data* %61)
  %63 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %64 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_create_bin_file(i32* %68, i32* @user_eeprom_attr)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %74

73:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %83

74:                                               ; preds = %72
  %75 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %76 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @i2c_unregister_device(i32 %77)
  br label %79

79:                                               ; preds = %74, %54
  %80 = load %struct.max6875_data*, %struct.max6875_data** %7, align 8
  %81 = call i32 @kfree(%struct.max6875_data* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %73, %35, %27, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.max6875_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_new_dummy_device(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max6875_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.max6875_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
