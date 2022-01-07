; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3646.c_lm3646_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3646_flash = type { i32*, %struct.lm3646_platform_data*, i32 }
%struct.lm3646_platform_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3646_regmap = common dso_local global i32 0, align 4
@LM3646_FLASH_TOUT_MAX = common dso_local global i32 0, align 4
@LM3646_LED1_TORCH_BRT_MAX = common dso_local global i32 0, align 4
@LM3646_LED1_FLASH_BRT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3646_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3646_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3646_flash*, align 8
  %7 = alloca %struct.lm3646_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm3646_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm3646_platform_data* %11, %struct.lm3646_platform_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(i32* %13, i32 24, i32 %14)
  %16 = bitcast i8* %15 to %struct.lm3646_flash*
  store %struct.lm3646_flash* %16, %struct.lm3646_flash** %6, align 8
  %17 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %18 = icmp eq %struct.lm3646_flash* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @lm3646_regmap)
  %25 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %26 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %28 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %34 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %22
  %38 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %39 = icmp eq %struct.lm3646_platform_data* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @devm_kzalloc(i32* %42, i32 12, i32 %43)
  %45 = bitcast i8* %44 to %struct.lm3646_platform_data*
  store %struct.lm3646_platform_data* %45, %struct.lm3646_platform_data** %7, align 8
  %46 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %47 = icmp eq %struct.lm3646_platform_data* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %40
  %52 = load i32, i32* @LM3646_FLASH_TOUT_MAX, align 4
  %53 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %54 = getelementptr inbounds %struct.lm3646_platform_data, %struct.lm3646_platform_data* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @LM3646_LED1_TORCH_BRT_MAX, align 4
  %56 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %57 = getelementptr inbounds %struct.lm3646_platform_data, %struct.lm3646_platform_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @LM3646_LED1_FLASH_BRT_MAX, align 4
  %59 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %60 = getelementptr inbounds %struct.lm3646_platform_data, %struct.lm3646_platform_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %37
  %62 = load %struct.lm3646_platform_data*, %struct.lm3646_platform_data** %7, align 8
  %63 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %64 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %63, i32 0, i32 1
  store %struct.lm3646_platform_data* %62, %struct.lm3646_platform_data** %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %68 = getelementptr inbounds %struct.lm3646_flash, %struct.lm3646_flash* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %70 = call i32 @lm3646_subdev_init(%struct.lm3646_flash* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %86

75:                                               ; preds = %61
  %76 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %77 = call i32 @lm3646_init_device(%struct.lm3646_flash* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %86

82:                                               ; preds = %75
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load %struct.lm3646_flash*, %struct.lm3646_flash** %6, align 8
  %85 = call i32 @i2c_set_clientdata(%struct.i2c_client* %83, %struct.lm3646_flash* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %80, %73, %48, %32, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.lm3646_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @lm3646_subdev_init(%struct.lm3646_flash*) #1

declare dso_local i32 @lm3646_init_device(%struct.lm3646_flash*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3646_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
