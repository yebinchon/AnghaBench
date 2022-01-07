; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-i2c.c_fimc_is_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is-i2c.c_fimc_is_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.fimc_is_i2c = type { %struct.i2c_adapter, i32 }
%struct.i2c_adapter = type { %struct.TYPE_7__, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.device_node* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"i2c_isp\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get the clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"exynos4x12-isp-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@fimc_is_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fimc_is_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.fimc_is_i2c*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fimc_is_i2c* @devm_kzalloc(%struct.TYPE_8__* %13, i32 48, i32 %14)
  store %struct.fimc_is_i2c* %15, %struct.fimc_is_i2c** %5, align 8
  %16 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %17 = icmp ne %struct.fimc_is_i2c* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %84

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @devm_clk_get(%struct.TYPE_8__* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %26 = getelementptr inbounds %struct.fimc_is_i2c, %struct.fimc_is_i2c* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %28 = getelementptr inbounds %struct.fimc_is_i2c, %struct.fimc_is_i2c* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_err(%struct.TYPE_8__* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %37 = getelementptr inbounds %struct.fimc_is_i2c, %struct.fimc_is_i2c* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %21
  %41 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.fimc_is_i2c, %struct.fimc_is_i2c* %41, i32 0, i32 0
  store %struct.i2c_adapter* %42, %struct.i2c_adapter** %6, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.device_node* %43, %struct.device_node** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strscpy(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %56 = load i32, i32* @THIS_MODULE, align 4
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %59, i32 0, i32 2
  store i32* @fimc_is_i2c_algorithm, i32** %60, align 8
  %61 = load i32, i32* @I2C_CLASS_SPD, align 4
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.fimc_is_i2c*, %struct.fimc_is_i2c** %5, align 8
  %66 = call i32 @platform_set_drvdata(%struct.platform_device* %64, %struct.fimc_is_i2c* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %68)
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %71 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %40
  br label %79

75:                                               ; preds = %40
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = call i32 @pm_suspend_ignore_children(%struct.TYPE_7__* %77, i32 0)
  store i32 0, i32* %2, align 4
  br label %84

79:                                               ; preds = %74
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @pm_runtime_disable(%struct.TYPE_8__* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %75, %32, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.fimc_is_i2c* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fimc_is_i2c*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
