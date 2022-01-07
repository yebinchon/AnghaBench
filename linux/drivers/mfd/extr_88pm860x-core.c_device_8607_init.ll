; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_8607_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_8607_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm860x_chip = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.pm860x_platform_data = type { i64 }

@PM8607_CHIP_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read CHIP ID: %d\0A\00", align 1
@PM8607_VERSION_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Marvell 88PM8607 (ID: %02x) detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to detect Marvell 88PM8607. Chip ID: %02x\0A\00", align 1
@PM8607_BUCK3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to read BUCK3 register: %d\0A\00", align 1
@PM8607_BUCK3_DOUBLE = common dso_local global i32 0, align 4
@PM8607_B0_MISC1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to read MISC1 register: %d\0A\00", align 1
@PI2C_PORT = common dso_local global i64 0, align 8
@PM8607_B0_MISC1_PI2C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to access MISC1:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.i2c_client*, %struct.pm860x_platform_data*)* @device_8607_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_8607_init(%struct.pm860x_chip* %0, %struct.i2c_client* %1, %struct.pm860x_platform_data* %2) #0 {
  %4 = alloca %struct.pm860x_chip*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.pm860x_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store %struct.pm860x_platform_data* %2, %struct.pm860x_platform_data** %6, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load i32, i32* @PM8607_CHIP_ID, align 4
  %11 = call i32 @pm860x_reg_read(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %16 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %120

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @PM8607_VERSION_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %30 [
    i32 64, label %24
    i32 80, label %24
  ]

24:                                               ; preds = %20, %20
  %25 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %26 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dev_info(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %32 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %120

36:                                               ; preds = %24
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = load i32, i32* @PM8607_BUCK3, align 4
  %39 = call i32 @pm860x_reg_read(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %44 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %120

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PM8607_BUCK3_DOUBLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %55 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = load i32, i32* @PM8607_B0_MISC1, align 4
  %59 = call i32 @pm860x_reg_read(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %64 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %120

68:                                               ; preds = %56
  %69 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %70 = icmp ne %struct.pm860x_platform_data* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %73 = getelementptr inbounds %struct.pm860x_platform_data, %struct.pm860x_platform_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PI2C_PORT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @PM8607_B0_MISC1_PI2C, align 4
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %71, %68
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %77
  %81 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %82 = load i32, i32* @PM8607_B0_MISC1, align 4
  %83 = load i32, i32* @PM8607_B0_MISC1_PI2C, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pm860x_set_bits(%struct.i2c_client* %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %90 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @dev_err(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %120

94:                                               ; preds = %80
  %95 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %96 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %97 = call i32 @device_irq_init(%struct.pm860x_chip* %95, %struct.pm860x_platform_data* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %120

101:                                              ; preds = %94
  %102 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %103 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %104 = call i32 @device_regulator_init(%struct.pm860x_chip* %102, %struct.pm860x_platform_data* %103)
  %105 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %106 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %107 = call i32 @device_rtc_init(%struct.pm860x_chip* %105, %struct.pm860x_platform_data* %106)
  %108 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %109 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %110 = call i32 @device_onkey_init(%struct.pm860x_chip* %108, %struct.pm860x_platform_data* %109)
  %111 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %112 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %113 = call i32 @device_touch_init(%struct.pm860x_chip* %111, %struct.pm860x_platform_data* %112)
  %114 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %115 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %116 = call i32 @device_power_init(%struct.pm860x_chip* %114, %struct.pm860x_platform_data* %115)
  %117 = load %struct.pm860x_chip*, %struct.pm860x_chip** %4, align 8
  %118 = load %struct.pm860x_platform_data*, %struct.pm860x_platform_data** %6, align 8
  %119 = call i32 @device_codec_init(%struct.pm860x_chip* %117, %struct.pm860x_platform_data* %118)
  br label %120

120:                                              ; preds = %101, %100, %88, %62, %42, %30, %14
  ret void
}

declare dso_local i32 @pm860x_reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pm860x_set_bits(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @device_irq_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_regulator_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_rtc_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_onkey_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_touch_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_power_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

declare dso_local i32 @device_codec_init(%struct.pm860x_chip*, %struct.pm860x_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
