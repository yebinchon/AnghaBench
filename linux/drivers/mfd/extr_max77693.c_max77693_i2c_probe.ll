; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max77693.c_max77693_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max77693.c_max77693_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max77693_dev = type { %struct.i2c_client*, %struct.i2c_client*, i32, i32, i32, i32, i32, i32*, %struct.i2c_client*, %struct.i2c_client*, %struct.i2c_client*, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max77693_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@MAX77693_PMIC_REG_PMIC_ID2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"device not found on this channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"device ID: 0x%x\0A\00", align 1
@I2C_ADDR_MUIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to allocate I2C device for MUIC\0A\00", align 1
@I2C_ADDR_HAPTIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to allocate I2C device for Haptic\0A\00", align 1
@max77693_regmap_haptic_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"failed to initialize haptic register map: %d\0A\00", align 1
@max77693_regmap_muic_config = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@max77693_led_irq_chip = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to add irq chip: %d\0A\00", align 1
@max77693_topsys_irq_chip = common dso_local global i32 0, align 4
@max77693_charger_irq_chip = common dso_local global i32 0, align 4
@max77693_muic_irq_chip = common dso_local global i32 0, align 4
@MAX77693_PMIC_REG_INTSRC_MASK = common dso_local global i32 0, align 4
@SRC_IRQ_ALL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"Could not unmask interrupts in INTSRC: %d\0A\00", align 1
@max77693_devs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max77693_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max77693_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max77693_dev* @devm_kzalloc(i32* %10, i32 88, i32 %11)
  store %struct.max77693_dev* %12, %struct.max77693_dev** %6, align 8
  %13 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %14 = icmp eq %struct.max77693_dev* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %357

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.max77693_dev* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %25 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %24, i32 0, i32 7
  store i32* %23, i32** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %28 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %27, i32 0, i32 12
  store %struct.i2c_client* %26, %struct.i2c_client** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %33 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %35 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %38 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %37, i32 0, i32 11
  store i32 %36, i32* %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %39, i32* @max77693_regmap_config)
  %41 = bitcast i8* %40 to %struct.i2c_client*
  %42 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %43 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %42, i32 0, i32 8
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %45 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %44, i32 0, i32 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %45, align 8
  %47 = call i64 @IS_ERR(%struct.i2c_client* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %18
  %50 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %51 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %50, i32 0, i32 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.i2c_client* %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %55 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %54, i32 0, i32 7
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %357

60:                                               ; preds = %18
  %61 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %62 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %61, i32 0, i32 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %62, align 8
  %64 = load i32, i32* @MAX77693_PMIC_REG_PMIC_ID2, align 4
  %65 = call i32 @regmap_read(%struct.i2c_client* %63, i32 %64, i32* %7)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %70 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %357

74:                                               ; preds = %60
  %75 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %76 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @I2C_ADDR_MUIC, align 4
  %85 = call i8* @i2c_new_dummy_device(i32 %83, i32 %84)
  %86 = bitcast i8* %85 to %struct.i2c_client*
  %87 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %88 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %87, i32 0, i32 0
  store %struct.i2c_client* %86, %struct.i2c_client** %88, align 8
  %89 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %90 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %89, i32 0, i32 0
  %91 = load %struct.i2c_client*, %struct.i2c_client** %90, align 8
  %92 = call i64 @IS_ERR(%struct.i2c_client* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %80
  %95 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %96 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %100 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %99, i32 0, i32 0
  %101 = load %struct.i2c_client*, %struct.i2c_client** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.i2c_client* %101)
  store i32 %102, i32* %3, align 4
  br label %357

103:                                              ; preds = %80
  %104 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %105 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %104, i32 0, i32 0
  %106 = load %struct.i2c_client*, %struct.i2c_client** %105, align 8
  %107 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %108 = call i32 @i2c_set_clientdata(%struct.i2c_client* %106, %struct.max77693_dev* %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_ADDR_HAPTIC, align 4
  %113 = call i8* @i2c_new_dummy_device(i32 %111, i32 %112)
  %114 = bitcast i8* %113 to %struct.i2c_client*
  %115 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %116 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %115, i32 0, i32 1
  store %struct.i2c_client* %114, %struct.i2c_client** %116, align 8
  %117 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %118 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %117, i32 0, i32 1
  %119 = load %struct.i2c_client*, %struct.i2c_client** %118, align 8
  %120 = call i64 @IS_ERR(%struct.i2c_client* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %103
  %123 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %124 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %123, i32 0, i32 7
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %128 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %127, i32 0, i32 1
  %129 = load %struct.i2c_client*, %struct.i2c_client** %128, align 8
  %130 = call i32 @PTR_ERR(%struct.i2c_client* %129)
  store i32 %130, i32* %8, align 4
  br label %351

131:                                              ; preds = %103
  %132 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %133 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %132, i32 0, i32 1
  %134 = load %struct.i2c_client*, %struct.i2c_client** %133, align 8
  %135 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %136 = call i32 @i2c_set_clientdata(%struct.i2c_client* %134, %struct.max77693_dev* %135)
  %137 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %138 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %137, i32 0, i32 1
  %139 = load %struct.i2c_client*, %struct.i2c_client** %138, align 8
  %140 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %139, i32* @max77693_regmap_haptic_config)
  %141 = bitcast i8* %140 to %struct.i2c_client*
  %142 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %143 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %142, i32 0, i32 10
  store %struct.i2c_client* %141, %struct.i2c_client** %143, align 8
  %144 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %145 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %144, i32 0, i32 10
  %146 = load %struct.i2c_client*, %struct.i2c_client** %145, align 8
  %147 = call i64 @IS_ERR(%struct.i2c_client* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %131
  %150 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %151 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %150, i32 0, i32 10
  %152 = load %struct.i2c_client*, %struct.i2c_client** %151, align 8
  %153 = call i32 @PTR_ERR(%struct.i2c_client* %152)
  store i32 %153, i32* %8, align 4
  %154 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %155 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %154, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (i32*, i8*, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  br label %346

159:                                              ; preds = %131
  %160 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %161 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %160, i32 0, i32 0
  %162 = load %struct.i2c_client*, %struct.i2c_client** %161, align 8
  %163 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %162, i32* @max77693_regmap_muic_config)
  %164 = bitcast i8* %163 to %struct.i2c_client*
  %165 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %166 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %165, i32 0, i32 9
  store %struct.i2c_client* %164, %struct.i2c_client** %166, align 8
  %167 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %168 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %167, i32 0, i32 9
  %169 = load %struct.i2c_client*, %struct.i2c_client** %168, align 8
  %170 = call i64 @IS_ERR(%struct.i2c_client* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %159
  %173 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %174 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %173, i32 0, i32 9
  %175 = load %struct.i2c_client*, %struct.i2c_client** %174, align 8
  %176 = call i32 @PTR_ERR(%struct.i2c_client* %175)
  store i32 %176, i32* %8, align 4
  %177 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %178 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %179, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %346

182:                                              ; preds = %159
  %183 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %184 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %183, i32 0, i32 8
  %185 = load %struct.i2c_client*, %struct.i2c_client** %184, align 8
  %186 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %187 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IRQF_ONESHOT, align 4
  %190 = load i32, i32* @IRQF_SHARED, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %195 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %194, i32 0, i32 2
  %196 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %185, i32 %188, i32 %193, i32 0, i32* @max77693_led_irq_chip, i32* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %182
  %200 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %201 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %200, i32 0, i32 7
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 (i32*, i8*, ...) @dev_err(i32* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %203)
  br label %346

205:                                              ; preds = %182
  %206 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %207 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %206, i32 0, i32 8
  %208 = load %struct.i2c_client*, %struct.i2c_client** %207, align 8
  %209 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %210 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @IRQF_ONESHOT, align 4
  %213 = load i32, i32* @IRQF_SHARED, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %218 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %217, i32 0, i32 4
  %219 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %208, i32 %211, i32 %216, i32 0, i32* @max77693_topsys_irq_chip, i32* %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %205
  %223 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %224 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %223, i32 0, i32 7
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (i32*, i8*, ...) @dev_err(i32* %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  br label %338

228:                                              ; preds = %205
  %229 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %230 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %229, i32 0, i32 8
  %231 = load %struct.i2c_client*, %struct.i2c_client** %230, align 8
  %232 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %233 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IRQF_ONESHOT, align 4
  %236 = load i32, i32* @IRQF_SHARED, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %239 = or i32 %237, %238
  %240 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %241 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %240, i32 0, i32 5
  %242 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %231, i32 %234, i32 %239, i32 0, i32* @max77693_charger_irq_chip, i32* %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %228
  %246 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %247 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %246, i32 0, i32 7
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = call i32 (i32*, i8*, ...) @dev_err(i32* %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %249)
  br label %330

251:                                              ; preds = %228
  %252 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %253 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %252, i32 0, i32 9
  %254 = load %struct.i2c_client*, %struct.i2c_client** %253, align 8
  %255 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %256 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IRQF_ONESHOT, align 4
  %259 = load i32, i32* @IRQF_SHARED, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %262 = or i32 %260, %261
  %263 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %264 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %263, i32 0, i32 6
  %265 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %254, i32 %257, i32 %262, i32 0, i32* @max77693_muic_irq_chip, i32* %264)
  store i32 %265, i32* %8, align 4
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %251
  %269 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %270 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %269, i32 0, i32 7
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = call i32 (i32*, i8*, ...) @dev_err(i32* %271, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %272)
  br label %322

274:                                              ; preds = %251
  %275 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %276 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %275, i32 0, i32 8
  %277 = load %struct.i2c_client*, %struct.i2c_client** %276, align 8
  %278 = load i32, i32* @MAX77693_PMIC_REG_INTSRC_MASK, align 4
  %279 = load i64, i64* @SRC_IRQ_ALL, align 8
  %280 = load i64, i64* @SRC_IRQ_ALL, align 8
  %281 = xor i64 %280, -1
  %282 = trunc i64 %281 to i32
  %283 = call i32 @regmap_update_bits(%struct.i2c_client* %277, i32 %278, i64 %279, i32 %282)
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %274
  %287 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %288 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %287, i32 0, i32 7
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = call i32 (i32*, i8*, ...) @dev_err(i32* %289, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %290)
  br label %314

292:                                              ; preds = %274
  %293 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %294 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %293, i32 0, i32 7
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @pm_runtime_set_active(i32* %295)
  %297 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %298 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %297, i32 0, i32 7
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* @max77693_devs, align 4
  %301 = load i32, i32* @max77693_devs, align 4
  %302 = call i32 @ARRAY_SIZE(i32 %301)
  %303 = call i32 @mfd_add_devices(i32* %299, i32 -1, i32 %300, i32 %302, i32* null, i32 0, i32* null)
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %8, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %292
  br label %309

307:                                              ; preds = %292
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %3, align 4
  br label %357

309:                                              ; preds = %306
  %310 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %311 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %310, i32 0, i32 7
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @mfd_remove_devices(i32* %312)
  br label %314

314:                                              ; preds = %309, %286
  %315 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %316 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %319 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @regmap_del_irq_chip(i32 %317, i32 %320)
  br label %322

322:                                              ; preds = %314, %268
  %323 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %324 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %327 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @regmap_del_irq_chip(i32 %325, i32 %328)
  br label %330

330:                                              ; preds = %322, %245
  %331 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %332 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %335 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @regmap_del_irq_chip(i32 %333, i32 %336)
  br label %338

338:                                              ; preds = %330, %222
  %339 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %340 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %343 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @regmap_del_irq_chip(i32 %341, i32 %344)
  br label %346

346:                                              ; preds = %338, %199, %172, %149
  %347 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %348 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %347, i32 0, i32 1
  %349 = load %struct.i2c_client*, %struct.i2c_client** %348, align 8
  %350 = call i32 @i2c_unregister_device(%struct.i2c_client* %349)
  br label %351

351:                                              ; preds = %346, %122
  %352 = load %struct.max77693_dev*, %struct.max77693_dev** %6, align 8
  %353 = getelementptr inbounds %struct.max77693_dev, %struct.max77693_dev* %352, i32 0, i32 0
  %354 = load %struct.i2c_client*, %struct.i2c_client** %353, align 8
  %355 = call i32 @i2c_unregister_device(%struct.i2c_client* %354)
  %356 = load i32, i32* %8, align 4
  store i32 %356, i32* %3, align 4
  br label %357

357:                                              ; preds = %351, %307, %94, %68, %49, %15
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local %struct.max77693_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max77693_dev*) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i8* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.i2c_client*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.i2c_client*, i32, i64, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
