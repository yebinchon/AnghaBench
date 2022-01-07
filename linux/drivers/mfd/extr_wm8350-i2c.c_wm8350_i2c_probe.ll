; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-i2c.c_wm8350_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-i2c.c_wm8350_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.wm8350 = type { i32*, i32 }
%struct.wm8350_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wm8350_regmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wm8350_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.wm8350*, align 8
  %7 = alloca %struct.wm8350_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.wm8350_platform_data* @dev_get_platdata(i32* %10)
  store %struct.wm8350_platform_data* %11, %struct.wm8350_platform_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.wm8350* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.wm8350* %15, %struct.wm8350** %6, align 8
  %16 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %17 = icmp eq %struct.wm8350* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @wm8350_regmap)
  %24 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %25 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %27 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %33 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %21
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.wm8350* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %48 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wm8350_platform_data*, %struct.wm8350_platform_data** %7, align 8
  %54 = call i32 @wm8350_device_init(%struct.wm8350* %49, i32 %52, %struct.wm8350_platform_data* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %41, %31, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.wm8350_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.wm8350* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.wm8350*) #1

declare dso_local i32 @wm8350_device_init(%struct.wm8350*, i32, %struct.wm8350_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
