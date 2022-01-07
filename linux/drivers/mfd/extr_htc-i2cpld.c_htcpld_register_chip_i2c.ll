; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_register_chip_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_register_chip_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.htcpld_data = type { %struct.htcpld_chip* }
%struct.htcpld_chip = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.htcpld_core_platform_data = type { i32, %struct.htcpld_chip_platform_data* }
%struct.htcpld_chip_platform_data = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { %struct.htcpld_chip*, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Chip at i2c address 0x%x: Invalid i2c adapter %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"i2c adapter %d non-functional\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"htcpld-chip\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unable to add I2C device for 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Chip_0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @htcpld_register_chip_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_register_chip_i2c(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.htcpld_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.htcpld_core_platform_data*, align 8
  %9 = alloca %struct.htcpld_chip*, align 8
  %10 = alloca %struct.htcpld_chip_platform_data*, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.i2c_board_info, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device* %16)
  store %struct.htcpld_core_platform_data* %17, %struct.htcpld_core_platform_data** %8, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = call %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.htcpld_data* %19, %struct.htcpld_data** %6, align 8
  %20 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %21 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %20, i32 0, i32 0
  %22 = load %struct.htcpld_chip*, %struct.htcpld_chip** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %22, i64 %24
  store %struct.htcpld_chip* %25, %struct.htcpld_chip** %9, align 8
  %26 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %8, align 8
  %27 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %26, i32 0, i32 1
  %28 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %28, i64 %30
  store %struct.htcpld_chip_platform_data* %31, %struct.htcpld_chip_platform_data** %10, align 8
  %32 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %8, align 8
  %33 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.i2c_adapter* @i2c_get_adapter(i32 %34)
  store %struct.i2c_adapter* %35, %struct.i2c_adapter** %11, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %37 = icmp ne %struct.i2c_adapter* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %2
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %41 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %8, align 8
  %44 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %110

49:                                               ; preds = %2
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %51 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %52 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %8, align 8
  %57 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %110

62:                                               ; preds = %49
  %63 = call i32 @memset(%struct.i2c_board_info* %13, i32 0, i32 16)
  %64 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %65 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @I2C_NAME_SIZE, align 4
  %71 = call i32 @strlcpy(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %73 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %13, i32 0, i32 0
  store %struct.htcpld_chip* %72, %struct.htcpld_chip** %73, align 8
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %75 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %74, %struct.i2c_board_info* %13)
  store %struct.i2c_client* %75, %struct.i2c_client** %12, align 8
  %76 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %77 = icmp ne %struct.i2c_client* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %62
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %81 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %110

86:                                               ; preds = %62
  %87 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %88 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %89 = call i32 @i2c_set_clientdata(%struct.i2c_client* %87, %struct.htcpld_chip* %88)
  %90 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I2C_NAME_SIZE, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @snprintf(i32 %92, i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %99 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %100 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %99, i32 0, i32 2
  store %struct.i2c_client* %98, %struct.i2c_client** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %102 = call i32 @htcpld_chip_reset(%struct.i2c_client* %101)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %104 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %105 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %103, i32 %106)
  %108 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %109 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %86, %78, %54, %38
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.i2c_adapter* @i2c_get_adapter(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.htcpld_chip*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @htcpld_chip_reset(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
