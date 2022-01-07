; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.regmap_irq_chip = type { i32 }
%struct.regmap_config = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.da9062 = type { i64, i32, %struct.TYPE_5__*, i32 }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9062_dt_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@da9061_devs = common dso_local global %struct.mfd_cell* null, align 8
@da9061_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@da9061_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@da9062_devs = common dso_local global %struct.mfd_cell* null, align 8
@da9062_irq_chip = common dso_local global %struct.regmap_irq_chip zeroinitializer, align 4
@da9062_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unrecognised chip type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot clear fault log\0A\00", align 1
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to request IRQ %d: %d\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Cannot register child devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9062_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9062*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca %struct.regmap_irq_chip*, align 8
  %11 = alloca %struct.regmap_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.da9062* @devm_kzalloc(%struct.TYPE_5__* %15, i32 32, i32 %16)
  store %struct.da9062* %17, %struct.da9062** %6, align 8
  %18 = load %struct.da9062*, %struct.da9062** %6, align 8
  %19 = icmp ne %struct.da9062* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %188

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load i32, i32* @da9062_dt_ids, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.of_device_id* @of_match_node(i32 %30, i64 %34)
  store %struct.of_device_id* %35, %struct.of_device_id** %7, align 8
  %36 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %37 = icmp ne %struct.of_device_id* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %188

41:                                               ; preds = %29
  %42 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %43 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.da9062*, %struct.da9062** %6, align 8
  %46 = getelementptr inbounds %struct.da9062, %struct.da9062* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %53

47:                                               ; preds = %23
  %48 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.da9062*, %struct.da9062** %6, align 8
  %52 = getelementptr inbounds %struct.da9062, %struct.da9062* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.da9062*, %struct.da9062** %6, align 8
  %56 = call i32 @i2c_set_clientdata(%struct.i2c_client* %54, %struct.da9062* %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load %struct.da9062*, %struct.da9062** %6, align 8
  %60 = getelementptr inbounds %struct.da9062, %struct.da9062* %59, i32 0, i32 2
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %53
  %66 = load %struct.da9062*, %struct.da9062** %6, align 8
  %67 = getelementptr inbounds %struct.da9062, %struct.da9062* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %188

72:                                               ; preds = %53
  %73 = load %struct.da9062*, %struct.da9062** %6, align 8
  %74 = getelementptr inbounds %struct.da9062, %struct.da9062* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  switch i64 %75, label %84 [
    i64 129, label %76
    i64 128, label %80
  ]

76:                                               ; preds = %72
  %77 = load %struct.mfd_cell*, %struct.mfd_cell** @da9061_devs, align 8
  store %struct.mfd_cell* %77, %struct.mfd_cell** %9, align 8
  %78 = load %struct.mfd_cell*, %struct.mfd_cell** @da9061_devs, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %78)
  store i32 %79, i32* %12, align 4
  store %struct.regmap_irq_chip* @da9061_irq_chip, %struct.regmap_irq_chip** %10, align 8
  store %struct.regmap_config* @da9061_regmap_config, %struct.regmap_config** %11, align 8
  br label %91

80:                                               ; preds = %72
  %81 = load %struct.mfd_cell*, %struct.mfd_cell** @da9062_devs, align 8
  store %struct.mfd_cell* %81, %struct.mfd_cell** %9, align 8
  %82 = load %struct.mfd_cell*, %struct.mfd_cell** @da9062_devs, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %82)
  store i32 %83, i32* %12, align 4
  store %struct.regmap_irq_chip* @da9062_irq_chip, %struct.regmap_irq_chip** %10, align 8
  store %struct.regmap_config* @da9062_regmap_config, %struct.regmap_config** %11, align 8
  br label %91

84:                                               ; preds = %72
  %85 = load %struct.da9062*, %struct.da9062** %6, align 8
  %86 = getelementptr inbounds %struct.da9062, %struct.da9062* %85, i32 0, i32 2
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %188

91:                                               ; preds = %80, %76
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %94 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %92, %struct.regmap_config* %93)
  %95 = load %struct.da9062*, %struct.da9062** %6, align 8
  %96 = getelementptr inbounds %struct.da9062, %struct.da9062* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.da9062*, %struct.da9062** %6, align 8
  %98 = getelementptr inbounds %struct.da9062, %struct.da9062* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %91
  %103 = load %struct.da9062*, %struct.da9062** %6, align 8
  %104 = getelementptr inbounds %struct.da9062, %struct.da9062* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.da9062*, %struct.da9062** %6, align 8
  %108 = getelementptr inbounds %struct.da9062, %struct.da9062* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %3, align 4
  br label %188

113:                                              ; preds = %91
  %114 = load %struct.da9062*, %struct.da9062** %6, align 8
  %115 = call i32 @da9062_clear_fault_log(%struct.da9062* %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.da9062*, %struct.da9062** %6, align 8
  %120 = getelementptr inbounds %struct.da9062, %struct.da9062* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = call i32 @dev_warn(%struct.TYPE_5__* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.da9062*, %struct.da9062** %6, align 8
  %125 = call i32 @da9062_get_device_type(%struct.da9062* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %3, align 4
  br label %188

130:                                              ; preds = %123
  %131 = load %struct.da9062*, %struct.da9062** %6, align 8
  %132 = getelementptr inbounds %struct.da9062, %struct.da9062* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %138 = load i32, i32* @IRQF_ONESHOT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @IRQF_SHARED, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %10, align 8
  %143 = load %struct.da9062*, %struct.da9062** %6, align 8
  %144 = getelementptr inbounds %struct.da9062, %struct.da9062* %143, i32 0, i32 1
  %145 = call i32 @regmap_add_irq_chip(i32 %133, i32 %136, i32 %141, i32 -1, %struct.regmap_irq_chip* %142, i32* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %130
  %149 = load %struct.da9062*, %struct.da9062** %6, align 8
  %150 = getelementptr inbounds %struct.da9062, %struct.da9062* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %3, align 4
  br label %188

158:                                              ; preds = %130
  %159 = load %struct.da9062*, %struct.da9062** %6, align 8
  %160 = getelementptr inbounds %struct.da9062, %struct.da9062* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @regmap_irq_chip_get_base(i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = load %struct.da9062*, %struct.da9062** %6, align 8
  %164 = getelementptr inbounds %struct.da9062, %struct.da9062* %163, i32 0, i32 2
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %167 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @mfd_add_devices(%struct.TYPE_5__* %165, i32 %166, %struct.mfd_cell* %167, i32 %168, i32* null, i32 %169, i32* null)
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %158
  %174 = load %struct.da9062*, %struct.da9062** %6, align 8
  %175 = getelementptr inbounds %struct.da9062, %struct.da9062* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %178 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.da9062*, %struct.da9062** %6, align 8
  %182 = getelementptr inbounds %struct.da9062, %struct.da9062* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @regmap_del_irq_chip(i32 %180, i32 %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %3, align 4
  br label %188

186:                                              ; preds = %158
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %173, %148, %128, %102, %84, %65, %38, %20
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.da9062* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9062*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @da9062_clear_fault_log(%struct.da9062*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @da9062_get_device_type(%struct.da9062*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, %struct.regmap_irq_chip*, i32*) #1

declare dso_local i32 @regmap_irq_chip_get_base(i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_5__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
