; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.tps65910 = type { i64, i32, %struct.TYPE_5__*, i32, %struct.i2c_client*, %struct.tps65910_board* }
%struct.tps65910_board = type { i64, i32, i32 }
%struct.tps65910_platform_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tps65910_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"regmap initialization failed: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@tps65910_i2c_client = common dso_local global %struct.i2c_client* null, align 8
@tps65910_power_off = common dso_local global i64 0, align 8
@tps65910s = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65910_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps65910*, align 8
  %7 = alloca %struct.tps65910_board*, align 8
  %8 = alloca %struct.tps65910_board*, align 8
  %9 = alloca %struct.tps65910_platform_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.tps65910_board* null, %struct.tps65910_board** %8, align 8
  %12 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call %struct.tps65910_board* @dev_get_platdata(%struct.TYPE_5__* %16)
  store %struct.tps65910_board* %17, %struct.tps65910_board** %7, align 8
  %18 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %19 = icmp ne %struct.tps65910_board* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = call %struct.tps65910_board* @tps65910_parse_dt(%struct.i2c_client* %27, i64* %10)
  store %struct.tps65910_board* %28, %struct.tps65910_board** %7, align 8
  %29 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  store %struct.tps65910_board* %29, %struct.tps65910_board** %8, align 8
  br label %30

30:                                               ; preds = %26, %20, %2
  %31 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %32 = icmp ne %struct.tps65910_board* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %151

36:                                               ; preds = %30
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(%struct.TYPE_5__* %38, i32 8, i32 %39)
  %41 = bitcast i8* %40 to %struct.tps65910_platform_data*
  store %struct.tps65910_platform_data* %41, %struct.tps65910_platform_data** %9, align 8
  %42 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %9, align 8
  %43 = icmp eq %struct.tps65910_platform_data* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %151

47:                                               ; preds = %36
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @devm_kzalloc(%struct.TYPE_5__* %49, i32 48, i32 %50)
  %52 = bitcast i8* %51 to %struct.tps65910*
  store %struct.tps65910* %52, %struct.tps65910** %6, align 8
  %53 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %54 = icmp eq %struct.tps65910* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %151

58:                                               ; preds = %47
  %59 = load %struct.tps65910_board*, %struct.tps65910_board** %8, align 8
  %60 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %61 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %60, i32 0, i32 5
  store %struct.tps65910_board* %59, %struct.tps65910_board** %61, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %64 = call i32 @i2c_set_clientdata(%struct.i2c_client* %62, %struct.tps65910* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %68 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %67, i32 0, i32 2
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %71 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %70, i32 0, i32 4
  store %struct.i2c_client* %69, %struct.i2c_client** %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %74 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = call i32 @i2c_master_send(%struct.i2c_client* %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %77, i32* @tps65910_regmap_config)
  %79 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %80 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %82 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %58
  %87 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %88 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @dev_err(%struct.TYPE_5__* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %151

96:                                               ; preds = %58
  %97 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %98 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %9, align 8
  %101 = getelementptr inbounds %struct.tps65910_platform_data, %struct.tps65910_platform_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %103 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %9, align 8
  %106 = getelementptr inbounds %struct.tps65910_platform_data, %struct.tps65910_platform_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %108 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %9, align 8
  %109 = getelementptr inbounds %struct.tps65910_platform_data, %struct.tps65910_platform_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.tps65910_platform_data*, %struct.tps65910_platform_data** %9, align 8
  %112 = call i32 @tps65910_irq_init(%struct.tps65910* %107, i32 %110, %struct.tps65910_platform_data* %111)
  %113 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %114 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %115 = call i32 @tps65910_ck32k_init(%struct.tps65910* %113, %struct.tps65910_board* %114)
  %116 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %117 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %118 = call i32 @tps65910_sleepinit(%struct.tps65910* %116, %struct.tps65910_board* %117)
  %119 = load %struct.tps65910_board*, %struct.tps65910_board** %7, align 8
  %120 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %96
  %124 = load i64, i64* @pm_power_off, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %127, %struct.i2c_client** @tps65910_i2c_client, align 8
  %128 = load i64, i64* @tps65910_power_off, align 8
  store i64 %128, i64* @pm_power_off, align 8
  br label %129

129:                                              ; preds = %126, %123, %96
  %130 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %131 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = load i32, i32* @tps65910s, align 4
  %134 = load i32, i32* @tps65910s, align 4
  %135 = call i32 @ARRAY_SIZE(i32 %134)
  %136 = load %struct.tps65910*, %struct.tps65910** %6, align 8
  %137 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @regmap_irq_get_domain(i32 %138)
  %140 = call i32 @devm_mfd_add_devices(%struct.TYPE_5__* %132, i32 -1, i32 %133, i32 %135, i32* null, i32 0, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %129
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @dev_err(%struct.TYPE_5__* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %3, align 4
  br label %151

149:                                              ; preds = %129
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %143, %86, %55, %44, %33
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.tps65910_board* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.tps65910_board* @tps65910_parse_dt(%struct.i2c_client*, i64*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65910*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @tps65910_irq_init(%struct.tps65910*, i32, %struct.tps65910_platform_data*) #1

declare dso_local i32 @tps65910_ck32k_init(%struct.tps65910*, %struct.tps65910_board*) #1

declare dso_local i32 @tps65910_sleepinit(%struct.tps65910*, %struct.tps65910_board*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_5__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
