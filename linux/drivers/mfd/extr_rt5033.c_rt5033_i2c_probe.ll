; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rt5033.c_rt5033_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rt5033.c_rt5033_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.rt5033_dev = type { i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5033_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate register map.\0A\00", align 1
@RT5033_REG_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Device not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Device found Device ID: %04x\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@rt5033_irq_chip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@rt5033_devs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to add RT5033 child devices.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rt5033_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5033_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rt5033_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rt5033_dev* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.rt5033_dev* %12, %struct.rt5033_dev** %6, align 8
  %13 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %14 = icmp ne %struct.rt5033_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %119

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.rt5033_dev* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %30 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %32 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @rt5033_regmap_config)
  %35 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %36 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %38 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %18
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %47 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %3, align 4
  br label %119

50:                                               ; preds = %18
  %51 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %52 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RT5033_REG_DEVICE_ID, align 4
  %55 = call i32 @regmap_read(i32 %53, i32 %54, i32* %7)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %119

64:                                               ; preds = %50
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %70 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %73 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %76 = load i32, i32* @IRQF_ONESHOT, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %79 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %78, i32 0, i32 2
  %80 = call i32 @regmap_add_irq_chip(i32 %71, i32 %74, i32 %77, i32 0, i32* @rt5033_irq_chip, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %64
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %87 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %119

92:                                               ; preds = %64
  %93 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %94 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @rt5033_devs, align 4
  %97 = load i32, i32* @rt5033_devs, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %100 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @regmap_irq_get_domain(i32 %101)
  %103 = call i32 @devm_mfd_add_devices(i32* %95, i32 -1, i32 %96, i32 %98, i32* null, i32 0, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %119

111:                                              ; preds = %92
  %112 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %113 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.rt5033_dev*, %struct.rt5033_dev** %6, align 8
  %116 = getelementptr inbounds %struct.rt5033_dev, %struct.rt5033_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @device_init_wakeup(i32* %114, i32 %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %111, %106, %83, %58, %42, %15
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.rt5033_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rt5033_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
