; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menf21bmc.c_menf21bmc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menf21bmc.c_menf21bmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BMC_CMD_REV_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get BMC major revision\0A\00", align 1
@BMC_CMD_REV_MINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get BMC minor revision\0A\00", align 1
@BMC_CMD_REV_MAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get BMC main revision\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"FW Revision: %02d.%02d.%02d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to leave production mode\0A\00", align 1
@menf21bmc_cell = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to add BMC sub-devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @menf21bmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menf21bmc_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %12, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* @BMC_CMD_REV_MAJOR, align 4
  %27 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* @BMC_CMD_REV_MINOR, align 4
  %38 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %88

46:                                               ; preds = %35
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @BMC_CMD_REV_MAIN, align 4
  %49 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %88

57:                                               ; preds = %46
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = call i32 @menf21bmc_wdt_exit_prod_mode(%struct.i2c_client* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %88

73:                                               ; preds = %57
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* @menf21bmc_cell, align 4
  %77 = load i32, i32* @menf21bmc_cell, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = call i32 @devm_mfd_add_devices(i32* %75, i32 0, i32 %76, i32 %78, i32* null, i32 0, i32* null)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %68, %52, %41, %30, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @menf21bmc_wdt_exit_prod_mode(%struct.i2c_client*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
