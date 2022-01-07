; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lochnagar-i2c.c_lochnagar_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lochnagar-i2c.c_lochnagar_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.lochnagar_config = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.of_device_id = type { %struct.lochnagar_config* }
%struct.lochnagar = type { %struct.gpio_desc*, i32, i32, %struct.device* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lochnagar_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to get reset GPIO: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to get present GPIO: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to read device ID: %d\0A\00", align 1
@LOCHNAGAR_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR_REV_ID_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"ID does not match %s (expected 0x%x got 0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LOCHNAGAR_FIRMWARE_ID1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to read firmware id 1: %d\0A\00", align 1
@LOCHNAGAR_FIRMWARE_ID2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to read firmware id 2: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Found %s (0x%x) revision %u firmware 0x%.6x\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to register patch: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Failed to populate child nodes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lochnagar_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lochnagar_config*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.lochnagar*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  store %struct.lochnagar_config* null, %struct.lochnagar_config** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.lochnagar* @devm_kzalloc(%struct.device* %17, i32 24, i32 %18)
  store %struct.lochnagar* %19, %struct.lochnagar** %7, align 8
  %20 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %21 = icmp ne %struct.lochnagar* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %215

25:                                               ; preds = %1
  %26 = load i32, i32* @lochnagar_of_match, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call %struct.of_device_id* @of_match_device(i32 %26, %struct.device* %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %6, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %215

34:                                               ; preds = %25
  %35 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load %struct.lochnagar_config*, %struct.lochnagar_config** %36, align 8
  store %struct.lochnagar_config* %37, %struct.lochnagar_config** %5, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %40 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %39, i32 0, i32 3
  store %struct.device* %38, %struct.device** %40, align 8
  %41 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %42 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %41, i32 0, i32 2
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.lochnagar* %45)
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %49 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %48)
  store %struct.gpio_desc* %49, %struct.gpio_desc** %8, align 8
  %50 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %51 = call i64 @IS_ERR(%struct.gpio_desc* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %34
  %54 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %55 = call i32 @PTR_ERR(%struct.gpio_desc* %54)
  store i32 %55, i32* %14, align 4
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %2, align 4
  br label %215

60:                                               ; preds = %34
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %63 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  store %struct.gpio_desc* %63, %struct.gpio_desc** %9, align 8
  %64 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %65 = call i64 @IS_ERR(%struct.gpio_desc* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %69 = call i32 @PTR_ERR(%struct.gpio_desc* %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %2, align 4
  br label %215

74:                                               ; preds = %60
  %75 = call i32 @msleep(i32 20)
  %76 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %77 = call i32 @gpiod_set_value_cansleep(%struct.gpio_desc* %76, i32 1)
  %78 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %79 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %82 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %85 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client* %83, %struct.TYPE_2__* %86)
  %88 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %89 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %88, i32 0, i32 0
  store %struct.gpio_desc* %87, %struct.gpio_desc** %89, align 8
  %90 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %91 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %90, i32 0, i32 0
  %92 = load %struct.gpio_desc*, %struct.gpio_desc** %91, align 8
  %93 = call i64 @IS_ERR(%struct.gpio_desc* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %74
  %96 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %97 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %96, i32 0, i32 0
  %98 = load %struct.gpio_desc*, %struct.gpio_desc** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.gpio_desc* %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %2, align 4
  br label %215

104:                                              ; preds = %74
  %105 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %106 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %105, i32 0, i32 0
  %107 = load %struct.gpio_desc*, %struct.gpio_desc** %106, align 8
  %108 = call i32 @lochnagar_wait_for_boot(%struct.gpio_desc* %107, i32* %10)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %2, align 4
  br label %215

116:                                              ; preds = %104
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @LOCHNAGAR_DEVICE_ID_MASK, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @LOCHNAGAR_REV_ID_MASK, align 4
  %122 = and i32 %120, %121
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %125 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %116
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %131 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %134 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %132, i32 %135, i32 %136)
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %215

140:                                              ; preds = %116
  %141 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %142 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %141, i32 0, i32 0
  %143 = load %struct.gpio_desc*, %struct.gpio_desc** %142, align 8
  %144 = load i32, i32* @LOCHNAGAR_FIRMWARE_ID1, align 4
  %145 = call i32 @regmap_read(%struct.gpio_desc* %143, i32 %144, i32* %10)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %2, align 4
  br label %215

153:                                              ; preds = %140
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %11, align 4
  %155 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %156 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %155, i32 0, i32 0
  %157 = load %struct.gpio_desc*, %struct.gpio_desc** %156, align 8
  %158 = load i32, i32* @LOCHNAGAR_FIRMWARE_ID2, align 4
  %159 = call i32 @regmap_read(%struct.gpio_desc* %157, i32 %158, i32* %10)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %153
  %163 = load %struct.device*, %struct.device** %4, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %2, align 4
  br label %215

167:                                              ; preds = %153
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %170 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %169, i32 0, i32 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %168, %173
  %175 = load i32, i32* %11, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %11, align 4
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %179 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add i32 %182, 1
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @dev_info(%struct.device* %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %180, i32 %181, i32 %183, i32 %184)
  %186 = load %struct.lochnagar*, %struct.lochnagar** %7, align 8
  %187 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %186, i32 0, i32 0
  %188 = load %struct.gpio_desc*, %struct.gpio_desc** %187, align 8
  %189 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %190 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.lochnagar_config*, %struct.lochnagar_config** %5, align 8
  %193 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @regmap_register_patch(%struct.gpio_desc* %188, i32 %191, i32 %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %167
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = load i32, i32* %14, align 4
  %201 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %2, align 4
  br label %215

203:                                              ; preds = %167
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = call i32 @devm_of_platform_populate(%struct.device* %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %2, align 4
  br label %215

213:                                              ; preds = %203
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %213, %208, %198, %162, %148, %128, %111, %95, %67, %53, %31, %22
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.lochnagar* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.lochnagar*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(%struct.gpio_desc*, i32) #1

declare dso_local %struct.gpio_desc* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_2__*) #1

declare dso_local i32 @lochnagar_wait_for_boot(%struct.gpio_desc*, i32*) #1

declare dso_local i32 @regmap_read(%struct.gpio_desc*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_register_patch(%struct.gpio_desc*, i32, i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
