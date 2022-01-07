; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.twl_client*, %struct.TYPE_18__*, i32 }
%struct.twl_client = type { %struct.i2c_client*, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_19__, i64, i64, i32 }
%struct.TYPE_19__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.regmap_config = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.i2c_device_id = type { i32, i32 }
%struct.twl4030_platform_data = type { i32, i32* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@twl_priv = common dso_local global %struct.TYPE_16__* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"only one instance of %s allowed\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"can't alloc pdev\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"can't talk I2C?\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TWL6030_CLASS = common dso_local global i32 0, align 4
@TWL6030_CLASS_ID = common dso_local global i32 0, align 4
@twl6030_map = common dso_local global %struct.TYPE_18__* null, align 8
@TWL6032_SUBCLASS = common dso_local global i32 0, align 4
@TWL6032_BASEADD_CHARGER = common dso_local global i32 0, align 4
@TWL_MODULE_MAIN_CHARGE = common dso_local global i64 0, align 8
@twl6030_regmap_config = common dso_local global %struct.regmap_config* null, align 8
@TWL4030_CLASS_ID = common dso_local global i32 0, align 4
@twl4030_map = common dso_local global %struct.TYPE_18__* null, align 8
@twl4030_regmap_config = common dso_local global %struct.regmap_config* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to allocate regmap %d, err: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Error: reading twl_idcode register value\0A\00", align 1
@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@REG_GPPUPDCTR1 = common dso_local global i32 0, align 4
@SR_I2C_SDA_CTRL_PU = common dso_local global i32 0, align 4
@SR_I2C_SCL_CTRL_PU = common dso_local global i32 0, align 4
@I2C_SDA_CTRL_PU = common dso_local global i32 0, align 4
@I2C_SCL_CTRL_PU = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@TWL4030_DCDC_GLOBAL_CFG = common dso_local global i32 0, align 4
@SMARTREFLEX_ENABLE = common dso_local global i32 0, align 4
@twl_auxdata_lookup = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @twl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.twl4030_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.regmap_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.twl_client*, align 8
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call %struct.twl4030_platform_data* @dev_get_platdata(%struct.TYPE_19__* %17)
  store %struct.twl4030_platform_data* %18, %struct.twl4030_platform_data** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %7, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %27 = icmp ne %struct.twl4030_platform_data* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %347

34:                                               ; preds = %25, %2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %36 = icmp ne %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* @DRIVER_NAME, align 4
  %41 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_dbg(%struct.TYPE_19__* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %347

44:                                               ; preds = %34
  %45 = load i32, i32* @DRIVER_NAME, align 4
  %46 = call %struct.platform_device* @platform_device_alloc(i32 %45, i32 -1)
  store %struct.platform_device* %46, %struct.platform_device** %8, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %48 = icmp ne %struct.platform_device* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %347

55:                                               ; preds = %44
  %56 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %57 = call i32 @platform_device_add(%struct.platform_device* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %62 = call i32 @platform_device_put(%struct.platform_device* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %3, align 4
  br label %347

64:                                               ; preds = %55
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @I2C_FUNC_I2C, align 4
  %69 = call i64 @i2c_check_functionality(i32 %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_dbg(%struct.TYPE_19__* %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %339

77:                                               ; preds = %64
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.TYPE_16__* @devm_kzalloc(%struct.TYPE_19__* %79, i32 4, i32 %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** @twl_priv, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %83 = icmp ne %struct.TYPE_16__* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %339

87:                                               ; preds = %77
  %88 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TWL6030_CLASS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %87
  %95 = load i32, i32* @TWL6030_CLASS_ID, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** @twl6030_map, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i64 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %101, align 8
  %102 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TWL6032_SUBCLASS, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load i32, i32* @TWL6032_BASEADD_CHARGER, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load i64, i64* @TWL_MODULE_MAIN_CHARGE, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %94
  %117 = load %struct.regmap_config*, %struct.regmap_config** @twl6030_regmap_config, align 8
  store %struct.regmap_config* %117, %struct.regmap_config** %9, align 8
  br label %127

118:                                              ; preds = %87
  %119 = load i32, i32* @TWL4030_CLASS_ID, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** @twl4030_map, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i64 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %125, align 8
  %126 = load %struct.regmap_config*, %struct.regmap_config** @twl4030_regmap_config, align 8
  store %struct.regmap_config* %126, %struct.regmap_config** %9, align 8
  br label %127

127:                                              ; preds = %118, %116
  %128 = call i32 (...) @twl_get_num_slaves()
  store i32 %128, i32* %13, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.twl_client* @devm_kcalloc(%struct.TYPE_19__* %130, i32 %131, i32 16, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store %struct.twl_client* %133, %struct.twl_client** %135, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load %struct.twl_client*, %struct.twl_client** %137, align 8
  %139 = icmp ne %struct.twl_client* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %339

143:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %216, %143
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %219

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.twl_client*, %struct.twl_client** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %151, i64 %153
  store %struct.twl_client* %154, %struct.twl_client** %14, align 8
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %160 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %159, i32 0, i32 1
  store %struct.i2c_client* %158, %struct.i2c_client** %160, align 8
  br label %189

161:                                              ; preds = %148
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %164, i64 %170)
  %172 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %173 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %172, i32 0, i32 1
  store %struct.i2c_client* %171, %struct.i2c_client** %173, align 8
  %174 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %175 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %174, i32 0, i32 1
  %176 = load %struct.i2c_client*, %struct.i2c_client** %175, align 8
  %177 = call i64 @IS_ERR(%struct.i2c_client* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %161
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load i32, i32* %12, align 4
  %183 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  %184 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %185 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %184, i32 0, i32 1
  %186 = load %struct.i2c_client*, %struct.i2c_client** %185, align 8
  %187 = call i32 @PTR_ERR(%struct.i2c_client* %186)
  store i32 %187, i32* %11, align 4
  br label %332

188:                                              ; preds = %161
  br label %189

189:                                              ; preds = %188, %157
  %190 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %191 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %190, i32 0, i32 1
  %192 = load %struct.i2c_client*, %struct.i2c_client** %191, align 8
  %193 = load %struct.regmap_config*, %struct.regmap_config** %9, align 8
  %194 = load i32, i32* %12, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %193, i64 %195
  %197 = call %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client* %192, %struct.regmap_config* %196)
  %198 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %199 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %198, i32 0, i32 0
  store %struct.i2c_client* %197, %struct.i2c_client** %199, align 8
  %200 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %201 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %200, i32 0, i32 0
  %202 = load %struct.i2c_client*, %struct.i2c_client** %201, align 8
  %203 = call i64 @IS_ERR(%struct.i2c_client* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %189
  %206 = load %struct.twl_client*, %struct.twl_client** %14, align 8
  %207 = getelementptr inbounds %struct.twl_client, %struct.twl_client* %206, i32 0, i32 0
  %208 = load %struct.i2c_client*, %struct.i2c_client** %207, align 8
  %209 = call i32 @PTR_ERR(%struct.i2c_client* %208)
  store i32 %209, i32* %11, align 4
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 0
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %211, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %212, i32 %213)
  br label %332

215:                                              ; preds = %189
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %12, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %12, align 4
  br label %144

219:                                              ; preds = %144
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** @twl_priv, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %222, i32 0, i32 0
  %224 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %225 = icmp ne %struct.twl4030_platform_data* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %228 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  br label %231

230:                                              ; preds = %219
  br label %231

231:                                              ; preds = %230, %226
  %232 = phi i32* [ %229, %226 ], [ null, %230 ]
  %233 = call i32 @clocks_init(%struct.TYPE_19__* %223, i32* %232)
  %234 = call i64 (...) @twl_class_is_4030()
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = call i32 (...) @twl_read_idcode_register()
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp slt i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @WARN(i32 %240, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %242

242:                                              ; preds = %236, %231
  %243 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %244 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %274

247:                                              ; preds = %242
  %248 = call i64 (...) @twl_class_is_4030()
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %247
  %251 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %252 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @twl4030_init_chip_irq(i32 %253)
  %255 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %256 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %255, i32 0, i32 0
  %257 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %258 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @twl4030_init_irq(%struct.TYPE_19__* %256, i64 %259)
  store i32 %260, i32* %10, align 4
  br label %268

261:                                              ; preds = %247
  %262 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %263 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %262, i32 0, i32 0
  %264 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %265 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @twl6030_init_irq(%struct.TYPE_19__* %263, i64 %266)
  store i32 %267, i32* %10, align 4
  br label %268

268:                                              ; preds = %261, %250
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %10, align 4
  store i32 %272, i32* %11, align 4
  br label %332

273:                                              ; preds = %268
  br label %274

274:                                              ; preds = %273, %242
  %275 = call i64 (...) @twl_class_is_4030()
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %305

277:                                              ; preds = %274
  %278 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %279 = load i32, i32* @REG_GPPUPDCTR1, align 4
  %280 = call i32 @twl_i2c_read_u8(i32 %278, i32* %15, i32 %279)
  %281 = load i32, i32* @SR_I2C_SDA_CTRL_PU, align 4
  %282 = load i32, i32* @SR_I2C_SCL_CTRL_PU, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @I2C_SDA_CTRL_PU, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @I2C_SCL_CTRL_PU, align 4
  %287 = or i32 %285, %286
  %288 = xor i32 %287, -1
  %289 = load i32, i32* %15, align 4
  %290 = and i32 %289, %288
  store i32 %290, i32* %15, align 4
  %291 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %292 = load i32, i32* %15, align 4
  %293 = load i32, i32* @REG_GPPUPDCTR1, align 4
  %294 = call i32 @twl_i2c_write_u8(i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %296 = load i32, i32* @TWL4030_DCDC_GLOBAL_CFG, align 4
  %297 = call i32 @twl_i2c_read_u8(i32 %295, i32* %15, i32 %296)
  %298 = load i32, i32* @SMARTREFLEX_ENABLE, align 4
  %299 = load i32, i32* %15, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %15, align 4
  %301 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* @TWL4030_DCDC_GLOBAL_CFG, align 4
  %304 = call i32 @twl_i2c_write_u8(i32 %301, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %277, %274
  %306 = load %struct.device_node*, %struct.device_node** %7, align 8
  %307 = icmp ne %struct.device_node* %306, null
  br i1 %307, label %308, label %324

308:                                              ; preds = %305
  %309 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %310 = icmp ne %struct.twl4030_platform_data* %309, null
  br i1 %310, label %311, label %318

311:                                              ; preds = %308
  %312 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %313 = getelementptr inbounds %struct.twl4030_platform_data, %struct.twl4030_platform_data* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl_auxdata_lookup, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i64 0
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  store i32 %314, i32* %317, align 4
  br label %318

318:                                              ; preds = %311, %308
  %319 = load %struct.device_node*, %struct.device_node** %7, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl_auxdata_lookup, align 8
  %321 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %322 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %321, i32 0, i32 0
  %323 = call i32 @of_platform_populate(%struct.device_node* %319, i32* null, %struct.TYPE_17__* %320, %struct.TYPE_19__* %322)
  store i32 %323, i32* %11, align 4
  br label %331

324:                                              ; preds = %305
  %325 = load %struct.twl4030_platform_data*, %struct.twl4030_platform_data** %6, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %328 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @add_children(%struct.twl4030_platform_data* %325, i32 %326, i32 %329)
  store i32 %330, i32* %11, align 4
  br label %331

331:                                              ; preds = %324, %318
  br label %332

332:                                              ; preds = %331, %271, %205, %179
  %333 = load i32, i32* %11, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332
  %336 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %337 = call i32 @twl_remove(%struct.i2c_client* %336)
  br label %338

338:                                              ; preds = %335, %332
  br label %339

339:                                              ; preds = %338, %140, %84, %71
  %340 = load i32, i32* %11, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %344 = call i32 @platform_device_unregister(%struct.platform_device* %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i32, i32* %11, align 4
  store i32 %346, i32* %3, align 4
  br label %347

347:                                              ; preds = %345, %60, %49, %37, %28
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local %struct.twl4030_platform_data* @dev_get_platdata(%struct.TYPE_19__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.TYPE_16__* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @twl_get_num_slaves(...) #1

declare dso_local %struct.twl_client* @devm_kcalloc(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i32 @clocks_init(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @twl_class_is_4030(...) #1

declare dso_local i32 @twl_read_idcode_register(...) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @twl4030_init_chip_irq(i32) #1

declare dso_local i32 @twl4030_init_irq(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @twl6030_init_irq(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, %struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @add_children(%struct.twl4030_platform_data*, i32, i32) #1

declare dso_local i32 @twl_remove(%struct.i2c_client*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
