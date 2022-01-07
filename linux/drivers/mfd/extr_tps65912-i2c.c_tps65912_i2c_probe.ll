; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-i2c.c_tps65912_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-i2c.c_tps65912_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps65912 = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65912_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize register map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65912_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65912_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps65912*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tps65912* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.tps65912* %10, %struct.tps65912** %6, align 8
  %11 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %12 = icmp ne %struct.tps65912* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.tps65912* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %23 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %28 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %29, i32* @tps65912_regmap_config)
  %31 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %32 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %34 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %16
  %39 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %40 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %44 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %16
  %48 = load %struct.tps65912*, %struct.tps65912** %6, align 8
  %49 = call i32 @tps65912_device_init(%struct.tps65912* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %38, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.tps65912* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65912*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tps65912_device_init(%struct.tps65912*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
