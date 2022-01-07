; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp873x.c_lp873x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp873x.c_lp873x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp873x = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp873x_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initialize register map: %d\0A\00", align 1
@LP873X_REG_OTP_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to read OTP ID\0A\00", align 1
@LP873X_OTP_REV_OTP_ID = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@lp873x_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp873x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp873x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp873x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lp873x* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.lp873x* %12, %struct.lp873x** %6, align 8
  %13 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %14 = icmp ne %struct.lp873x* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %22 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @lp873x_regmap_config)
  %25 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %26 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %28 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %18
  %33 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %34 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %38 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %18
  %44 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %45 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LP873X_REG_OTP_REV, align 4
  %48 = call i32 @regmap_read(i32 %46, i32 %47, i32* %8)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %53 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %75

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @LP873X_OTP_REV_OTP_ID, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %62 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %65 = call i32 @i2c_set_clientdata(%struct.i2c_client* %63, %struct.lp873x* %64)
  %66 = load %struct.lp873x*, %struct.lp873x** %6, align 8
  %67 = getelementptr inbounds %struct.lp873x, %struct.lp873x* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %70 = load i32, i32* @lp873x_cells, align 4
  %71 = load i32, i32* @lp873x_cells, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = call i32 @mfd_add_devices(i32* %68, i32 %69, i32 %70, i32 %72, i32* null, i32 0, i32* null)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %57, %51, %32, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.lp873x* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp873x*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
