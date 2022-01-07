; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65090.c_tps65090_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65090.c_tps65090_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.i2c_client = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps65090_platform_data = type { i32 }
%struct.tps65090 = type { i32, %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"tps65090 requires platform data or of_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65090_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"regmap_init failed with err: %d\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@tps65090_irq_chip = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"IRQ init failed with err: %d\0A\00", align 1
@tps65090s = common dso_local global %struct.TYPE_8__* null, align 8
@CHARGER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"add mfd devices failed with err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps65090_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps65090_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps65090*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.tps65090_platform_data* @dev_get_platdata(%struct.TYPE_9__* %11)
  store %struct.tps65090_platform_data* %12, %struct.tps65090_platform_data** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %6, align 8
  %14 = icmp ne %struct.tps65090_platform_data* %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %15, %2
  %28 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %6, align 8
  %29 = icmp ne %struct.tps65090_platform_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %6, align 8
  %32 = getelementptr inbounds %struct.tps65090_platform_data, %struct.tps65090_platform_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.tps65090* @devm_kzalloc(%struct.TYPE_9__* %36, i32 24, i32 %37)
  store %struct.tps65090* %38, %struct.tps65090** %8, align 8
  %39 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %40 = icmp ne %struct.tps65090* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %139

44:                                               ; preds = %34
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %48 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %47, i32 0, i32 1
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %51 = call i32 @i2c_set_clientdata(%struct.i2c_client* %49, %struct.tps65090* %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %52, i32* @tps65090_regmap_config)
  %54 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %55 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %57 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %44
  %62 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %63 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PTR_ERR(i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %139

71:                                               ; preds = %44
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %78 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IRQF_ONESHOT, align 4
  %84 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %88 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %87, i32 0, i32 0
  %89 = call i32 @regmap_add_irq_chip(i32 %79, i32 %82, i32 %85, i32 %86, i32* @tps65090_irq_chip, i32* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %76
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 1
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %139

98:                                               ; preds = %76
  br label %104

99:                                               ; preds = %71
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tps65090s, align 8
  %101 = load i64, i64* @CHARGER, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %98
  %105 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %106 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tps65090s, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** @tps65090s, align 8
  %110 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %109)
  %111 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %112 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @regmap_irq_get_domain(i32 %113)
  %115 = call i32 @mfd_add_devices(%struct.TYPE_9__* %107, i32 -1, %struct.TYPE_8__* %108, i32 %110, i32* null, i32 0, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %104
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 1
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %124

123:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %139

124:                                              ; preds = %118
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tps65090*, %struct.tps65090** %8, align 8
  %134 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @regmap_del_irq_chip(i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %129, %124
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %123, %92, %61, %41, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.tps65090_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.tps65090* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps65090*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
