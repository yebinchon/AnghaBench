; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998.c_max8998_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8998.c_max8998_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.max8998_platform_data = type { %struct.TYPE_9__, i32, i32, i32, i32, i32 }
%struct.max8998_dev = type { i32, %struct.max8998_platform_data*, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.max8998_platform_data*, i32, %struct.max8998_platform_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@RTC_I2C_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@lp3974_devs = common dso_local global i32 0, align 4
@max8998_devs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8998_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8998_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max8998_platform_data*, align 8
  %7 = alloca %struct.max8998_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.max8998_platform_data* @dev_get_platdata(%struct.TYPE_9__* %10)
  store %struct.max8998_platform_data* %11, %struct.max8998_platform_data** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max8998_dev* @devm_kzalloc(%struct.TYPE_9__* %13, i32 64, i32 %14)
  store %struct.max8998_dev* %15, %struct.max8998_dev** %7, align 8
  %16 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %17 = icmp eq %struct.max8998_dev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %170

21:                                               ; preds = %2
  %22 = load i32, i32* @CONFIG_OF, align 4
  %23 = call i64 @IS_ENABLED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call %struct.max8998_platform_data* @max8998_i2c_parse_dt_pdata(%struct.TYPE_9__* %33)
  store %struct.max8998_platform_data* %34, %struct.max8998_platform_data** %6, align 8
  %35 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %36 = call i64 @IS_ERR(%struct.max8998_platform_data* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %40 = call i32 @PTR_ERR(%struct.max8998_platform_data* %39)
  store i32 %40, i32* %3, align 4
  br label %170

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25, %21
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = bitcast %struct.i2c_client* %43 to %struct.max8998_platform_data*
  %45 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.max8998_platform_data* %44, %struct.max8998_dev* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %50 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %49, i32 0, i32 2
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = bitcast %struct.i2c_client* %51 to %struct.max8998_platform_data*
  %53 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %54 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %53, i32 0, i32 9
  store %struct.max8998_platform_data* %52, %struct.max8998_platform_data** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %59 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = bitcast %struct.i2c_client* %60 to %struct.max8998_platform_data*
  %62 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %63 = call i32 @max8998_i2c_get_driver_data(%struct.max8998_platform_data* %61, %struct.i2c_device_id* %62)
  %64 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %65 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %67 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %68 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %67, i32 0, i32 7
  store %struct.max8998_platform_data* %66, %struct.max8998_platform_data** %68, align 8
  %69 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %70 = icmp ne %struct.max8998_platform_data* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %42
  %72 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %73 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %76 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %78 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %81 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  %82 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %6, align 8
  %83 = getelementptr inbounds %struct.max8998_platform_data, %struct.max8998_platform_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %86 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %71, %42
  %88 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %89 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %88, i32 0, i32 4
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @RTC_I2C_ADDR, align 4
  %95 = call %struct.max8998_platform_data* @i2c_new_dummy_device(i32 %93, i32 %94)
  %96 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %97 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %96, i32 0, i32 1
  store %struct.max8998_platform_data* %95, %struct.max8998_platform_data** %97, align 8
  %98 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %99 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %98, i32 0, i32 1
  %100 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %99, align 8
  %101 = call i64 @IS_ERR(%struct.max8998_platform_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %87
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_9__* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %108 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %107, i32 0, i32 1
  %109 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %108, align 8
  %110 = call i32 @PTR_ERR(%struct.max8998_platform_data* %109)
  store i32 %110, i32* %3, align 4
  br label %170

111:                                              ; preds = %87
  %112 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %113 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %112, i32 0, i32 1
  %114 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %113, align 8
  %115 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %116 = call i32 @i2c_set_clientdata(%struct.max8998_platform_data* %114, %struct.max8998_dev* %115)
  %117 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %118 = call i32 @max8998_irq_init(%struct.max8998_dev* %117)
  %119 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %120 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = call i32 @pm_runtime_set_active(%struct.TYPE_9__* %121)
  %123 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %124 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %142 [
    i32 129, label %126
    i32 128, label %134
  ]

126:                                              ; preds = %111
  %127 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %128 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* @lp3974_devs, align 4
  %131 = load i32, i32* @lp3974_devs, align 4
  %132 = call i32 @ARRAY_SIZE(i32 %131)
  %133 = call i32 @mfd_add_devices(%struct.TYPE_9__* %129, i32 -1, i32 %130, i32 %132, i32* null, i32 0, i32* null)
  store i32 %133, i32* %8, align 4
  br label %145

134:                                              ; preds = %111
  %135 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %136 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* @max8998_devs, align 4
  %139 = load i32, i32* @max8998_devs, align 4
  %140 = call i32 @ARRAY_SIZE(i32 %139)
  %141 = call i32 @mfd_add_devices(%struct.TYPE_9__* %137, i32 -1, i32 %138, i32 %140, i32* null, i32 0, i32* null)
  store i32 %141, i32* %8, align 4
  br label %145

142:                                              ; preds = %111
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %134, %126
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %158

149:                                              ; preds = %145
  %150 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %151 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %154 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @device_init_wakeup(%struct.TYPE_9__* %152, i32 %155)
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %3, align 4
  br label %170

158:                                              ; preds = %148
  %159 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %160 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = call i32 @mfd_remove_devices(%struct.TYPE_9__* %161)
  %163 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %164 = call i32 @max8998_irq_exit(%struct.max8998_dev* %163)
  %165 = load %struct.max8998_dev*, %struct.max8998_dev** %7, align 8
  %166 = getelementptr inbounds %struct.max8998_dev, %struct.max8998_dev* %165, i32 0, i32 1
  %167 = load %struct.max8998_platform_data*, %struct.max8998_platform_data** %166, align 8
  %168 = call i32 @i2c_unregister_device(%struct.max8998_platform_data* %167)
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %158, %149, %103, %38, %18
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.max8998_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local %struct.max8998_dev* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.max8998_platform_data* @max8998_i2c_parse_dt_pdata(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.max8998_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max8998_platform_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.max8998_platform_data*, %struct.max8998_dev*) #1

declare dso_local i32 @max8998_i2c_get_driver_data(%struct.max8998_platform_data*, %struct.i2c_device_id*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.max8998_platform_data* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @max8998_irq_init(%struct.max8998_dev*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_9__*) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_9__*) #1

declare dso_local i32 @max8998_irq_exit(%struct.max8998_dev*) #1

declare dso_local i32 @i2c_unregister_device(%struct.max8998_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
