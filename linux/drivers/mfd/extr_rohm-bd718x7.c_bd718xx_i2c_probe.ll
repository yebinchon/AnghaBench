; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd718x7.c_bd718xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rohm-bd718x7.c_bd718xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.bd718xx = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bd718xx_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@bd718xx_irq_chip = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to add irq_chip\0A\00", align 1
@BD718XX_INT_PWRBTN_S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to get the IRQ\0A\00", align 1
@button = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@bd718xx_mfd_cells = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to create subdevices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bd718xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd718xx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bd718xx*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %134

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.bd718xx* @devm_kzalloc(i32* %20, i32 40, i32 %21)
  store %struct.bd718xx* %22, %struct.bd718xx** %6, align 8
  %23 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %24 = icmp ne %struct.bd718xx* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %134

28:                                               ; preds = %18
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %33 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i64 @of_device_get_match_data(i32* %35)
  %37 = trunc i64 %36 to i32
  %38 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %39 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %44 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32* %42, i32** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %49 = call i32 @dev_set_drvdata(i32* %47, %struct.bd718xx* %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %50, i32* @bd718xx_regmap_config)
  %52 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %53 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %56 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %28
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %66 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %134

70:                                               ; preds = %28
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %74 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %78 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @IRQF_ONESHOT, align 4
  %81 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %82 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %81, i32 0, i32 0
  %83 = call i32 @devm_regmap_add_irq_chip(i32* %72, i32 %76, i64 %79, i32 %80, i32 0, i32* @bd718xx_irq_chip, i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %134

91:                                               ; preds = %70
  %92 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %93 = call i32 @bd718xx_init_press_duration(%struct.bd718xx* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %134

98:                                               ; preds = %91
  %99 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %100 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BD718XX_INT_PWRBTN_S, align 4
  %103 = call i32 @regmap_irq_get_virq(i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %134

111:                                              ; preds = %98
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @button, i32 0, i32 0), align 4
  %113 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %114 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %118 = load i32, i32* @bd718xx_mfd_cells, align 4
  %119 = load i32, i32* @bd718xx_mfd_cells, align 4
  %120 = call i32 @ARRAY_SIZE(i32 %119)
  %121 = load %struct.bd718xx*, %struct.bd718xx** %6, align 8
  %122 = getelementptr inbounds %struct.bd718xx, %struct.bd718xx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @regmap_irq_get_domain(i32 %123)
  %125 = call i32 @devm_mfd_add_devices(i32* %116, i32 %117, i32 %118, i32 %120, i32* null, i32 0, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %111
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %111
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %132, %106, %96, %86, %61, %25, %12
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.bd718xx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.bd718xx*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @bd718xx_init_press_duration(%struct.bd718xx*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
