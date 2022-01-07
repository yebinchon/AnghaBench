; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.twl6040 = type { i32, i32, %struct.TYPE_18__*, i32, i32, %struct.mfd_cell*, i32*, %struct.TYPE_19__*, i8*, i8*, i32, i32, i32*, i32* }
%struct.TYPE_18__ = type { i8* }
%struct.mfd_cell = type { i8*, i8*, %struct.TYPE_17__* }

@.str = private unnamed_addr constant [20 x i8] c"of node is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid IRQ configuration\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl6040_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"clk32k\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"clk32k is not handled\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mclk is not handled\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"v2v1\00", align 1
@TWL6040_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@twl6040_patch = common dso_local global %struct.TYPE_17__* null, align 8
@TWL6040_REG_ASICREV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@TWL6040_REV_ES1_0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"ti,audpwron-gpio\00", align 1
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"audpwron\00", align 1
@TWL6040_REG_INTID = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@twl6040_irq_chip = common dso_local global i32 0, align 4
@TWL6040_IRQ_READY = common dso_local global i32 0, align 4
@TWL6040_IRQ_TH = common dso_local global i32 0, align 4
@twl6040_readyint_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"twl6040_irq_ready\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"READY IRQ request failed: %d\0A\00", align 1
@twl6040_thint_handler = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"twl6040_irq_th\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Thermal IRQ request failed: %d\0A\00", align 1
@TWL6040_IRQ_PLUG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"twl6040-codec\00", align 1
@twl6040_codec_rsrc = common dso_local global %struct.TYPE_17__* null, align 8
@TWL6040_IRQ_VIB = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"twl6040-vibra\00", align 1
@twl6040_vibra_rsrc = common dso_local global %struct.TYPE_17__* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"twl6040-gpo\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"twl6040-pdmclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @twl6040_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.twl6040*, align 8
  %8 = alloca %struct.mfd_cell*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %6, align 8
  store %struct.mfd_cell* null, %struct.mfd_cell** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %427

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %427

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.twl6040* @devm_kzalloc(%struct.TYPE_19__* %37, i32 88, i32 %38)
  store %struct.twl6040* %39, %struct.twl6040** %7, align 8
  %40 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %41 = icmp ne %struct.twl6040* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %427

45:                                               ; preds = %35
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32* @devm_regmap_init_i2c(%struct.i2c_client* %46, i32* @twl6040_regmap_config)
  %48 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %49 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %48, i32 0, i32 6
  store i32* %47, i32** %49, align 8
  %50 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %51 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %57 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %3, align 4
  br label %427

60:                                               ; preds = %45
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %63 = call i32 @i2c_set_clientdata(%struct.i2c_client* %61, %struct.twl6040* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = call i8* @devm_clk_get(%struct.TYPE_19__* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %69 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %68, i32 0, i32 13
  store i32* %67, i32** %69, align 8
  %70 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %71 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %70, i32 0, i32 13
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @IS_ERR(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %60
  %76 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %77 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %76, i32 0, i32 13
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @PTR_ERR(i32* %78)
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @EPROBE_DEFER, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %427

86:                                               ; preds = %75
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @dev_dbg(%struct.TYPE_19__* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %91 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %90, i32 0, i32 13
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %86, %60
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i8* @devm_clk_get(%struct.TYPE_19__* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %98 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %97, i32 0, i32 12
  store i32* %96, i32** %98, align 8
  %99 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %100 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %99, i32 0, i32 12
  %101 = load i32*, i32** %100, align 8
  %102 = call i64 @IS_ERR(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %92
  %105 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %106 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %105, i32 0, i32 12
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @PTR_ERR(i32* %107)
  %109 = load i32, i32* @EPROBE_DEFER, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @EPROBE_DEFER, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %427

115:                                              ; preds = %104
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = call i32 @dev_dbg(%struct.TYPE_19__* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %120 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %119, i32 0, i32 12
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %115, %92
  %122 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %123 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %126, align 8
  %127 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %128 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %127, i32 0, i32 2
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %131, align 8
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = load i32, i32* @TWL6040_NUM_SUPPLIES, align 4
  %135 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %136 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %135, i32 0, i32 2
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = call i32 @devm_regulator_bulk_get(%struct.TYPE_19__* %133, i32 %134, %struct.TYPE_18__* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %121
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = load i32, i32* %10, align 4
  %145 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %3, align 4
  br label %427

147:                                              ; preds = %121
  %148 = load i32, i32* @TWL6040_NUM_SUPPLIES, align 4
  %149 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %150 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = call i32 @regulator_bulk_enable(i32 %148, %struct.TYPE_18__* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  br label %427

161:                                              ; preds = %147
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %165 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %164, i32 0, i32 7
  store %struct.TYPE_19__* %163, %struct.TYPE_19__** %165, align 8
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %170 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  %171 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %172 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %171, i32 0, i32 11
  %173 = call i32 @mutex_init(i32* %172)
  %174 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %175 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %174, i32 0, i32 10
  %176 = call i32 @init_completion(i32* %175)
  %177 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %178 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_patch, align 8
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_patch, align 8
  %182 = call i8* @ARRAY_SIZE(%struct.TYPE_17__* %181)
  %183 = call i32 @regmap_register_patch(i32* %179, %struct.TYPE_17__* %180, i8* %182)
  %184 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %185 = load i32, i32* @TWL6040_REG_ASICREV, align 4
  %186 = call i32 @twl6040_reg_read(%struct.twl6040* %184, i32 %185)
  %187 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %188 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %190 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %161
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %197 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %198)
  %200 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %201 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %10, align 4
  br label %420

203:                                              ; preds = %161
  %204 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %205 = call i64 @twl6040_get_revid(%struct.twl6040* %204)
  %206 = load i64, i64* @TWL6040_REV_ES1_0, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load %struct.device_node*, %struct.device_node** %6, align 8
  %210 = call i32 @of_get_named_gpio(%struct.device_node* %209, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %211 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %212 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  br label %218

213:                                              ; preds = %203
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  %216 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %217 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %213, %208
  %219 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %220 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @gpio_is_valid(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %218
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 0
  %227 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %228 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %231 = call i32 @devm_gpio_request_one(%struct.TYPE_19__* %226, i32 %229, i32 %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %224
  br label %420

235:                                              ; preds = %224
  %236 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %237 = load i32, i32* @TWL6040_REG_INTID, align 4
  %238 = call i32 @twl6040_reg_read(%struct.twl6040* %236, i32 %237)
  br label %239

239:                                              ; preds = %235, %218
  %240 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %241 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %244 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IRQF_ONESHOT, align 4
  %247 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %248 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %247, i32 0, i32 3
  %249 = call i32 @regmap_add_irq_chip(i32* %242, i32 %245, i32 %246, i32 0, i32* @twl6040_irq_chip, i32* %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %239
  br label %420

253:                                              ; preds = %239
  %254 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %255 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @TWL6040_IRQ_READY, align 4
  %258 = call i8* @regmap_irq_get_virq(i32 %256, i32 %257)
  %259 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %260 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %259, i32 0, i32 9
  store i8* %258, i8** %260, align 8
  %261 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %262 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @TWL6040_IRQ_TH, align 4
  %265 = call i8* @regmap_irq_get_virq(i32 %263, i32 %264)
  %266 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %267 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %266, i32 0, i32 8
  store i8* %265, i8** %267, align 8
  %268 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %269 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %268, i32 0, i32 7
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %269, align 8
  %271 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %272 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %271, i32 0, i32 9
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* @twl6040_readyint_handler, align 4
  %275 = load i32, i32* @IRQF_ONESHOT, align 4
  %276 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %277 = call i32 @devm_request_threaded_irq(%struct.TYPE_19__* %270, i8* %273, i32* null, i32 %274, i32 %275, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), %struct.twl6040* %276)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %253
  %281 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %282 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %281, i32 0, i32 7
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %283, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %284)
  br label %412

286:                                              ; preds = %253
  %287 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %288 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %287, i32 0, i32 7
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %291 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %290, i32 0, i32 8
  %292 = load i8*, i8** %291, align 8
  %293 = load i32, i32* @twl6040_thint_handler, align 4
  %294 = load i32, i32* @IRQF_ONESHOT, align 4
  %295 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %296 = call i32 @devm_request_threaded_irq(%struct.TYPE_19__* %289, i8* %292, i32* null, i32 %293, i32 %294, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), %struct.twl6040* %295)
  store i32 %296, i32* %10, align 4
  %297 = load i32, i32* %10, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %286
  %300 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %301 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %300, i32 0, i32 7
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %302, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), i32 %303)
  br label %412

305:                                              ; preds = %286
  %306 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %307 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @TWL6040_IRQ_PLUG, align 4
  %310 = call i8* @regmap_irq_get_virq(i32 %308, i32 %309)
  %311 = ptrtoint i8* %310 to i32
  store i32 %311, i32* %9, align 4
  %312 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %313 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %312, i32 0, i32 5
  %314 = load %struct.mfd_cell*, %struct.mfd_cell** %313, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %314, i64 %316
  store %struct.mfd_cell* %317, %struct.mfd_cell** %8, align 8
  %318 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %319 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %318, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8** %319, align 8
  %320 = load i32, i32* %9, align 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_codec_rsrc, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  store i32 %320, i32* %323, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_codec_rsrc, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 1
  store i32 %324, i32* %327, align 4
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_codec_rsrc, align 8
  %329 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %330 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %329, i32 0, i32 2
  store %struct.TYPE_17__* %328, %struct.TYPE_17__** %330, align 8
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_codec_rsrc, align 8
  %332 = call i8* @ARRAY_SIZE(%struct.TYPE_17__* %331)
  %333 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %334 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %333, i32 0, i32 1
  store i8* %332, i8** %334, align 8
  %335 = load i32, i32* %11, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %11, align 4
  %337 = load %struct.device_node*, %struct.device_node** %6, align 8
  %338 = call i64 @twl6040_has_vibra(%struct.device_node* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %372

340:                                              ; preds = %305
  %341 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %342 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @TWL6040_IRQ_VIB, align 4
  %345 = call i8* @regmap_irq_get_virq(i32 %343, i32 %344)
  %346 = ptrtoint i8* %345 to i32
  store i32 %346, i32* %9, align 4
  %347 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %348 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %347, i32 0, i32 5
  %349 = load %struct.mfd_cell*, %struct.mfd_cell** %348, align 8
  %350 = load i32, i32* %11, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %349, i64 %351
  store %struct.mfd_cell* %352, %struct.mfd_cell** %8, align 8
  %353 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %354 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %353, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %354, align 8
  %355 = load i32, i32* %9, align 4
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_vibra_rsrc, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 0
  store i32 %355, i32* %358, align 4
  %359 = load i32, i32* %9, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_vibra_rsrc, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i64 0
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 1
  store i32 %359, i32* %362, align 4
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_vibra_rsrc, align 8
  %364 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %365 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %364, i32 0, i32 2
  store %struct.TYPE_17__* %363, %struct.TYPE_17__** %365, align 8
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** @twl6040_vibra_rsrc, align 8
  %367 = call i8* @ARRAY_SIZE(%struct.TYPE_17__* %366)
  %368 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %369 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %368, i32 0, i32 1
  store i8* %367, i8** %369, align 8
  %370 = load i32, i32* %11, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %11, align 4
  br label %372

372:                                              ; preds = %340, %305
  %373 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %374 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %373, i32 0, i32 5
  %375 = load %struct.mfd_cell*, %struct.mfd_cell** %374, align 8
  %376 = load i32, i32* %11, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %375, i64 %377
  store %struct.mfd_cell* %378, %struct.mfd_cell** %8, align 8
  %379 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %380 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %379, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8** %380, align 8
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  %383 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %384 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %383, i32 0, i32 5
  %385 = load %struct.mfd_cell*, %struct.mfd_cell** %384, align 8
  %386 = load i32, i32* %11, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %385, i64 %387
  store %struct.mfd_cell* %388, %struct.mfd_cell** %8, align 8
  %389 = load %struct.mfd_cell*, %struct.mfd_cell** %8, align 8
  %390 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %389, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8** %390, align 8
  %391 = load i32, i32* %11, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %11, align 4
  %393 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %394 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %393, i32 0, i32 6
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @regcache_cache_only(i32* %395, i32 1)
  %397 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %398 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %397, i32 0, i32 6
  %399 = load i32*, i32** %398, align 8
  %400 = call i32 @regcache_mark_dirty(i32* %399)
  %401 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %402 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %401, i32 0, i32 0
  %403 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %404 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %403, i32 0, i32 5
  %405 = load %struct.mfd_cell*, %struct.mfd_cell** %404, align 8
  %406 = load i32, i32* %11, align 4
  %407 = call i32 @mfd_add_devices(%struct.TYPE_19__* %402, i32 -1, %struct.mfd_cell* %405, i32 %406, i32* null, i32 0, i32* null)
  store i32 %407, i32* %10, align 4
  %408 = load i32, i32* %10, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %372
  br label %412

411:                                              ; preds = %372
  store i32 0, i32* %3, align 4
  br label %427

412:                                              ; preds = %410, %299, %280
  %413 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %414 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %417 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @regmap_del_irq_chip(i32 %415, i32 %418)
  br label %420

420:                                              ; preds = %412, %252, %234, %193
  %421 = load i32, i32* @TWL6040_NUM_SUPPLIES, align 4
  %422 = load %struct.twl6040*, %struct.twl6040** %7, align 8
  %423 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %422, i32 0, i32 2
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %423, align 8
  %425 = call i32 @regulator_bulk_disable(i32 %421, %struct.TYPE_18__* %424)
  %426 = load i32, i32* %10, align 4
  store i32 %426, i32* %3, align 4
  br label %427

427:                                              ; preds = %420, %411, %155, %141, %112, %83, %55, %42, %29, %18
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.twl6040* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.twl6040*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_19__*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @regmap_register_patch(i32*, %struct.TYPE_17__*, i8*) #1

declare dso_local i8* @ARRAY_SIZE(%struct.TYPE_17__*) #1

declare dso_local i32 @twl6040_reg_read(%struct.twl6040*, i32) #1

declare dso_local i64 @twl6040_get_revid(%struct.twl6040*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_19__*, i32, i32, i8*) #1

declare dso_local i32 @regmap_add_irq_chip(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_19__*, i8*, i32*, i32, i32, i8*, %struct.twl6040*) #1

declare dso_local i64 @twl6040_has_vibra(%struct.device_node*) #1

declare dso_local i32 @regcache_cache_only(i32*, i32) #1

declare dso_local i32 @regcache_mark_dirty(i32*) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_19__*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
