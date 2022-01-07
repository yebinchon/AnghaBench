; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77620.c_max77620_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.regmap_config = type { i32 }
%struct.TYPE_7__ = type { %struct.max77620_chip* }
%struct.max77620_chip = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_8__, i32 }
%struct.i2c_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77620_children = common dso_local global %struct.mfd_cell* null, align 8
@max77620_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@max20024_children = common dso_local global %struct.mfd_cell* null, align 8
@max20024_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@max77663_children = common dso_local global %struct.mfd_cell* null, align 8
@max77663_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"ChipID is invalid %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to initialise regmap: %d\0A\00", align 1
@max77620_top_irq_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to add regmap irq: %d\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to add MFD children: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@max77620_scratch = common dso_local global %struct.max77620_chip* null, align 8
@max77620_pm_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max77620_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap_config*, align 8
  %7 = alloca %struct.max77620_chip*, align 8
  %8 = alloca %struct.mfd_cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max77620_chip* @devm_kzalloc(%struct.TYPE_8__* %13, i32 32, i32 %14)
  store %struct.max77620_chip* %15, %struct.max77620_chip** %7, align 8
  %16 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %17 = icmp ne %struct.max77620_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %168

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.max77620_chip* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %28 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %27, i32 0, i32 2
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %30 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %35 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %41 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %43 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %57 [
    i32 129, label %45
    i32 130, label %49
    i32 128, label %53
  ]

45:                                               ; preds = %21
  %46 = load %struct.mfd_cell*, %struct.mfd_cell** @max77620_children, align 8
  store %struct.mfd_cell* %46, %struct.mfd_cell** %8, align 8
  %47 = load %struct.mfd_cell*, %struct.mfd_cell** @max77620_children, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %47)
  store i32 %48, i32* %9, align 4
  store %struct.regmap_config* @max77620_regmap_config, %struct.regmap_config** %6, align 8
  br label %67

49:                                               ; preds = %21
  %50 = load %struct.mfd_cell*, %struct.mfd_cell** @max20024_children, align 8
  store %struct.mfd_cell* %50, %struct.mfd_cell** %8, align 8
  %51 = load %struct.mfd_cell*, %struct.mfd_cell** @max20024_children, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %51)
  store i32 %52, i32* %9, align 4
  store %struct.regmap_config* @max20024_regmap_config, %struct.regmap_config** %6, align 8
  br label %67

53:                                               ; preds = %21
  %54 = load %struct.mfd_cell*, %struct.mfd_cell** @max77663_children, align 8
  store %struct.mfd_cell* %54, %struct.mfd_cell** %8, align 8
  %55 = load %struct.mfd_cell*, %struct.mfd_cell** @max77663_children, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %55)
  store i32 %56, i32* %9, align 4
  store %struct.regmap_config* @max77663_regmap_config, %struct.regmap_config** %6, align 8
  br label %67

57:                                               ; preds = %21
  %58 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %59 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %62 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %168

67:                                               ; preds = %53, %49, %45
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.regmap_config*, %struct.regmap_config** %6, align 8
  %70 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %68, %struct.regmap_config* %69)
  %71 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %72 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %74 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %67
  %79 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %80 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %84 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @dev_err(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  br label %168

89:                                               ; preds = %67
  %90 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %91 = call i32 @max77620_read_es_version(%struct.max77620_chip* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %168

96:                                               ; preds = %89
  %97 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  store %struct.max77620_chip* %97, %struct.max77620_chip** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @max77620_top_irq_chip, i32 0, i32 0), align 8
  %98 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %99 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %102 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IRQF_ONESHOT, align 4
  %108 = load i32, i32* @IRQF_SHARED, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %111 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %114 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %113, i32 0, i32 3
  %115 = call i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__* %100, i32 %103, i32 %106, i32 %109, i32 %112, %struct.TYPE_7__* @max77620_top_irq_chip, i32* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %96
  %119 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %120 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @dev_err(%struct.TYPE_8__* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %168

125:                                              ; preds = %96
  %126 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %127 = call i32 @max77620_initialise_fps(%struct.max77620_chip* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %168

132:                                              ; preds = %125
  %133 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %134 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %137 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %140 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @regmap_irq_get_domain(i32 %141)
  %143 = call i32 @devm_mfd_add_devices(%struct.TYPE_8__* %135, i32 %136, %struct.mfd_cell* %137, i32 %138, i32* null, i32 0, i32 %142)
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %132
  %147 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  %148 = getelementptr inbounds %struct.max77620_chip, %struct.max77620_chip* %147, i32 0, i32 2
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @dev_err(%struct.TYPE_8__* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %3, align 4
  br label %168

153:                                              ; preds = %132
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @of_device_is_system_power_controller(i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load i64, i64* @pm_power_off, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.max77620_chip*, %struct.max77620_chip** %7, align 8
  store %struct.max77620_chip* %165, %struct.max77620_chip** @max77620_scratch, align 8
  %166 = load i64, i64* @max77620_pm_power_off, align 8
  store i64 %166, i64* @pm_power_off, align 8
  br label %167

167:                                              ; preds = %164, %161, %153
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %146, %130, %118, %94, %78, %57, %18
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.max77620_chip* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max77620_chip*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @max77620_read_es_version(%struct.max77620_chip*) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @max77620_initialise_fps(%struct.max77620_chip*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_8__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @of_device_is_system_power_controller(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
