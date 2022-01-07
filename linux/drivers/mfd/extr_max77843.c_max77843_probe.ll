; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77843.c_max77843_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77843.c_max77843_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max77693_dev = type { i32, i32, i32*, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77843_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate topsys register map\0A\00", align 1
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@max77843_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to add TOPSYS IRQ chip\0A\00", align 1
@MAX77843_SYS_REG_PMICID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to read PMIC ID\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"device ID: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to init Charger\0A\00", align 1
@MAX77843_SYS_REG_INTSRCMASK = common dso_local global i32 0, align 4
@MAX77843_INTSRC_MASK_MASK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to unmask interrupt source\0A\00", align 1
@max77843_devs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to add mfd device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max77843_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77843_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max77693_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max77693_dev* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.max77693_dev* %12, %struct.max77693_dev** %6, align 8
  %13 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %14 = icmp ne %struct.max77693_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %147

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.max77693_dev* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %25 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %28 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %27, i32 0, i32 5
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %33 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %38 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %39, i32* @max77843_regmap_config)
  %41 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %42 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %44 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %18
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %53 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PTR_ERR(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %147

56:                                               ; preds = %18
  %57 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %58 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %61 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IRQF_SHARED, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %69 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %68, i32 0, i32 0
  %70 = call i32 @regmap_add_irq_chip(i32 %59, i32 %62, i32 %67, i32 0, i32* @max77843_irq_chip, i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %147

78:                                               ; preds = %56
  %79 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %80 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MAX77843_SYS_REG_PMICID, align 4
  %83 = call i32 @regmap_read(i32 %81, i32 %82, i32* %7)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %138

90:                                               ; preds = %78
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %96 = call i32 @max77843_chg_init(%struct.max77693_dev* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %138

103:                                              ; preds = %90
  %104 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %105 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MAX77843_SYS_REG_INTSRCMASK, align 4
  %108 = load i64, i64* @MAX77843_INTSRC_MASK_MASK, align 8
  %109 = load i64, i64* @MAX77843_INTSRC_MASK_MASK, align 8
  %110 = xor i64 %109, -1
  %111 = trunc i64 %110 to i32
  %112 = call i32 @regmap_update_bits(i32 %106, i32 %107, i64 %108, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %103
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %138

119:                                              ; preds = %103
  %120 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %121 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @max77843_devs, align 4
  %124 = load i32, i32* @max77843_devs, align 4
  %125 = call i32 @ARRAY_SIZE(i32 %124)
  %126 = call i32 @mfd_add_devices(i32* %122, i32 -1, i32 %123, i32 %125, i32* null, i32 0, i32* null)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %138

133:                                              ; preds = %119
  %134 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %135 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @device_init_wakeup(i32* %136, i32 1)
  store i32 0, i32* %3, align 4
  br label %147

138:                                              ; preds = %129, %115, %99, %86
  %139 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %140 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %143 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @regmap_del_irq_chip(i32 %141, i32 %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %138, %133, %73, %48, %15
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.max77693_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max77693_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @max77843_chg_init(%struct.max77693_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i32) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
