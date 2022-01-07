; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77686.c_max77686_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77686.c_max77686_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.regmap_irq_chip = type { i32 }
%struct.mfd_cell = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.max77686_dev = type { i64, i32*, i32, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TYPE_MAX77686 = common dso_local global i64 0, align 8
@max77686_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@max77686_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@max77686_devs = common dso_local global %struct.mfd_cell* null, align 8
@max77802_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@max77802_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@max77802_devs = common dso_local global %struct.mfd_cell* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@MAX77686_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"device not found on this channel (this is not an error)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to add PMIC irq chip: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to add MFD devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max77686_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max77686_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.regmap_irq_chip*, align 8
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.max77686_dev* null, %struct.max77686_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.max77686_dev* @devm_kzalloc(i32* %12, i32 40, i32 %13)
  store %struct.max77686_dev* %14, %struct.max77686_dev** %4, align 8
  %15 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %16 = icmp ne %struct.max77686_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %133

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.max77686_dev* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i64 @of_device_get_match_data(i32* %25)
  %27 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %28 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %32 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %35 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %34, i32 0, i32 5
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %40 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %42 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYPE_MAX77686, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %20
  store %struct.regmap_config* @max77686_regmap_config, %struct.regmap_config** %7, align 8
  store %struct.regmap_irq_chip* @max77686_irq_chip, %struct.regmap_irq_chip** %8, align 8
  %47 = load %struct.mfd_cell*, %struct.mfd_cell** @max77686_devs, align 8
  store %struct.mfd_cell* %47, %struct.mfd_cell** %9, align 8
  %48 = load %struct.mfd_cell*, %struct.mfd_cell** @max77686_devs, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %48)
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %20
  store %struct.regmap_config* @max77802_regmap_config, %struct.regmap_config** %7, align 8
  store %struct.regmap_irq_chip* @max77802_irq_chip, %struct.regmap_irq_chip** %8, align 8
  %51 = load %struct.mfd_cell*, %struct.mfd_cell** @max77802_devs, align 8
  store %struct.mfd_cell* %51, %struct.mfd_cell** %9, align 8
  %52 = load %struct.mfd_cell*, %struct.mfd_cell** @max77802_devs, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %57 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %55, %struct.regmap_config* %56)
  %58 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %59 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %61 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %67 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %71 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %133

76:                                               ; preds = %54
  %77 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %78 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MAX77686_REG_DEVICE_ID, align 4
  %81 = call i32 @regmap_read(i32 %79, i32 %80, i32* %5)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %86 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %133

91:                                               ; preds = %76
  %92 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %95 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %98 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %101 = load i32, i32* @IRQF_ONESHOT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IRQF_SHARED, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %8, align 8
  %106 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %107 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %106, i32 0, i32 2
  %108 = call i32 @devm_regmap_add_irq_chip(i32* %93, i32 %96, i32 %99, i32 %104, i32 0, %struct.regmap_irq_chip* %105, i32* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %91
  %112 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %6, align 4
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %133

117:                                              ; preds = %91
  %118 = load %struct.max77686_dev*, %struct.max77686_dev** %4, align 8
  %119 = getelementptr inbounds %struct.max77686_dev, %struct.max77686_dev* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @devm_mfd_add_devices(i32* %120, i32 -1, %struct.mfd_cell* %121, i32 %122, i32* null, i32 0, i32* null)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %117
  %127 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %126, %111, %84, %65, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.max77686_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max77686_dev*) #1

declare dso_local i64 @of_device_get_match_data(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i32, i32, %struct.regmap_irq_chip*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
