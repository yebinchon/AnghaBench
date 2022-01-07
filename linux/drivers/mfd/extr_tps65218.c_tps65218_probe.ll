; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps65218 = type { i32, i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65218_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@tps65218_irq_chip = common dso_local global i32 0, align 4
@TPS65218_REG_CHIPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read chipid: %d\0A\00", align 1
@TPS65218_CHIPID_REV_MASK = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@tps65218_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65218_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps65218*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tps65218* @devm_kzalloc(i32* %10, i32 32, i32 %11)
  store %struct.tps65218* %12, %struct.tps65218** %6, align 8
  %13 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %14 = icmp ne %struct.tps65218* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %126

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.tps65218* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %25 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %30 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %31, i32* @tps65218_regmap_config)
  %33 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %34 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %36 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %18
  %41 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %42 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %46 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %126

51:                                               ; preds = %18
  %52 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %53 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %52, i32 0, i32 5
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %58 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %61 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IRQF_ONESHOT, align 4
  %64 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %65 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %64, i32 0, i32 1
  %66 = call i32 @devm_regmap_add_irq_chip(i32* %56, i32 %59, i32 %62, i32 %63, i32 0, i32* @tps65218_irq_chip, i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %126

71:                                               ; preds = %51
  %72 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %73 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TPS65218_REG_CHIPID, align 4
  %76 = call i32 @regmap_read(i32 %74, i32 %75, i32* %8)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %81 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %126

86:                                               ; preds = %71
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TPS65218_CHIPID_REV_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %91 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %93 = call i32 @tps65218_voltage_set_strict(%struct.tps65218* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %126

98:                                               ; preds = %86
  %99 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %100 = call i32 @tps65218_voltage_set_uvlo(%struct.tps65218* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %126

105:                                              ; preds = %98
  %106 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %107 = call i32 @tps65218_voltage_set_uv_hyst(%struct.tps65218* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %126

112:                                              ; preds = %105
  %113 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %114 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %117 = load i32, i32* @tps65218_cells, align 4
  %118 = load i32, i32* @tps65218_cells, align 4
  %119 = call i32 @ARRAY_SIZE(i32 %118)
  %120 = load %struct.tps65218*, %struct.tps65218** %6, align 8
  %121 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @regmap_irq_get_domain(i32 %122)
  %124 = call i32 @mfd_add_devices(i32* %115, i32 %116, i32 %117, i32 %119, i32* null, i32 0, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %112, %110, %103, %96, %79, %69, %40, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.tps65218* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65218*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @tps65218_voltage_set_strict(%struct.tps65218*) #1

declare dso_local i32 @tps65218_voltage_set_uvlo(%struct.tps65218*) #1

declare dso_local i32 @tps65218_voltage_set_uv_hyst(%struct.tps65218*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
