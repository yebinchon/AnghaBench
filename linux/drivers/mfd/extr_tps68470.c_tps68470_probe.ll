; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps68470.c_tps68470_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps68470.c_tps68470_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@tps68470_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"devm_regmap_init_i2c Error %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TPS68470 Init Error %d\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@tps68470s = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"devm_mfd_add_devices failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tps68470_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps68470_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %9, i32* @tps68470_regmap_config)
  store %struct.regmap* %10, %struct.regmap** %5, align 8
  %11 = load %struct.regmap*, %struct.regmap** %5, align 8
  %12 = call i64 @IS_ERR(%struct.regmap* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.regmap* %16)
  %18 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.regmap* %23)
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = call i32 @tps68470_chip_init(%struct.device* %25, %struct.regmap* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %21
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %38 = load i32, i32* @tps68470s, align 4
  %39 = load i32, i32* @tps68470s, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @devm_mfd_add_devices(%struct.device* %36, i32 %37, i32 %38, i32 %40, i32* null, i32 0, i32* null)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44, %30, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.regmap*) #1

declare dso_local i32 @tps68470_chip_init(%struct.device*, %struct.regmap*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
