; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_3__, %struct.i2c_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.eeprom_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_SIZE = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCG-\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"VGN-\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Vaio EEPROM detected, enabling privacy protection\0A\00", align 1
@VAIO = common dso_local global i32 0, align 4
@eeprom_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @eeprom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.eeprom_data*, align 8
  %8 = alloca [4 x i8], align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.eeprom_data* @devm_kzalloc(%struct.TYPE_3__* %13, i32 12, i32 %14)
  store %struct.eeprom_data* %15, %struct.eeprom_data** %7, align 8
  %16 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %17 = icmp ne %struct.eeprom_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %23 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EEPROM_SIZE, align 4
  %26 = call i32 @memset(i32 %24, i32 255, i32 %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %29 = call i32 @i2c_set_clientdata(%struct.i2c_client* %27, %struct.eeprom_data* %28)
  %30 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %31 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* @UNKNOWN, align 4
  %34 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %35 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 87
  br i1 %39, label %40, label %73

40:                                               ; preds = %21
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %42 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %43 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 128)
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 129)
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %50, i8* %51, align 1
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %52, i32 130)
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %53, i8* %54, align 1
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = call signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 131)
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 %56, i8* %57, align 1
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %59 = call i32 @memcmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %63 = call i32 @memcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %61, %45
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = call i32 @dev_info(%struct.TYPE_3__* %67, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @VAIO, align 4
  %70 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %71 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %61
  br label %73

73:                                               ; preds = %72, %40, %21
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @sysfs_create_bin_file(i32* %76, i32* @eeprom_attr)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.eeprom_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.eeprom_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local signext i8 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
