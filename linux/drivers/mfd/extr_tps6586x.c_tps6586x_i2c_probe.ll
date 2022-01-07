; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps6586x.c_tps6586x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.i2c_client = type { i32, %struct.TYPE_7__ }
%struct.i2c_device_id = type { i32 }
%struct.tps6586x_platform_data = type { i64, i32 }
%struct.tps6586x = type { i32, %struct.TYPE_7__*, i32, i32, %struct.i2c_client* }

@.str = private unnamed_addr constant [33 x i8] c"tps6586x requires platform data\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@TPS6586X_VERSIONCRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Chip ID read failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps6586x_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"IRQ init failed: %d\0A\00", align 1
@tps6586x_cell = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"add devices failed: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@tps6586x_dev = common dso_local global %struct.TYPE_7__* null, align 8
@tps6586x_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps6586x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6586x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps6586x_platform_data*, align 8
  %7 = alloca %struct.tps6586x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_7__* %11)
  store %struct.tps6586x_platform_data* %12, %struct.tps6586x_platform_data** %6, align 8
  %13 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %6, align 8
  %14 = icmp ne %struct.tps6586x_platform_data* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call %struct.tps6586x_platform_data* @tps6586x_parse_dt(%struct.i2c_client* %22)
  store %struct.tps6586x_platform_data* %23, %struct.tps6586x_platform_data** %6, align 8
  br label %24

24:                                               ; preds = %21, %15, %2
  %25 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %6, align 8
  %26 = icmp ne %struct.tps6586x_platform_data* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %177

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @TPS6586X_VERSIONCRC, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %177

46:                                               ; preds = %33
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.tps6586x* @devm_kzalloc(%struct.TYPE_7__* %48, i32 32, i32 %49)
  store %struct.tps6586x* %50, %struct.tps6586x** %7, align 8
  %51 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %52 = icmp ne %struct.tps6586x* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %177

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %59 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %62 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @tps6586x_print_version(%struct.i2c_client* %60, i32 %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %67 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %66, i32 0, i32 4
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %71 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %70, i32 0, i32 1
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %74 = call i32 @i2c_set_clientdata(%struct.i2c_client* %72, %struct.tps6586x* %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %75, i32* @tps6586x_regmap_config)
  %77 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %78 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %80 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %56
  %85 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %86 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %177

94:                                               ; preds = %56
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %94
  %100 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %6, align 8
  %105 = getelementptr inbounds %struct.tps6586x_platform_data, %struct.tps6586x_platform_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tps6586x_irq_init(%struct.tps6586x* %100, i32 %103, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 1
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %177

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %94
  %118 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %119 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* @tps6586x_cell, align 4
  %122 = load i32, i32* @tps6586x_cell, align 4
  %123 = call i32 @ARRAY_SIZE(i32 %122)
  %124 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %125 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @mfd_add_devices(%struct.TYPE_7__* %120, i32 -1, i32 %121, i32 %123, i32* null, i32 0, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %117
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = load i32, i32* %8, align 4
  %134 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %133)
  br label %164

135:                                              ; preds = %117
  %136 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %137 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %6, align 8
  %138 = call i32 @tps6586x_add_subdevs(%struct.tps6586x* %136, %struct.tps6586x_platform_data* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = load i32, i32* %8, align 4
  %145 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  br label %159

146:                                              ; preds = %135
  %147 = load %struct.tps6586x_platform_data*, %struct.tps6586x_platform_data** %6, align 8
  %148 = getelementptr inbounds %struct.tps6586x_platform_data, %struct.tps6586x_platform_data* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i64, i64* @pm_power_off, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 1
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** @tps6586x_dev, align 8
  %157 = load i64, i64* @tps6586x_power_off, align 8
  store i64 %157, i64* @pm_power_off, align 8
  br label %158

158:                                              ; preds = %154, %151, %146
  store i32 0, i32* %3, align 4
  br label %177

159:                                              ; preds = %141
  %160 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %161 = getelementptr inbounds %struct.tps6586x, %struct.tps6586x* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = call i32 @mfd_remove_devices(%struct.TYPE_7__* %162)
  br label %164

164:                                              ; preds = %159, %130
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.tps6586x*, %struct.tps6586x** %7, align 8
  %174 = call i32 @free_irq(i32 %172, %struct.tps6586x* %173)
  br label %175

175:                                              ; preds = %169, %164
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %175, %158, %110, %84, %53, %39, %27
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.tps6586x_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local %struct.tps6586x_platform_data* @tps6586x_parse_dt(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.tps6586x* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @tps6586x_print_version(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps6586x*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tps6586x_irq_init(%struct.tps6586x*, i32, i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_7__*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tps6586x_add_subdevs(%struct.tps6586x*, %struct.tps6586x_platform_data*) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_7__*) #1

declare dso_local i32 @free_irq(i32, %struct.tps6586x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
