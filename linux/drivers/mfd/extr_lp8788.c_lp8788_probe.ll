; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788.c_lp8788_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp8788.c_lp8788_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp8788 = type { i32*, %struct.lp8788_platform_data*, i32 }
%struct.lp8788_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp8788_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"regmap init i2c err: %d\0A\00", align 1
@lp8788_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp8788_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp8788*, align 8
  %7 = alloca %struct.lp8788_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.lp8788_platform_data* @dev_get_platdata(i32* %10)
  store %struct.lp8788_platform_data* %11, %struct.lp8788_platform_data** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lp8788* @devm_kzalloc(i32* %13, i32 24, i32 %14)
  store %struct.lp8788* %15, %struct.lp8788** %6, align 8
  %16 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %17 = icmp ne %struct.lp8788* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @lp8788_regmap_config)
  %24 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %25 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %27 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %33 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %21
  %42 = load %struct.lp8788_platform_data*, %struct.lp8788_platform_data** %7, align 8
  %43 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %44 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %43, i32 0, i32 1
  store %struct.lp8788_platform_data* %42, %struct.lp8788_platform_data** %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %48 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %51 = call i32 @i2c_set_clientdata(%struct.i2c_client* %49, %struct.lp8788* %50)
  %52 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %53 = call i32 @lp8788_platform_init(%struct.lp8788* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %41
  %59 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lp8788_irq_init(%struct.lp8788* %59, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %76

68:                                               ; preds = %58
  %69 = load %struct.lp8788*, %struct.lp8788** %6, align 8
  %70 = getelementptr inbounds %struct.lp8788, %struct.lp8788* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @lp8788_devs, align 4
  %73 = load i32, i32* @lp8788_devs, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @mfd_add_devices(i32* %71, i32 -1, i32 %72, i32 %74, i32* null, i32 0, i32* null)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %66, %56, %31, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.lp8788_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.lp8788* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp8788*) #1

declare dso_local i32 @lp8788_platform_init(%struct.lp8788*) #1

declare dso_local i32 @lp8788_irq_init(%struct.lp8788*, i32) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
