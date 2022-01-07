; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8997.c_max8997_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.max8997_dev = type { %struct.max8997_platform_data*, %struct.max8997_platform_data*, %struct.max8997_platform_data*, %struct.TYPE_9__*, i32, i32, %struct.max8997_platform_data*, i32, i32, %struct.max8997_platform_data* }
%struct.max8997_platform_data = type { i32, i32, i32, %struct.TYPE_9__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_OF = common dso_local global i32 0, align 4
@I2C_ADDR_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate I2C device for RTC\0A\00", align 1
@I2C_ADDR_HAPTIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", align 1
@I2C_ADDR_MUIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", align 1
@max8997_devs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8997_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max8997_dev*, align 8
  %7 = alloca %struct.max8997_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 3
  %11 = call %struct.max8997_platform_data* @dev_get_platdata(%struct.TYPE_9__* %10)
  store %struct.max8997_platform_data* %11, %struct.max8997_platform_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 3
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max8997_dev* @devm_kzalloc(%struct.TYPE_9__* %13, i32 64, i32 %14)
  store %struct.max8997_dev* %15, %struct.max8997_dev** %6, align 8
  %16 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %17 = icmp eq %struct.max8997_dev* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %215

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = bitcast %struct.i2c_client* %22 to %struct.max8997_platform_data*
  %24 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %25 = call i32 @i2c_set_clientdata(%struct.max8997_platform_data* %23, %struct.max8997_dev* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 3
  %28 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %29 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %28, i32 0, i32 3
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = bitcast %struct.i2c_client* %30 to %struct.max8997_platform_data*
  %32 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %33 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %32, i32 0, i32 9
  store %struct.max8997_platform_data* %31, %struct.max8997_platform_data** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = bitcast %struct.i2c_client* %34 to %struct.max8997_platform_data*
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %37 = call i32 @max8997_i2c_get_driver_data(%struct.max8997_platform_data* %35, %struct.i2c_device_id* %36)
  %38 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %39 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %44 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @CONFIG_OF, align 4
  %46 = call i64 @IS_ENABLED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %21
  %49 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %50 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %49, i32 0, i32 3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %57 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call %struct.max8997_platform_data* @max8997_i2c_parse_dt_pdata(%struct.TYPE_9__* %58)
  store %struct.max8997_platform_data* %59, %struct.max8997_platform_data** %7, align 8
  %60 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %61 = call i64 @IS_ERR(%struct.max8997_platform_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %65 = call i32 @PTR_ERR(%struct.max8997_platform_data* %64)
  store i32 %65, i32* %3, align 4
  br label %215

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %48, %21
  %68 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %69 = icmp ne %struct.max8997_platform_data* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %215

72:                                               ; preds = %67
  %73 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %74 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %75 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %74, i32 0, i32 6
  store %struct.max8997_platform_data* %73, %struct.max8997_platform_data** %75, align 8
  %76 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %7, align 8
  %77 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %80 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %82 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %81, i32 0, i32 4
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @I2C_ADDR_RTC, align 4
  %88 = call i8* @i2c_new_dummy_device(i32 %86, i32 %87)
  %89 = bitcast i8* %88 to %struct.max8997_platform_data*
  %90 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %91 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %90, i32 0, i32 0
  store %struct.max8997_platform_data* %89, %struct.max8997_platform_data** %91, align 8
  %92 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %93 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %92, i32 0, i32 0
  %94 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %93, align 8
  %95 = call i64 @IS_ERR(%struct.max8997_platform_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %72
  %98 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %99 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %98, i32 0, i32 3
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %103 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %102, i32 0, i32 0
  %104 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %103, align 8
  %105 = call i32 @PTR_ERR(%struct.max8997_platform_data* %104)
  store i32 %105, i32* %3, align 4
  br label %215

106:                                              ; preds = %72
  %107 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %108 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %107, i32 0, i32 0
  %109 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %108, align 8
  %110 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %111 = call i32 @i2c_set_clientdata(%struct.max8997_platform_data* %109, %struct.max8997_dev* %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @I2C_ADDR_HAPTIC, align 4
  %116 = call i8* @i2c_new_dummy_device(i32 %114, i32 %115)
  %117 = bitcast i8* %116 to %struct.max8997_platform_data*
  %118 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %119 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %118, i32 0, i32 1
  store %struct.max8997_platform_data* %117, %struct.max8997_platform_data** %119, align 8
  %120 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %121 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %120, i32 0, i32 1
  %122 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %121, align 8
  %123 = call i64 @IS_ERR(%struct.max8997_platform_data* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %106
  %126 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %127 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %126, i32 0, i32 3
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %131 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %130, i32 0, i32 1
  %132 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %131, align 8
  %133 = call i32 @PTR_ERR(%struct.max8997_platform_data* %132)
  store i32 %133, i32* %8, align 4
  br label %209

134:                                              ; preds = %106
  %135 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %136 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %135, i32 0, i32 1
  %137 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %136, align 8
  %138 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %139 = call i32 @i2c_set_clientdata(%struct.max8997_platform_data* %137, %struct.max8997_dev* %138)
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @I2C_ADDR_MUIC, align 4
  %144 = call i8* @i2c_new_dummy_device(i32 %142, i32 %143)
  %145 = bitcast i8* %144 to %struct.max8997_platform_data*
  %146 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %147 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %146, i32 0, i32 2
  store %struct.max8997_platform_data* %145, %struct.max8997_platform_data** %147, align 8
  %148 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %149 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %148, i32 0, i32 2
  %150 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %149, align 8
  %151 = call i64 @IS_ERR(%struct.max8997_platform_data* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %134
  %154 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %155 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %154, i32 0, i32 3
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %156, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %159 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %158, i32 0, i32 2
  %160 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %159, align 8
  %161 = call i32 @PTR_ERR(%struct.max8997_platform_data* %160)
  store i32 %161, i32* %8, align 4
  br label %204

162:                                              ; preds = %134
  %163 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %164 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %163, i32 0, i32 2
  %165 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %164, align 8
  %166 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %167 = call i32 @i2c_set_clientdata(%struct.max8997_platform_data* %165, %struct.max8997_dev* %166)
  %168 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %169 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %168, i32 0, i32 3
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = call i32 @pm_runtime_set_active(%struct.TYPE_9__* %170)
  %172 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %173 = call i32 @max8997_irq_init(%struct.max8997_dev* %172)
  %174 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %175 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %174, i32 0, i32 3
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i32, i32* @max8997_devs, align 4
  %178 = load i32, i32* @max8997_devs, align 4
  %179 = call i32 @ARRAY_SIZE(i32 %178)
  %180 = call i32 @mfd_add_devices(%struct.TYPE_9__* %176, i32 -1, i32 %177, i32 %179, i32* null, i32 0, i32* null)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %162
  %184 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %185 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %184, i32 0, i32 3
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  br label %195

189:                                              ; preds = %162
  %190 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %191 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %190, i32 0, i32 3
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = call i32 @device_init_wakeup(%struct.TYPE_9__* %192, i32 1)
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %3, align 4
  br label %215

195:                                              ; preds = %183
  %196 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %197 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %196, i32 0, i32 3
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = call i32 @mfd_remove_devices(%struct.TYPE_9__* %198)
  %200 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %201 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %200, i32 0, i32 2
  %202 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %201, align 8
  %203 = call i32 @i2c_unregister_device(%struct.max8997_platform_data* %202)
  br label %204

204:                                              ; preds = %195, %153
  %205 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %206 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %205, i32 0, i32 1
  %207 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %206, align 8
  %208 = call i32 @i2c_unregister_device(%struct.max8997_platform_data* %207)
  br label %209

209:                                              ; preds = %204, %125
  %210 = load %struct.max8997_dev*, %struct.max8997_dev** %6, align 8
  %211 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %210, i32 0, i32 0
  %212 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %211, align 8
  %213 = call i32 @i2c_unregister_device(%struct.max8997_platform_data* %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %209, %189, %97, %70, %63, %18
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.max8997_platform_data* @dev_get_platdata(%struct.TYPE_9__*) #1

declare dso_local %struct.max8997_dev* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.max8997_platform_data*, %struct.max8997_dev*) #1

declare dso_local i32 @max8997_i2c_get_driver_data(%struct.max8997_platform_data*, %struct.i2c_device_id*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.max8997_platform_data* @max8997_i2c_parse_dt_pdata(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(%struct.max8997_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.max8997_platform_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_9__*) #1

declare dso_local i32 @max8997_irq_init(%struct.max8997_dev*) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @mfd_remove_devices(%struct.TYPE_9__*) #1

declare dso_local i32 @i2c_unregister_device(%struct.max8997_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
