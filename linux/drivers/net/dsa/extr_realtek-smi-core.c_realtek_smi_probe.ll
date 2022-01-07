; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.realtek_smi_variant = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.realtek_smi*)* }
%struct.realtek_smi = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i8*, i8*, i8*, i32, i32, i32, i32, %struct.device*, i8* }
%struct.TYPE_5__ = type { i32, %struct.realtek_smi* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@realtek_smi_mdio_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get RESET GPIO\0A\00", align 1
@REALTEK_SMI_HW_STOP_DELAY = common dso_local global i32 0, align 4
@REALTEK_SMI_HW_START_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"deasserted RESET\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"realtek,disable-leds\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to detect switch\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unable to register switch ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @realtek_smi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtek_smi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.realtek_smi_variant*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.realtek_smi*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.realtek_smi_variant* @of_device_get_match_data(%struct.device* %11)
  store %struct.realtek_smi_variant* %12, %struct.realtek_smi_variant** %4, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.realtek_smi* @devm_kzalloc(%struct.device* %16, i32 88, i32 %17)
  store %struct.realtek_smi* %18, %struct.realtek_smi** %6, align 8
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %20 = icmp ne %struct.realtek_smi* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %191

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %27 = call i8* @devm_regmap_init(%struct.device* %25, i32* null, %struct.realtek_smi* %26, i32* @realtek_smi_mdio_regmap_config)
  %28 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %29 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %28, i32 0, i32 12
  store i8* %27, i8** %29, align 8
  %30 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %31 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %30, i32 0, i32 12
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %37 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %36, i32 0, i32 12
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %191

44:                                               ; preds = %24
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %47 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %46, i32 0, i32 11
  store %struct.device* %45, %struct.device** %47, align 8
  %48 = load %struct.realtek_smi_variant*, %struct.realtek_smi_variant** %4, align 8
  %49 = getelementptr inbounds %struct.realtek_smi_variant, %struct.realtek_smi_variant* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %52 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.realtek_smi_variant*, %struct.realtek_smi_variant** %4, align 8
  %54 = getelementptr inbounds %struct.realtek_smi_variant, %struct.realtek_smi_variant* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %57 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 8
  %58 = load %struct.realtek_smi_variant*, %struct.realtek_smi_variant** %4, align 8
  %59 = getelementptr inbounds %struct.realtek_smi_variant, %struct.realtek_smi_variant* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %62 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.realtek_smi_variant*, %struct.realtek_smi_variant** %4, align 8
  %64 = getelementptr inbounds %struct.realtek_smi_variant, %struct.realtek_smi_variant* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %67 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %66, i32 0, i32 2
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %67, align 8
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %70 = call i32 @dev_set_drvdata(%struct.device* %68, %struct.realtek_smi* %69)
  %71 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %72 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %71, i32 0, i32 7
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %76 = call i8* @devm_gpiod_get_optional(%struct.device* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %78 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %77, i32 0, i32 6
  store i8* %76, i8** %78, align 8
  %79 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %80 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @IS_ERR(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %44
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %88 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %2, align 4
  br label %191

91:                                               ; preds = %44
  %92 = load i32, i32* @REALTEK_SMI_HW_STOP_DELAY, align 4
  %93 = call i32 @msleep(i32 %92)
  %94 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %95 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @gpiod_set_value(i8* %96, i32 0)
  %98 = load i32, i32* @REALTEK_SMI_HW_START_DELAY, align 4
  %99 = call i32 @msleep(i32 %98)
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 @dev_info(%struct.device* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %104 = call i8* @devm_gpiod_get_optional(%struct.device* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %106 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %108 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @IS_ERR(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %91
  %113 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %114 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %113, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %2, align 4
  br label %191

117:                                              ; preds = %91
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %120 = call i8* @devm_gpiod_get_optional(%struct.device* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %122 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %124 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @IS_ERR(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %130 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @PTR_ERR(i8* %131)
  store i32 %132, i32* %2, align 4
  br label %191

133:                                              ; preds = %117
  %134 = load %struct.device_node*, %struct.device_node** %7, align 8
  %135 = call i32 @of_property_read_bool(%struct.device_node* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %137 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %139 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32 (%struct.realtek_smi*)*, i32 (%struct.realtek_smi*)** %141, align 8
  %143 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %144 = call i32 %142(%struct.realtek_smi* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %191

151:                                              ; preds = %133
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %154 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_5__* @dsa_switch_alloc(%struct.device* %152, i32 %155)
  %157 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %158 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %157, i32 0, i32 0
  store %struct.TYPE_5__* %156, %struct.TYPE_5__** %158, align 8
  %159 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %160 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = icmp ne %struct.TYPE_5__* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %151
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %191

166:                                              ; preds = %151
  %167 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %168 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %169 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  store %struct.realtek_smi* %167, %struct.realtek_smi** %171, align 8
  %172 = load %struct.realtek_smi_variant*, %struct.realtek_smi_variant** %4, align 8
  %173 = getelementptr inbounds %struct.realtek_smi_variant, %struct.realtek_smi_variant* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %176 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  %179 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %180 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %179, i32 0, i32 0
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = call i32 @dsa_register_switch(%struct.TYPE_5__* %181)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %166
  %186 = load %struct.device*, %struct.device** %5, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %185, %163, %147, %128, %112, %84, %35, %21
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.realtek_smi_variant* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.realtek_smi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_regmap_init(%struct.device*, i32*, %struct.realtek_smi*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.realtek_smi*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.TYPE_5__* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
