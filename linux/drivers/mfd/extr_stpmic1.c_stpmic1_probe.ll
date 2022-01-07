; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stpmic1.c_stpmic1_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stpmic1.c_stpmic1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.stpmic1 = type { i64, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stpmic1_regmap_config = common dso_local global i32 0, align 4
@STPMIC1_MAIN_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get main IRQ: %d\0A\00", align 1
@VERSION_SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to read PMIC version\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"PMIC Chip Version: 0x%x\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@stpmic1_regmap_irq_chip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"IRQ Chip registration failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stpmic1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stpmic1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.stpmic1*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %9, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.stpmic1* @devm_kzalloc(%struct.device* %16, i32 24, i32 %17)
  store %struct.stpmic1* %18, %struct.stpmic1** %6, align 8
  %19 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %20 = icmp ne %struct.stpmic1* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.stpmic1* %26)
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %30 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %29, i32 0, i32 3
  store %struct.device* %28, %struct.device** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @stpmic1_regmap_config)
  %33 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %34 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %36 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %42 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %24
  %46 = load %struct.device_node*, %struct.device_node** %9, align 8
  %47 = load i32, i32* @STPMIC1_MAIN_IRQ, align 4
  %48 = call i64 @of_irq_get(%struct.device_node* %46, i32 %47)
  %49 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %50 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %52 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.device*, %struct.device** %7, align 8
  %57 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %58 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %62 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %105

65:                                               ; preds = %45
  %66 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %67 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VERSION_SR, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %10)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %105

77:                                               ; preds = %65
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_info(%struct.device* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %83 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %86 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @IRQF_ONESHOT, align 4
  %90 = load i32, i32* @IRQF_SHARED, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.stpmic1*, %struct.stpmic1** %6, align 8
  %93 = getelementptr inbounds %struct.stpmic1, %struct.stpmic1* %92, i32 0, i32 1
  %94 = call i32 @devm_regmap_add_irq_chip(%struct.device* %81, i32 %84, i32 %88, i32 %91, i32 0, i32* @stpmic1_regmap_irq_chip, i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %77
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %105

102:                                              ; preds = %77
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = call i32 @devm_of_platform_populate(%struct.device* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %97, %73, %55, %40, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.stpmic1* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stpmic1*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.device*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
