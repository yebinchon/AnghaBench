; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_lm3560.c_lm3560_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm3560_flash = type { i32, i32*, %struct.lm3560_platform_data*, i32 }
%struct.lm3560_platform_data = type { i8**, i8**, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm3560_regmap = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM3560_PEAK_3600mA = common dso_local global i32 0, align 4
@LM3560_FLASH_TOUT_MAX = common dso_local global i32 0, align 4
@LM3560_FLASH_BRT_MAX = common dso_local global i8* null, align 8
@LM3560_LED0 = common dso_local global i64 0, align 8
@LM3560_TORCH_BRT_MAX = common dso_local global i8* null, align 8
@LM3560_LED1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"lm3560-led0\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lm3560-led1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm3560_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3560_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm3560_flash*, align 8
  %7 = alloca %struct.lm3560_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.lm3560_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lm3560_platform_data* %11, %struct.lm3560_platform_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @devm_kzalloc(i32* %13, i32 32, i32 %14)
  %16 = bitcast i8* %15 to %struct.lm3560_flash*
  store %struct.lm3560_flash* %16, %struct.lm3560_flash** %6, align 8
  %17 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %18 = icmp eq %struct.lm3560_flash* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %23, i32* @lm3560_regmap)
  %25 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %26 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %28 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %34 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %120

38:                                               ; preds = %22
  %39 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %40 = icmp eq %struct.lm3560_platform_data* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kzalloc(i32* %43, i32 24, i32 %44)
  %46 = bitcast i8* %45 to %struct.lm3560_platform_data*
  store %struct.lm3560_platform_data* %46, %struct.lm3560_platform_data** %7, align 8
  %47 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %48 = icmp eq %struct.lm3560_platform_data* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %120

52:                                               ; preds = %41
  %53 = load i32, i32* @LM3560_PEAK_3600mA, align 4
  %54 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %55 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @LM3560_FLASH_TOUT_MAX, align 4
  %57 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %58 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @LM3560_FLASH_BRT_MAX, align 8
  %60 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %61 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @LM3560_LED0, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i8*, i8** @LM3560_TORCH_BRT_MAX, align 8
  %66 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %67 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* @LM3560_LED0, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i8*, i8** @LM3560_FLASH_BRT_MAX, align 8
  %72 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %72, i32 0, i32 1
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* @LM3560_LED1, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  %77 = load i8*, i8** @LM3560_TORCH_BRT_MAX, align 8
  %78 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %79 = getelementptr inbounds %struct.lm3560_platform_data, %struct.lm3560_platform_data* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = load i64, i64* @LM3560_LED1, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  store i8* %77, i8** %82, align 8
  br label %83

83:                                               ; preds = %52, %38
  %84 = load %struct.lm3560_platform_data*, %struct.lm3560_platform_data** %7, align 8
  %85 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %86 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %85, i32 0, i32 2
  store %struct.lm3560_platform_data* %84, %struct.lm3560_platform_data** %86, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %90 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %92 = getelementptr inbounds %struct.lm3560_flash, %struct.lm3560_flash* %91, i32 0, i32 0
  %93 = call i32 @mutex_init(i32* %92)
  %94 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %95 = load i64, i64* @LM3560_LED0, align 8
  %96 = call i32 @lm3560_subdev_init(%struct.lm3560_flash* %94, i64 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %120

101:                                              ; preds = %83
  %102 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %103 = load i64, i64* @LM3560_LED1, align 8
  %104 = call i32 @lm3560_subdev_init(%struct.lm3560_flash* %102, i64 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %120

109:                                              ; preds = %101
  %110 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %111 = call i32 @lm3560_init_device(%struct.lm3560_flash* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %120

116:                                              ; preds = %109
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load %struct.lm3560_flash*, %struct.lm3560_flash** %6, align 8
  %119 = call i32 @i2c_set_clientdata(%struct.i2c_client* %117, %struct.lm3560_flash* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %114, %107, %99, %49, %32, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.lm3560_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm3560_subdev_init(%struct.lm3560_flash*, i64, i8*) #1

declare dso_local i32 @lm3560_init_device(%struct.lm3560_flash*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm3560_flash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
