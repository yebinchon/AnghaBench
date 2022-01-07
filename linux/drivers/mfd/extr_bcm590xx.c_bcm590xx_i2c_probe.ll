; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_bcm590xx.c_bcm590xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_bcm590xx.c_bcm590xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.bcm590xx = type { %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcm590xx_regmap_config_pri = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"primary regmap init failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to add secondary I2C device\0A\00", align 1
@bcm590xx_regmap_config_sec = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"secondary regmap init failed: %d\0A\00", align 1
@bcm590xx_devs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to add sub-devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bcm590xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm590xx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bcm590xx*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.bcm590xx* @devm_kzalloc(i32* %9, i32 40, i32 %10)
  store %struct.bcm590xx* %11, %struct.bcm590xx** %6, align 8
  %12 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %13 = icmp ne %struct.bcm590xx* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %123

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.bcm590xx* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %24 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %23, i32 0, i32 4
  store i32* %22, i32** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %27 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %26, i32 0, i32 3
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %28, i32* @bcm590xx_regmap_config_pri)
  %30 = bitcast i8* %29 to %struct.i2c_client*
  %31 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %32 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %31, i32 0, i32 2
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %34 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %33, i32 0, i32 2
  %35 = load %struct.i2c_client*, %struct.i2c_client** %34, align 8
  %36 = call i64 @IS_ERR(%struct.i2c_client* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %17
  %39 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %40 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %39, i32 0, i32 2
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  %42 = call i32 @PTR_ERR(%struct.i2c_client* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %123

48:                                               ; preds = %17
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @BIT(i32 2)
  %56 = or i32 %54, %55
  %57 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %51, i32 %56)
  %58 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %59 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %58, i32 0, i32 0
  store %struct.i2c_client* %57, %struct.i2c_client** %59, align 8
  %60 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %61 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %60, i32 0, i32 0
  %62 = load %struct.i2c_client*, %struct.i2c_client** %61, align 8
  %63 = call i64 @IS_ERR(%struct.i2c_client* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %70 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %69, i32 0, i32 0
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.i2c_client* %71)
  store i32 %72, i32* %3, align 4
  br label %123

73:                                               ; preds = %48
  %74 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %75 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %74, i32 0, i32 0
  %76 = load %struct.i2c_client*, %struct.i2c_client** %75, align 8
  %77 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %78 = call i32 @i2c_set_clientdata(%struct.i2c_client* %76, %struct.bcm590xx* %77)
  %79 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %80 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %79, i32 0, i32 0
  %81 = load %struct.i2c_client*, %struct.i2c_client** %80, align 8
  %82 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %81, i32* @bcm590xx_regmap_config_sec)
  %83 = bitcast i8* %82 to %struct.i2c_client*
  %84 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %85 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %84, i32 0, i32 1
  store %struct.i2c_client* %83, %struct.i2c_client** %85, align 8
  %86 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %87 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %86, i32 0, i32 1
  %88 = load %struct.i2c_client*, %struct.i2c_client** %87, align 8
  %89 = call i64 @IS_ERR(%struct.i2c_client* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %73
  %92 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %93 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %92, i32 0, i32 1
  %94 = load %struct.i2c_client*, %struct.i2c_client** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.i2c_client* %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %97 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %96, i32 0, i32 0
  %98 = load %struct.i2c_client*, %struct.i2c_client** %97, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  br label %117

102:                                              ; preds = %73
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 1
  %105 = load i32, i32* @bcm590xx_devs, align 4
  %106 = load i32, i32* @bcm590xx_devs, align 4
  %107 = call i32 @ARRAY_SIZE(i32 %106)
  %108 = call i32 @devm_mfd_add_devices(i32* %104, i32 -1, i32 %105, i32 %107, i32* null, i32 0, i32* null)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %117

116:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %123

117:                                              ; preds = %111, %91
  %118 = load %struct.bcm590xx*, %struct.bcm590xx** %6, align 8
  %119 = getelementptr inbounds %struct.bcm590xx, %struct.bcm590xx* %118, i32 0, i32 0
  %120 = load %struct.i2c_client*, %struct.i2c_client** %119, align 8
  %121 = call i32 @i2c_unregister_device(%struct.i2c_client* %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %116, %65, %38, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.bcm590xx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bcm590xx*) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
