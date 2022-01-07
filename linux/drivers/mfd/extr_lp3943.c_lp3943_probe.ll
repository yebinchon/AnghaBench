; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lp3943.c_lp3943_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lp3943.c_lp3943_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lp3943 = type { i32, %struct.device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lp3943_regmap_config = common dso_local global i32 0, align 4
@lp3943_mux_cfg = common dso_local global i32 0, align 4
@lp3943_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lp3943_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lp3943*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.lp3943* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.lp3943* %12, %struct.lp3943** %6, align 8
  %13 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %14 = icmp ne %struct.lp3943* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @lp3943_regmap_config)
  %21 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %22 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %24 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %30 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %18
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = call i32 @dev_get_platdata(%struct.device* %34)
  %36 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %37 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %40 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %39, i32 0, i32 1
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load i32, i32* @lp3943_mux_cfg, align 4
  %42 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %43 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.lp3943*, %struct.lp3943** %6, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.lp3943* %45)
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load i32, i32* @lp3943_devs, align 4
  %49 = load i32, i32* @lp3943_devs, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = call i32 @devm_mfd_add_devices(%struct.device* %47, i32 -1, i32 %48, i32 %50, i32* null, i32 0, i32* null)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %33, %28, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.lp3943* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lp3943*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
