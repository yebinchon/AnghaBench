; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rk808.c_rk808_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rk808.c_rk808_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.rk808 = type { i32, i32, i64, i64, i32, i32*, i32*, %struct.i2c_client* }
%struct.rk808_reg_data = type { i32, i32, i32 }
%struct.mfd_cell = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"rockchip,rk817\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"rockchip,rk809\00", align 1
@RK817_ID_MSB = common dso_local global i8 0, align 1
@RK817_ID_LSB = common dso_local global i8 0, align 1
@RK808_ID_MSB = common dso_local global i32 0, align 4
@RK808_ID_LSB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to read the chip id at 0x%x\0A\00", align 1
@RK8XX_ID_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"chip id: 0x%x\0A\00", align 1
@rk805_regmap_config = common dso_local global i32 0, align 4
@rk805_irq_chip = common dso_local global i32 0, align 4
@rk805_pre_init_reg = common dso_local global i8* null, align 8
@rk805s = common dso_local global i8* null, align 8
@rk805_device_shutdown = common dso_local global i64 0, align 8
@rk805_device_shutdown_prepare = common dso_local global i64 0, align 8
@rk808_regmap_config = common dso_local global i32 0, align 4
@rk808_irq_chip = common dso_local global i32 0, align 4
@rk808_pre_init_reg = common dso_local global i8* null, align 8
@rk808s = common dso_local global i8* null, align 8
@rk808_device_shutdown = common dso_local global i64 0, align 8
@rk818_regmap_config = common dso_local global i32 0, align 4
@rk818_irq_chip = common dso_local global i32 0, align 4
@rk818_pre_init_reg = common dso_local global i8* null, align 8
@rk818s = common dso_local global i8* null, align 8
@rk818_device_shutdown = common dso_local global i64 0, align 8
@rk817_regmap_config = common dso_local global i32 0, align 4
@rk817_irq_chip = common dso_local global i32 0, align 4
@rk817_pre_init_reg = common dso_local global i8* null, align 8
@rk817s = common dso_local global i8* null, align 8
@rk808_syscore_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unsupported RK8XX ID %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"regmap initialization failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"No interrupt support, no core IRQ\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to add irq_chip %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"0x%x write err\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"rockchip,system-power-controller\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@rk808_i2c_client = common dso_local global %struct.i2c_client* null, align 8
@pm_power_off_prepare = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rk808_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.rk808*, align 8
  %8 = alloca %struct.rk808_reg_data*, align 8
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %6, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.rk808* @devm_kzalloc(%struct.TYPE_5__* %24, i32 56, i32 %25)
  store %struct.rk808* %26, %struct.rk808** %7, align 8
  %27 = load %struct.rk808*, %struct.rk808** %7, align 8
  %28 = icmp ne %struct.rk808* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %325

32:                                               ; preds = %2
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i64 @of_device_is_compatible(%struct.device_node* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.device_node*, %struct.device_node** %6, align 8
  %38 = call i64 @of_device_is_compatible(%struct.device_node* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i8, i8* @RK817_ID_MSB, align 1
  store i8 %41, i8* %15, align 1
  %42 = load i8, i8* @RK817_ID_LSB, align 1
  store i8 %42, i8* %16, align 1
  br label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @RK808_ID_MSB, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %15, align 1
  %46 = load i32, i32* @RK808_ID_LSB, align 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %16, align 1
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i8, i8* %15, align 1
  %51 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i8 zeroext %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load i32, i32* @RK808_ID_MSB, align 4
  %58 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  br label %325

60:                                               ; preds = %48
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i8, i8* %16, align 1
  %63 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i8 zeroext %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = load i32, i32* @RK808_ID_LSB, align 4
  %70 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %3, align 4
  br label %325

72:                                               ; preds = %60
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RK8XX_ID_MSK, align 4
  %78 = and i32 %76, %77
  %79 = load %struct.rk808*, %struct.rk808** %7, align 8
  %80 = getelementptr inbounds %struct.rk808, %struct.rk808* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 1
  %83 = load %struct.rk808*, %struct.rk808** %7, align 8
  %84 = getelementptr inbounds %struct.rk808, %struct.rk808* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_info(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.rk808*, %struct.rk808** %7, align 8
  %88 = getelementptr inbounds %struct.rk808, %struct.rk808* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %155 [
    i32 132, label %90
    i32 131, label %109
    i32 128, label %125
    i32 130, label %141
    i32 129, label %141
  ]

90:                                               ; preds = %72
  %91 = load %struct.rk808*, %struct.rk808** %7, align 8
  %92 = getelementptr inbounds %struct.rk808, %struct.rk808* %91, i32 0, i32 6
  store i32* @rk805_regmap_config, i32** %92, align 8
  %93 = load %struct.rk808*, %struct.rk808** %7, align 8
  %94 = getelementptr inbounds %struct.rk808, %struct.rk808* %93, i32 0, i32 5
  store i32* @rk805_irq_chip, i32** %94, align 8
  %95 = load i8*, i8** @rk805_pre_init_reg, align 8
  %96 = bitcast i8* %95 to %struct.rk808_reg_data*
  store %struct.rk808_reg_data* %96, %struct.rk808_reg_data** %8, align 8
  %97 = load i8*, i8** @rk805_pre_init_reg, align 8
  %98 = call i32 @ARRAY_SIZE(i8* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** @rk805s, align 8
  %100 = bitcast i8* %99 to %struct.mfd_cell*
  store %struct.mfd_cell* %100, %struct.mfd_cell** %9, align 8
  %101 = load i8*, i8** @rk805s, align 8
  %102 = call i32 @ARRAY_SIZE(i8* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i64, i64* @rk805_device_shutdown, align 8
  %104 = load %struct.rk808*, %struct.rk808** %7, align 8
  %105 = getelementptr inbounds %struct.rk808, %struct.rk808* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* @rk805_device_shutdown_prepare, align 8
  %107 = load %struct.rk808*, %struct.rk808** %7, align 8
  %108 = getelementptr inbounds %struct.rk808, %struct.rk808* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %164

109:                                              ; preds = %72
  %110 = load %struct.rk808*, %struct.rk808** %7, align 8
  %111 = getelementptr inbounds %struct.rk808, %struct.rk808* %110, i32 0, i32 6
  store i32* @rk808_regmap_config, i32** %111, align 8
  %112 = load %struct.rk808*, %struct.rk808** %7, align 8
  %113 = getelementptr inbounds %struct.rk808, %struct.rk808* %112, i32 0, i32 5
  store i32* @rk808_irq_chip, i32** %113, align 8
  %114 = load i8*, i8** @rk808_pre_init_reg, align 8
  %115 = bitcast i8* %114 to %struct.rk808_reg_data*
  store %struct.rk808_reg_data* %115, %struct.rk808_reg_data** %8, align 8
  %116 = load i8*, i8** @rk808_pre_init_reg, align 8
  %117 = call i32 @ARRAY_SIZE(i8* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i8*, i8** @rk808s, align 8
  %119 = bitcast i8* %118 to %struct.mfd_cell*
  store %struct.mfd_cell* %119, %struct.mfd_cell** %9, align 8
  %120 = load i8*, i8** @rk808s, align 8
  %121 = call i32 @ARRAY_SIZE(i8* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i64, i64* @rk808_device_shutdown, align 8
  %123 = load %struct.rk808*, %struct.rk808** %7, align 8
  %124 = getelementptr inbounds %struct.rk808, %struct.rk808* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  br label %164

125:                                              ; preds = %72
  %126 = load %struct.rk808*, %struct.rk808** %7, align 8
  %127 = getelementptr inbounds %struct.rk808, %struct.rk808* %126, i32 0, i32 6
  store i32* @rk818_regmap_config, i32** %127, align 8
  %128 = load %struct.rk808*, %struct.rk808** %7, align 8
  %129 = getelementptr inbounds %struct.rk808, %struct.rk808* %128, i32 0, i32 5
  store i32* @rk818_irq_chip, i32** %129, align 8
  %130 = load i8*, i8** @rk818_pre_init_reg, align 8
  %131 = bitcast i8* %130 to %struct.rk808_reg_data*
  store %struct.rk808_reg_data* %131, %struct.rk808_reg_data** %8, align 8
  %132 = load i8*, i8** @rk818_pre_init_reg, align 8
  %133 = call i32 @ARRAY_SIZE(i8* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i8*, i8** @rk818s, align 8
  %135 = bitcast i8* %134 to %struct.mfd_cell*
  store %struct.mfd_cell* %135, %struct.mfd_cell** %9, align 8
  %136 = load i8*, i8** @rk818s, align 8
  %137 = call i32 @ARRAY_SIZE(i8* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i64, i64* @rk818_device_shutdown, align 8
  %139 = load %struct.rk808*, %struct.rk808** %7, align 8
  %140 = getelementptr inbounds %struct.rk808, %struct.rk808* %139, i32 0, i32 3
  store i64 %138, i64* %140, align 8
  br label %164

141:                                              ; preds = %72, %72
  %142 = load %struct.rk808*, %struct.rk808** %7, align 8
  %143 = getelementptr inbounds %struct.rk808, %struct.rk808* %142, i32 0, i32 6
  store i32* @rk817_regmap_config, i32** %143, align 8
  %144 = load %struct.rk808*, %struct.rk808** %7, align 8
  %145 = getelementptr inbounds %struct.rk808, %struct.rk808* %144, i32 0, i32 5
  store i32* @rk817_irq_chip, i32** %145, align 8
  %146 = load i8*, i8** @rk817_pre_init_reg, align 8
  %147 = bitcast i8* %146 to %struct.rk808_reg_data*
  store %struct.rk808_reg_data* %147, %struct.rk808_reg_data** %8, align 8
  %148 = load i8*, i8** @rk817_pre_init_reg, align 8
  %149 = call i32 @ARRAY_SIZE(i8* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i8*, i8** @rk817s, align 8
  %151 = bitcast i8* %150 to %struct.mfd_cell*
  store %struct.mfd_cell* %151, %struct.mfd_cell** %9, align 8
  %152 = load i8*, i8** @rk817s, align 8
  %153 = call i32 @ARRAY_SIZE(i8* %152)
  store i32 %153, i32* %11, align 4
  %154 = call i32 @register_syscore_ops(i32* @rk808_syscore_ops)
  br label %164

155:                                              ; preds = %72
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 1
  %158 = load %struct.rk808*, %struct.rk808** %7, align 8
  %159 = getelementptr inbounds %struct.rk808, %struct.rk808* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %325

164:                                              ; preds = %141, %125, %109, %90
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load %struct.rk808*, %struct.rk808** %7, align 8
  %167 = getelementptr inbounds %struct.rk808, %struct.rk808* %166, i32 0, i32 7
  store %struct.i2c_client* %165, %struct.i2c_client** %167, align 8
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = load %struct.rk808*, %struct.rk808** %7, align 8
  %170 = call i32 @i2c_set_clientdata(%struct.i2c_client* %168, %struct.rk808* %169)
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = load %struct.rk808*, %struct.rk808** %7, align 8
  %173 = getelementptr inbounds %struct.rk808, %struct.rk808* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %171, i32* %174)
  %176 = load %struct.rk808*, %struct.rk808** %7, align 8
  %177 = getelementptr inbounds %struct.rk808, %struct.rk808* %176, i32 0, i32 4
  store i32 %175, i32* %177, align 8
  %178 = load %struct.rk808*, %struct.rk808** %7, align 8
  %179 = getelementptr inbounds %struct.rk808, %struct.rk808* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @IS_ERR(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %164
  %184 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 1
  %186 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.rk808*, %struct.rk808** %7, align 8
  %188 = getelementptr inbounds %struct.rk808, %struct.rk808* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @PTR_ERR(i32 %189)
  store i32 %190, i32* %3, align 4
  br label %325

191:                                              ; preds = %164
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %191
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 1
  %199 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %325

202:                                              ; preds = %191
  %203 = load %struct.rk808*, %struct.rk808** %7, align 8
  %204 = getelementptr inbounds %struct.rk808, %struct.rk808* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IRQF_ONESHOT, align 4
  %210 = load %struct.rk808*, %struct.rk808** %7, align 8
  %211 = getelementptr inbounds %struct.rk808, %struct.rk808* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.rk808*, %struct.rk808** %7, align 8
  %214 = getelementptr inbounds %struct.rk808, %struct.rk808* %213, i32 0, i32 1
  %215 = call i32 @regmap_add_irq_chip(i32 %205, i32 %208, i32 %209, i32 -1, i32* %212, i32* %214)
  store i32 %215, i32* %17, align 4
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %202
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 1
  %221 = load i32, i32* %17, align 4
  %222 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %17, align 4
  store i32 %223, i32* %3, align 4
  br label %325

224:                                              ; preds = %202
  store i32 0, i32* %18, align 4
  br label %225

225:                                              ; preds = %266, %224
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %10, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %269

229:                                              ; preds = %225
  %230 = load %struct.rk808*, %struct.rk808** %7, align 8
  %231 = getelementptr inbounds %struct.rk808, %struct.rk808* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.rk808_reg_data*, %struct.rk808_reg_data** %8, align 8
  %234 = load i32, i32* %18, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %233, i64 %235
  %237 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rk808_reg_data*, %struct.rk808_reg_data** %8, align 8
  %240 = load i32, i32* %18, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %239, i64 %241
  %243 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.rk808_reg_data*, %struct.rk808_reg_data** %8, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %245, i64 %247
  %249 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @regmap_update_bits(i32 %232, i32 %238, i32 %244, i32 %250)
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %229
  %255 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %256 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %255, i32 0, i32 1
  %257 = load %struct.rk808_reg_data*, %struct.rk808_reg_data** %8, align 8
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %257, i64 %259
  %261 = getelementptr inbounds %struct.rk808_reg_data, %struct.rk808_reg_data* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %17, align 4
  store i32 %264, i32* %3, align 4
  br label %325

265:                                              ; preds = %229
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %18, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %18, align 4
  br label %225

269:                                              ; preds = %225
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %270, i32 0, i32 1
  %272 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %273 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %274 = load i32, i32* %11, align 4
  %275 = load %struct.rk808*, %struct.rk808** %7, align 8
  %276 = getelementptr inbounds %struct.rk808, %struct.rk808* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @regmap_irq_get_domain(i32 %277)
  %279 = call i32 @devm_mfd_add_devices(%struct.TYPE_5__* %271, i32 %272, %struct.mfd_cell* %273, i32 %274, i32* null, i32 0, i32 %278)
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %17, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %269
  %283 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %284 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %283, i32 0, i32 1
  %285 = load i32, i32* %17, align 4
  %286 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %284, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %285)
  br label %316

287:                                              ; preds = %269
  %288 = load %struct.device_node*, %struct.device_node** %6, align 8
  %289 = call i32 @of_property_read_bool(%struct.device_node* %288, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load i64, i64* @pm_power_off, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %292
  %296 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %296, %struct.i2c_client** @rk808_i2c_client, align 8
  %297 = load %struct.rk808*, %struct.rk808** %7, align 8
  %298 = getelementptr inbounds %struct.rk808, %struct.rk808* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* @pm_power_off, align 8
  br label %300

300:                                              ; preds = %295, %292, %287
  %301 = load i32, i32* %12, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %300
  %304 = load i64, i64* @pm_power_off_prepare, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %303
  %307 = load %struct.i2c_client*, %struct.i2c_client** @rk808_i2c_client, align 8
  %308 = icmp ne %struct.i2c_client* %307, null
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  store %struct.i2c_client* %310, %struct.i2c_client** @rk808_i2c_client, align 8
  br label %311

311:                                              ; preds = %309, %306
  %312 = load %struct.rk808*, %struct.rk808** %7, align 8
  %313 = getelementptr inbounds %struct.rk808, %struct.rk808* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* @pm_power_off_prepare, align 8
  br label %315

315:                                              ; preds = %311, %303, %300
  store i32 0, i32* %3, align 4
  br label %325

316:                                              ; preds = %282
  %317 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %318 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.rk808*, %struct.rk808** %7, align 8
  %321 = getelementptr inbounds %struct.rk808, %struct.rk808* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @regmap_del_irq_chip(i32 %319, i32 %322)
  %324 = load i32, i32* %17, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %316, %315, %254, %218, %196, %183, %155, %66, %54, %29
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local %struct.rk808* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i8 zeroext) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @register_syscore_ops(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.rk808*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.TYPE_5__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
