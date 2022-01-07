; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd70528.c_bd70528_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd70528.c_bd70528_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.bd70528_data = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.regmap_irq_chip_data = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ROHM_CHIP_TYPE_BD70528 = common dso_local global i32 0, align 4
@bd70528_regmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to initialize Regmap\0A\00", align 1
@bd70528_irqs = common dso_local global %struct.TYPE_9__* null, align 8
@BD70528_NUM_OF_GPIOS = common dso_local global i32 0, align 4
@BD70528_INT_GPIO0 = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@bd70528_irq_chip = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to add IRQ chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Registered %d IRQs for chip\0A\00", align 1
@BD70528_REG_INT_MAIN_MASK = common dso_local global i32 0, align 4
@BD70528_INT_GPIO_MASK = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@bd70528_mfd_cells = common dso_local global %struct.TYPE_9__* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to create subdevices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bd70528_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd70528_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bd70528_data*, align 8
  %7 = alloca %struct.regmap_irq_chip_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap_irq_type*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bd70528_data* @devm_kzalloc(i32* %23, i32 12, i32 %24)
  store %struct.bd70528_data* %25, %struct.bd70528_data** %6, align 8
  %26 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %27 = icmp ne %struct.bd70528_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %163

31:                                               ; preds = %21
  %32 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %33 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %38 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %37, i32 0, i32 0
  %39 = call i32 @dev_set_drvdata(i32* %36, %struct.TYPE_10__* %38)
  %40 = load i32, i32* @ROHM_CHIP_TYPE_BD70528, align 4
  %41 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %42 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %44, i32* @bd70528_regmap)
  %46 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %47 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %50 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %31
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %60 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %163

64:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bd70528_irqs, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bd70528_irqs, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %65

80:                                               ; preds = %65
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BD70528_NUM_OF_GPIOS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bd70528_irqs, align 8
  %87 = load i32, i32* @BD70528_INT_GPIO0, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store %struct.regmap_irq_type* %92, %struct.regmap_irq_type** %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 2, %93
  %95 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %96 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %98 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %97, i32 0, i32 2
  store i32 32, i32* %98, align 4
  %99 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %100 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %99, i32 0, i32 3
  store i32 16, i32* %100, align 4
  %101 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %102 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %101, i32 0, i32 4
  store i32 64, i32* %102, align 4
  %103 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %104 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %103, i32 0, i32 5
  store i32 80, i32* %104, align 4
  %105 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %106 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.regmap_irq_type*, %struct.regmap_irq_type** %10, align 8
  %111 = getelementptr inbounds %struct.regmap_irq_type, %struct.regmap_irq_type* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %85
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %119 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IRQF_ONESHOT, align 4
  %126 = call i32 @devm_regmap_add_irq_chip(i32* %117, i32 %121, i32 %124, i32 %125, i32 0, %struct.TYPE_8__* @bd70528_irq_chip, %struct.regmap_irq_chip_data** %7)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %115
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %163

134:                                              ; preds = %115
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bd70528_irq_chip, i32 0, i32 0), align 4
  %138 = call i32 @dev_dbg(i32* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load %struct.bd70528_data*, %struct.bd70528_data** %6, align 8
  %140 = getelementptr inbounds %struct.bd70528_data, %struct.bd70528_data* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @BD70528_REG_INT_MAIN_MASK, align 4
  %144 = load i32, i32* @BD70528_INT_GPIO_MASK, align 4
  %145 = call i32 @regmap_update_bits(i32 %142, i32 %143, i32 %144, i32 0)
  store i32 %145, i32* %8, align 4
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bd70528_mfd_cells, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bd70528_mfd_cells, align 8
  %151 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %150)
  %152 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %7, align 8
  %153 = call i32 @regmap_irq_get_domain(%struct.regmap_irq_chip_data* %152)
  %154 = call i32 @devm_mfd_add_devices(i32* %147, i32 %148, %struct.TYPE_9__* %149, i32 %151, i32* null, i32 0, i32 %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %134
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %161

161:                                              ; preds = %157, %134
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %129, %55, %28, %15
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.bd70528_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.regmap_irq_chip_data**) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, %struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @regmap_irq_get_domain(%struct.regmap_irq_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
