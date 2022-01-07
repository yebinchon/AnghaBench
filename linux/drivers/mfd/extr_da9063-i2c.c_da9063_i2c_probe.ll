; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-i2c.c_da9063_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9063-i2c.c_da9063_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.da9063 = type { i64, i64, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PMIC_DA9063_AD = common dso_local global i64 0, align 8
@da9063_ad_readable_table = common dso_local global i32 0, align 4
@da9063_regmap_config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@da9063_ad_writeable_table = common dso_local global i32 0, align 4
@da9063_ad_volatile_table = common dso_local global i32 0, align 4
@PMIC_TYPE_DA9063L = common dso_local global i64 0, align 8
@da9063l_bb_readable_table = common dso_local global i32 0, align 4
@da9063l_bb_writeable_table = common dso_local global i32 0, align 4
@da9063l_bb_volatile_table = common dso_local global i32 0, align 4
@da9063_bb_readable_table = common dso_local global i32 0, align 4
@da9063_bb_writeable_table = common dso_local global i32 0, align 4
@da9063_bb_volatile_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9063_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9063*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da9063* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.da9063* %11, %struct.da9063** %6, align 8
  %12 = load %struct.da9063*, %struct.da9063** %6, align 8
  %13 = icmp eq %struct.da9063* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.da9063*, %struct.da9063** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.da9063* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load %struct.da9063*, %struct.da9063** %6, align 8
  %24 = getelementptr inbounds %struct.da9063, %struct.da9063* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.da9063*, %struct.da9063** %6, align 8
  %29 = getelementptr inbounds %struct.da9063, %struct.da9063* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.da9063*, %struct.da9063** %6, align 8
  %34 = getelementptr inbounds %struct.da9063, %struct.da9063* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.da9063*, %struct.da9063** %6, align 8
  %36 = getelementptr inbounds %struct.da9063, %struct.da9063* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PMIC_DA9063_AD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  store i32* @da9063_ad_readable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 2), align 8
  store i32* @da9063_ad_writeable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 1), align 8
  store i32* @da9063_ad_volatile_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 0), align 8
  br label %50

41:                                               ; preds = %17
  %42 = load %struct.da9063*, %struct.da9063** %6, align 8
  %43 = getelementptr inbounds %struct.da9063, %struct.da9063* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PMIC_TYPE_DA9063L, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32* @da9063l_bb_readable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 2), align 8
  store i32* @da9063l_bb_writeable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 1), align 8
  store i32* @da9063l_bb_volatile_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 0), align 8
  br label %49

48:                                               ; preds = %41
  store i32* @da9063_bb_readable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 2), align 8
  store i32* @da9063_bb_writeable_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 1), align 8
  store i32* @da9063_bb_volatile_table, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @da9063_regmap_config, i32 0, i32 0), align 8
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %51, %struct.TYPE_3__* @da9063_regmap_config)
  %53 = load %struct.da9063*, %struct.da9063** %6, align 8
  %54 = getelementptr inbounds %struct.da9063, %struct.da9063* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.da9063*, %struct.da9063** %6, align 8
  %56 = getelementptr inbounds %struct.da9063, %struct.da9063* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load %struct.da9063*, %struct.da9063** %6, align 8
  %62 = getelementptr inbounds %struct.da9063, %struct.da9063* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.da9063*, %struct.da9063** %6, align 8
  %66 = getelementptr inbounds %struct.da9063, %struct.da9063* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %77

71:                                               ; preds = %50
  %72 = load %struct.da9063*, %struct.da9063** %6, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @da9063_device_init(%struct.da9063* %72, i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %71, %60, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.da9063* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9063*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @da9063_device_init(%struct.da9063*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
