; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.mfd_cell = type { i32 }
%struct.i2c_client = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.sec_platform_data = type { i64, i32 (...)*, i32, i32 }
%struct.sec_pmic_dev = type { i64, i32, %struct.TYPE_8__*, %struct.sec_platform_data*, %struct.sec_platform_data*, i32, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s2mpa01_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s2mps11_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s2mps13_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s2mps14_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s2mps15_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s5m8763_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s5m8767_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@s2mpu02_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@sec_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@s5m8751_devs = common dso_local global %struct.mfd_cell* null, align 8
@s5m8763_devs = common dso_local global %struct.mfd_cell* null, align 8
@s5m8767_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mpa01_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mps11_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mps13_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mps14_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mps15_devs = common dso_local global %struct.mfd_cell* null, align 8
@s2mpu02_devs = common dso_local global %struct.mfd_cell* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported device type (%lu)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sec_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_pmic_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.sec_platform_data*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca %struct.mfd_cell*, align 8
  %9 = alloca %struct.sec_pmic_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.sec_platform_data* @dev_get_platdata(%struct.TYPE_8__* %14)
  store %struct.sec_platform_data* %15, %struct.sec_platform_data** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sec_pmic_dev* @devm_kzalloc(%struct.TYPE_8__* %17, i32 56, i32 %18)
  store %struct.sec_pmic_dev* %19, %struct.sec_pmic_dev** %9, align 8
  %20 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %21 = icmp eq %struct.sec_pmic_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %215

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.sec_pmic_dev* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %32 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %31, i32 0, i32 2
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %35 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %34, i32 0, i32 7
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %40 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %43 = call i64 @sec_i2c_get_driver_data(%struct.i2c_client* %41, %struct.i2c_device_id* %42)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %45 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %25
  %51 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %52 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call %struct.sec_platform_data* @sec_pmic_i2c_parse_dt_pdata(%struct.TYPE_8__* %53)
  store %struct.sec_platform_data* %54, %struct.sec_platform_data** %6, align 8
  %55 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %56 = call i64 @IS_ERR(%struct.sec_platform_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %60 = call i32 @PTR_ERR(%struct.sec_platform_data* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %3, align 4
  br label %215

62:                                               ; preds = %50
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %65 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %25
  %67 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %68 = icmp ne %struct.sec_platform_data* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %71 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %74 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %76 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %79 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %84 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %86 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %87 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %86, i32 0, i32 4
  store %struct.sec_platform_data* %85, %struct.sec_platform_data** %87, align 8
  br label %88

88:                                               ; preds = %69, %66
  %89 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %90 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  switch i64 %91, label %100 [
    i64 136, label %92
    i64 135, label %93
    i64 134, label %94
    i64 133, label %95
    i64 132, label %96
    i64 129, label %97
    i64 128, label %98
    i64 131, label %99
  ]

92:                                               ; preds = %88
  store %struct.regmap_config* @s2mpa01_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

93:                                               ; preds = %88
  store %struct.regmap_config* @s2mps11_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

94:                                               ; preds = %88
  store %struct.regmap_config* @s2mps13_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

95:                                               ; preds = %88
  store %struct.regmap_config* @s2mps14_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

96:                                               ; preds = %88
  store %struct.regmap_config* @s2mps15_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

97:                                               ; preds = %88
  store %struct.regmap_config* @s5m8763_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

98:                                               ; preds = %88
  store %struct.regmap_config* @s5m8767_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

99:                                               ; preds = %88
  store %struct.regmap_config* @s2mpu02_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

100:                                              ; preds = %88
  store %struct.regmap_config* @sec_regmap_config, %struct.regmap_config** %7, align 8
  br label %101

101:                                              ; preds = %100, %99, %98, %97, %96, %95, %94, %93, %92
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %104 = call %struct.sec_platform_data* @devm_regmap_init_i2c(%struct.i2c_client* %102, %struct.regmap_config* %103)
  %105 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %106 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %105, i32 0, i32 3
  store %struct.sec_platform_data* %104, %struct.sec_platform_data** %106, align 8
  %107 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %108 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %107, i32 0, i32 3
  %109 = load %struct.sec_platform_data*, %struct.sec_platform_data** %108, align 8
  %110 = call i64 @IS_ERR(%struct.sec_platform_data* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %101
  %113 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %114 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %113, i32 0, i32 3
  %115 = load %struct.sec_platform_data*, %struct.sec_platform_data** %114, align 8
  %116 = call i32 @PTR_ERR(%struct.sec_platform_data* %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @dev_err(%struct.TYPE_8__* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %3, align 4
  br label %215

122:                                              ; preds = %101
  %123 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %124 = icmp ne %struct.sec_platform_data* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %127 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %126, i32 0, i32 1
  %128 = load i32 (...)*, i32 (...)** %127, align 8
  %129 = icmp ne i32 (...)* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.sec_platform_data*, %struct.sec_platform_data** %6, align 8
  %132 = getelementptr inbounds %struct.sec_platform_data, %struct.sec_platform_data* %131, i32 0, i32 1
  %133 = load i32 (...)*, i32 (...)** %132, align 8
  %134 = call i32 (...) %133()
  br label %135

135:                                              ; preds = %130, %125, %122
  %136 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %137 = call i32 @sec_irq_init(%struct.sec_pmic_dev* %136)
  %138 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %139 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = call i32 @pm_runtime_set_active(%struct.TYPE_8__* %140)
  %142 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %143 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  switch i64 %144, label %181 [
    i64 130, label %145
    i64 129, label %149
    i64 128, label %153
    i64 136, label %157
    i64 135, label %161
    i64 134, label %165
    i64 133, label %169
    i64 132, label %173
    i64 131, label %177
  ]

145:                                              ; preds = %135
  %146 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8751_devs, align 8
  store %struct.mfd_cell* %146, %struct.mfd_cell** %8, align 8
  %147 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8751_devs, align 8
  %148 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %147)
  store i32 %148, i32* %12, align 4
  br label %191

149:                                              ; preds = %135
  %150 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8763_devs, align 8
  store %struct.mfd_cell* %150, %struct.mfd_cell** %8, align 8
  %151 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8763_devs, align 8
  %152 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %151)
  store i32 %152, i32* %12, align 4
  br label %191

153:                                              ; preds = %135
  %154 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8767_devs, align 8
  store %struct.mfd_cell* %154, %struct.mfd_cell** %8, align 8
  %155 = load %struct.mfd_cell*, %struct.mfd_cell** @s5m8767_devs, align 8
  %156 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %155)
  store i32 %156, i32* %12, align 4
  br label %191

157:                                              ; preds = %135
  %158 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mpa01_devs, align 8
  store %struct.mfd_cell* %158, %struct.mfd_cell** %8, align 8
  %159 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mpa01_devs, align 8
  %160 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %159)
  store i32 %160, i32* %12, align 4
  br label %191

161:                                              ; preds = %135
  %162 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps11_devs, align 8
  store %struct.mfd_cell* %162, %struct.mfd_cell** %8, align 8
  %163 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps11_devs, align 8
  %164 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %163)
  store i32 %164, i32* %12, align 4
  br label %191

165:                                              ; preds = %135
  %166 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps13_devs, align 8
  store %struct.mfd_cell* %166, %struct.mfd_cell** %8, align 8
  %167 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps13_devs, align 8
  %168 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %167)
  store i32 %168, i32* %12, align 4
  br label %191

169:                                              ; preds = %135
  %170 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps14_devs, align 8
  store %struct.mfd_cell* %170, %struct.mfd_cell** %8, align 8
  %171 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps14_devs, align 8
  %172 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %171)
  store i32 %172, i32* %12, align 4
  br label %191

173:                                              ; preds = %135
  %174 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps15_devs, align 8
  store %struct.mfd_cell* %174, %struct.mfd_cell** %8, align 8
  %175 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mps15_devs, align 8
  %176 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %175)
  store i32 %176, i32* %12, align 4
  br label %191

177:                                              ; preds = %135
  %178 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mpu02_devs, align 8
  store %struct.mfd_cell* %178, %struct.mfd_cell** %8, align 8
  %179 = load %struct.mfd_cell*, %struct.mfd_cell** @s2mpu02_devs, align 8
  %180 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %179)
  store i32 %180, i32* %12, align 4
  br label %191

181:                                              ; preds = %135
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %185 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @dev_err(%struct.TYPE_8__* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %215

191:                                              ; preds = %177, %173, %169, %165, %161, %157, %153, %149, %145
  %192 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %193 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %192, i32 0, i32 2
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @devm_mfd_add_devices(%struct.TYPE_8__* %194, i32 -1, %struct.mfd_cell* %195, i32 %196, i32* null, i32 0, i32* null)
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = load i32, i32* %11, align 4
  store i32 %201, i32* %3, align 4
  br label %215

202:                                              ; preds = %191
  %203 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %204 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %203, i32 0, i32 2
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %207 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @device_init_wakeup(%struct.TYPE_8__* %205, i32 %208)
  %210 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %211 = call i32 @sec_pmic_configure(%struct.sec_pmic_dev* %210)
  %212 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %9, align 8
  %213 = call i32 @sec_pmic_dump_rev(%struct.sec_pmic_dev* %212)
  %214 = load i32, i32* %11, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %202, %200, %181, %112, %58, %22
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.sec_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local %struct.sec_pmic_dev* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sec_pmic_dev*) #1

declare dso_local i64 @sec_i2c_get_driver_data(%struct.i2c_client*, %struct.i2c_device_id*) #1

declare dso_local %struct.sec_platform_data* @sec_pmic_i2c_parse_dt_pdata(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(%struct.sec_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.sec_platform_data*) #1

declare dso_local %struct.sec_platform_data* @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @sec_irq_init(%struct.sec_pmic_dev*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_8__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_8__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sec_pmic_configure(%struct.sec_pmic_dev*) #1

declare dso_local i32 @sec_pmic_dump_rev(%struct.sec_pmic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
