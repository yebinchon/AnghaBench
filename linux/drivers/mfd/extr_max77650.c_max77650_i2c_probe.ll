; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77650.c_max77650_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77650.c_max77650_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.regmap_irq_chip_data = type { i32 }
%struct.irq_domain = type { i32 }
%struct.regmap = type { i32 }

@max77650_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to initialise I2C Regmap\0A\00", align 1
@MAX77650_REG_CID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unable to read Chip ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Chip not supported - ID: 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX77650_REG_CNFG_GLBL = common dso_local global i32 0, align 4
@MAX77650_SBIA_LPM_MASK = common dso_local global i32 0, align 4
@MAX77650_SBIA_LPM_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to change the power mode\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@max77650_irq_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to add Regmap IRQ chip\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@max77650_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max77650_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.regmap_irq_chip_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %13, i32* @max77650_regmap_config)
  store %struct.regmap* %14, %struct.regmap** %7, align 8
  %15 = load %struct.regmap*, %struct.regmap** %7, align 8
  %16 = call i64 @IS_ERR(%struct.regmap* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.regmap*, %struct.regmap** %7, align 8
  %22 = call i32 @PTR_ERR(%struct.regmap* %21)
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %1
  %24 = load %struct.regmap*, %struct.regmap** %7, align 8
  %25 = load i32, i32* @MAX77650_REG_CID, align 4
  %26 = call i32 @regmap_read(%struct.regmap* %24, i32 %25, i32* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %82

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @MAX77650_CID_BITS(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %38 [
    i32 131, label %37
    i32 130, label %37
    i32 129, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %33, %33, %33, %33
  br label %44

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %82

44:                                               ; preds = %37
  %45 = load %struct.regmap*, %struct.regmap** %7, align 8
  %46 = load i32, i32* @MAX77650_REG_CNFG_GLBL, align 4
  %47 = load i32, i32* @MAX77650_SBIA_LPM_MASK, align 4
  %48 = load i32, i32* @MAX77650_SBIA_LPM_DISABLED, align 4
  %49 = call i32 @regmap_update_bits(%struct.regmap* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %82

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.regmap*, %struct.regmap** %7, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IRQF_ONESHOT, align 4
  %63 = load i32, i32* @IRQF_SHARED, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @devm_regmap_add_irq_chip(%struct.device* %57, %struct.regmap* %58, i32 %61, i32 %64, i32 0, i32* @max77650_irq_chip, %struct.regmap_irq_chip_data** %4)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %82

72:                                               ; preds = %56
  %73 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %74 = call %struct.irq_domain* @regmap_irq_get_domain(%struct.regmap_irq_chip_data* %73)
  store %struct.irq_domain* %74, %struct.irq_domain** %6, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %77 = load i32, i32* @max77650_cells, align 4
  %78 = load i32, i32* @max77650_cells, align 4
  %79 = call i32 @ARRAY_SIZE(i32 %78)
  %80 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %81 = call i32 @devm_mfd_add_devices(%struct.device* %75, i32 %76, i32 %77, i32 %79, i32* null, i32 0, %struct.irq_domain* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %72, %68, %52, %38, %29, %18
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @MAX77650_CID_BITS(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.device*, %struct.regmap*, i32, i32, i32, i32*, %struct.regmap_irq_chip_data**) #1

declare dso_local %struct.irq_domain* @regmap_irq_get_domain(%struct.regmap_irq_chip_data*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, %struct.irq_domain*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
