; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp87565.c_lp87565_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp87565.c_lp87565_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp87565 = type { i32, i32, i32*, i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp87565_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize register map: %d\0A\00", align 1
@LP87565_REG_OTP_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to read OTP ID\0A\00", align 1
@LP87565_OTP_REV_OTP_ID = common dso_local global i32 0, align 4
@of_lp87565_match_table = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@lp87565_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp87565_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp87565_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp87565*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.lp87565* @devm_kzalloc(i32* %11, i32 24, i32 %12)
  store %struct.lp87565* %13, %struct.lp87565** %6, align 8
  %14 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %15 = icmp ne %struct.lp87565* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %89

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %23 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %24, i32* @lp87565_regmap_config)
  %26 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %27 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %29 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %35 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %39 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %89

44:                                               ; preds = %19
  %45 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %46 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @LP87565_REG_OTP_REV, align 4
  %49 = call i32 @regmap_read(i32 %47, i32 %48, i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %54 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %89

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LP87565_OTP_REV_OTP_ID, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %63 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @of_lp87565_match_table, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call %struct.of_device_id* @of_match_device(i32 %64, i32* %66)
  store %struct.of_device_id* %67, %struct.of_device_id** %7, align 8
  %68 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %69 = icmp ne %struct.of_device_id* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %72 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %76 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %58
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %80 = call i32 @i2c_set_clientdata(%struct.i2c_client* %78, %struct.lp87565* %79)
  %81 = load %struct.lp87565*, %struct.lp87565** %6, align 8
  %82 = getelementptr inbounds %struct.lp87565, %struct.lp87565* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %85 = load i32, i32* @lp87565_cells, align 4
  %86 = load i32, i32* @lp87565_cells, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @devm_mfd_add_devices(i32* %83, i32 %84, i32 %85, i32 %87, i32* null, i32 0, i32* null)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %77, %52, %33, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.lp87565* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp87565*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
