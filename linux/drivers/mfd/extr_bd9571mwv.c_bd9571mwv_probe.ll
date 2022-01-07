; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_bd9571mwv.c_bd9571mwv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_bd9571mwv.c_bd9571mwv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.bd9571mwv = type { i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bd9571mwv_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize register map\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@bd9571mwv_irq_chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to register IRQ chip\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@bd9571mwv_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bd9571mwv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd9571mwv_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bd9571mwv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bd9571mwv* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.bd9571mwv* %11, %struct.bd9571mwv** %6, align 8
  %12 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %13 = icmp ne %struct.bd9571mwv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.bd9571mwv* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %24 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %29 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %30, i32* @bd9571mwv_regmap_config)
  %32 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %33 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %35 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %17
  %40 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %41 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %45 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %99

48:                                               ; preds = %17
  %49 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %50 = call i32 @bd9571mwv_identify(%struct.bd9571mwv* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %48
  %56 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %57 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %60 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IRQF_ONESHOT, align 4
  %63 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %64 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %63, i32 0, i32 0
  %65 = call i32 @regmap_add_irq_chip(i32 %58, i32 %61, i32 %62, i32 0, i32* @bd9571mwv_irq_chip, i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %70 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %99

74:                                               ; preds = %55
  %75 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %76 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %79 = load i32, i32* @bd9571mwv_cells, align 4
  %80 = load i32, i32* @bd9571mwv_cells, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %83 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @regmap_irq_get_domain(i32 %84)
  %86 = call i32 @mfd_add_devices(i32* %77, i32 %78, i32 %79, i32 %81, i32* null, i32 0, i32 %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %74
  %90 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %91 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bd9571mwv*, %struct.bd9571mwv** %6, align 8
  %94 = getelementptr inbounds %struct.bd9571mwv, %struct.bd9571mwv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @regmap_del_irq_chip(i32 %92, i32 %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %89, %68, %53, %39, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.bd9571mwv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bd9571mwv*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @bd9571mwv_identify(%struct.bd9571mwv*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
