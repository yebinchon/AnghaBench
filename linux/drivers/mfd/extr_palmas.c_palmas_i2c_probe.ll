; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_palmas.c_palmas_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas = type { %struct.i2c_client**, i32, i32, %struct.i2c_client**, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.i2c_client = type { %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.palmas_platform_data = type { i32, i32, i32, i32, i64, i64 }
%struct.palmas_driver_data = type { i32, i32* }
%struct.of_device_id = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@of_palmas_match_tbl = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@PALMAS_NUM_CLIENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@palmas_regmap_config = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate regmap %d, err: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"IRQ missing: skipping irq request\0A\00", align 1
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@PALMAS_POLARITY_CTRL_INT_POLARITY = common dso_local global i32 0, align 4
@PALMAS_PU_PD_OD_BASE = common dso_local global i32 0, align 4
@PALMAS_POLARITY_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"POLARITY_CTRL update failed: %d\0A\00", align 1
@PALMAS_INTERRUPT_BASE = common dso_local global i32 0, align 4
@PALMAS_INT_CTRL = common dso_local global i32 0, align 4
@PALMAS_INT_CTRL_INT_CLEAR = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1 = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_0 = common dso_local global i32 0, align 4
@PALMAS_GPIO_0_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK = common dso_local global i32 0, align 4
@PALMAS_GPIO_1_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT = common dso_local global i32 0, align 4
@PALMAS_LED1_MUXED = common dso_local global i32 0, align 4
@PALMAS_PWM1_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK = common dso_local global i32 0, align 4
@PALMAS_GPIO_2_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT = common dso_local global i32 0, align 4
@PALMAS_LED2_MUXED = common dso_local global i32 0, align 4
@PALMAS_PWM2_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_3 = common dso_local global i32 0, align 4
@PALMAS_GPIO_3_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD2 = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_4 = common dso_local global i32 0, align 4
@PALMAS_GPIO_4_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_5_MASK = common dso_local global i32 0, align 4
@PALMAS_GPIO_5_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_6 = common dso_local global i32 0, align 4
@PALMAS_GPIO_6_MUXED = common dso_local global i32 0, align 4
@PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_7_MASK = common dso_local global i32 0, align 4
@PALMAS_GPIO_7_MUXED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Muxing GPIO %x, PWM %x, LED %x\0A\00", align 1
@PALMAS_PMU_CONTROL_BASE = common dso_local global i32 0, align 4
@PALMAS_POWER_CTRL = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i64 0, align 8
@palmas_dev = common dso_local global %struct.palmas* null, align 8
@palmas_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @palmas_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.palmas*, align 8
  %7 = alloca %struct.palmas_platform_data*, align 8
  %8 = alloca %struct.palmas_driver_data*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.of_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call %struct.palmas_platform_data* @dev_get_platdata(%struct.TYPE_8__* %21)
  store %struct.palmas_platform_data* %22, %struct.palmas_platform_data** %7, align 8
  %23 = load %struct.device_node*, %struct.device_node** %9, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %27 = icmp ne %struct.palmas_platform_data* %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.TYPE_8__* %30, i32 32, i32 %31)
  %33 = bitcast i8* %32 to %struct.palmas_platform_data*
  store %struct.palmas_platform_data* %33, %struct.palmas_platform_data** %7, align 8
  %34 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %35 = icmp ne %struct.palmas_platform_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %607

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %42 = call i32 @palmas_dt_to_pdata(%struct.i2c_client* %40, %struct.palmas_platform_data* %41)
  br label %43

43:                                               ; preds = %39, %25, %2
  %44 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %45 = icmp ne %struct.palmas_platform_data* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %607

49:                                               ; preds = %43
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kzalloc(%struct.TYPE_8__* %51, i32 56, i32 %52)
  %54 = bitcast i8* %53 to %struct.palmas*
  store %struct.palmas* %54, %struct.palmas** %6, align 8
  %55 = load %struct.palmas*, %struct.palmas** %6, align 8
  %56 = icmp eq %struct.palmas* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %607

60:                                               ; preds = %49
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.palmas*, %struct.palmas** %6, align 8
  %63 = call i32 @i2c_set_clientdata(%struct.i2c_client* %61, %struct.palmas* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.palmas*, %struct.palmas** %6, align 8
  %67 = getelementptr inbounds %struct.palmas, %struct.palmas* %66, i32 0, i32 7
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.palmas*, %struct.palmas** %6, align 8
  %72 = getelementptr inbounds %struct.palmas, %struct.palmas* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @of_palmas_match_tbl, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call %struct.of_device_id* @of_match_device(i32 %73, %struct.TYPE_8__* %75)
  store %struct.of_device_id* %76, %struct.of_device_id** %15, align 8
  %77 = load %struct.of_device_id*, %struct.of_device_id** %15, align 8
  %78 = icmp ne %struct.of_device_id* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %60
  %80 = load i32, i32* @ENODATA, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %607

82:                                               ; preds = %60
  %83 = load %struct.of_device_id*, %struct.of_device_id** %15, align 8
  %84 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.palmas_driver_data*
  store %struct.palmas_driver_data* %86, %struct.palmas_driver_data** %8, align 8
  %87 = load %struct.palmas_driver_data*, %struct.palmas_driver_data** %8, align 8
  %88 = getelementptr inbounds %struct.palmas_driver_data, %struct.palmas_driver_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.palmas*, %struct.palmas** %6, align 8
  %92 = getelementptr inbounds %struct.palmas, %struct.palmas* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %204, %82
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @PALMAS_NUM_CLIENTS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %207

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = load %struct.palmas*, %struct.palmas** %6, align 8
  %103 = getelementptr inbounds %struct.palmas, %struct.palmas* %102, i32 0, i32 0
  %104 = load %struct.i2c_client**, %struct.i2c_client*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %104, i64 %106
  store %struct.i2c_client* %101, %struct.i2c_client** %107, align 8
  br label %160

108:                                              ; preds = %97
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %111, i64 %117)
  %119 = load %struct.palmas*, %struct.palmas** %6, align 8
  %120 = getelementptr inbounds %struct.palmas, %struct.palmas* %119, i32 0, i32 0
  %121 = load %struct.i2c_client**, %struct.i2c_client*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %121, i64 %123
  store %struct.i2c_client* %118, %struct.i2c_client** %124, align 8
  %125 = load %struct.palmas*, %struct.palmas** %6, align 8
  %126 = getelementptr inbounds %struct.palmas, %struct.palmas* %125, i32 0, i32 0
  %127 = load %struct.i2c_client**, %struct.i2c_client*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %127, i64 %129
  %131 = load %struct.i2c_client*, %struct.i2c_client** %130, align 8
  %132 = call i64 @IS_ERR(%struct.i2c_client* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %108
  %135 = load %struct.palmas*, %struct.palmas** %6, align 8
  %136 = getelementptr inbounds %struct.palmas, %struct.palmas* %135, i32 0, i32 7
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load %struct.palmas*, %struct.palmas** %6, align 8
  %141 = getelementptr inbounds %struct.palmas, %struct.palmas* %140, i32 0, i32 0
  %142 = load %struct.i2c_client**, %struct.i2c_client*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %142, i64 %144
  %146 = load %struct.i2c_client*, %struct.i2c_client** %145, align 8
  %147 = call i32 @PTR_ERR(%struct.i2c_client* %146)
  store i32 %147, i32* %10, align 4
  br label %578

148:                                              ; preds = %108
  %149 = load %struct.device_node*, %struct.device_node** %9, align 8
  %150 = call %struct.device_node* @of_node_get(%struct.device_node* %149)
  %151 = load %struct.palmas*, %struct.palmas** %6, align 8
  %152 = getelementptr inbounds %struct.palmas, %struct.palmas* %151, i32 0, i32 0
  %153 = load %struct.i2c_client**, %struct.i2c_client*** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %153, i64 %155
  %157 = load %struct.i2c_client*, %struct.i2c_client** %156, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store %struct.device_node* %150, %struct.device_node** %159, align 8
  br label %160

160:                                              ; preds = %148, %100
  %161 = load %struct.palmas*, %struct.palmas** %6, align 8
  %162 = getelementptr inbounds %struct.palmas, %struct.palmas* %161, i32 0, i32 0
  %163 = load %struct.i2c_client**, %struct.i2c_client*** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %163, i64 %165
  %167 = load %struct.i2c_client*, %struct.i2c_client** %166, align 8
  %168 = load i32*, i32** @palmas_regmap_config, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = call %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client* %167, i32* %171)
  %173 = load %struct.palmas*, %struct.palmas** %6, align 8
  %174 = getelementptr inbounds %struct.palmas, %struct.palmas* %173, i32 0, i32 3
  %175 = load %struct.i2c_client**, %struct.i2c_client*** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %175, i64 %177
  store %struct.i2c_client* %172, %struct.i2c_client** %178, align 8
  %179 = load %struct.palmas*, %struct.palmas** %6, align 8
  %180 = getelementptr inbounds %struct.palmas, %struct.palmas* %179, i32 0, i32 3
  %181 = load %struct.i2c_client**, %struct.i2c_client*** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %181, i64 %183
  %185 = load %struct.i2c_client*, %struct.i2c_client** %184, align 8
  %186 = call i64 @IS_ERR(%struct.i2c_client* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %160
  %189 = load %struct.palmas*, %struct.palmas** %6, align 8
  %190 = getelementptr inbounds %struct.palmas, %struct.palmas* %189, i32 0, i32 3
  %191 = load %struct.i2c_client**, %struct.i2c_client*** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %191, i64 %193
  %195 = load %struct.i2c_client*, %struct.i2c_client** %194, align 8
  %196 = call i32 @PTR_ERR(%struct.i2c_client* %195)
  store i32 %196, i32* %10, align 4
  %197 = load %struct.palmas*, %struct.palmas** %6, align 8
  %198 = getelementptr inbounds %struct.palmas, %struct.palmas* %197, i32 0, i32 7
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %10, align 4
  %202 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %199, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %200, i32 %201)
  br label %578

203:                                              ; preds = %160
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %93

207:                                              ; preds = %93
  %208 = load %struct.palmas*, %struct.palmas** %6, align 8
  %209 = getelementptr inbounds %struct.palmas, %struct.palmas* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load %struct.palmas*, %struct.palmas** %6, align 8
  %214 = getelementptr inbounds %struct.palmas, %struct.palmas* %213, i32 0, i32 7
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = call i32 @dev_warn(%struct.TYPE_8__* %215, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %284

217:                                              ; preds = %207
  %218 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %219 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @PALMAS_POLARITY_CTRL_INT_POLARITY, align 4
  store i32 %225, i32* %12, align 4
  br label %227

226:                                              ; preds = %217
  store i32 0, i32* %12, align 4
  br label %227

227:                                              ; preds = %226, %224
  %228 = load %struct.palmas*, %struct.palmas** %6, align 8
  %229 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %230 = load i32, i32* @PALMAS_POLARITY_CTRL, align 4
  %231 = load i32, i32* @PALMAS_POLARITY_CTRL_INT_POLARITY, align 4
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @palmas_update_bits(%struct.palmas* %228, i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %227
  %237 = load %struct.palmas*, %struct.palmas** %6, align 8
  %238 = getelementptr inbounds %struct.palmas, %struct.palmas* %237, i32 0, i32 7
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = call i32 (%struct.TYPE_8__*, i8*, i32, ...) @dev_err(%struct.TYPE_8__* %239, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  br label %578

242:                                              ; preds = %227
  %243 = load i32, i32* @PALMAS_INTERRUPT_BASE, align 4
  %244 = call i32 @PALMAS_BASE_TO_SLAVE(i32 %243)
  store i32 %244, i32* %14, align 4
  %245 = load i32, i32* @PALMAS_INTERRUPT_BASE, align 4
  %246 = load i32, i32* @PALMAS_INT_CTRL, align 4
  %247 = call i32 @PALMAS_BASE_TO_REG(i32 %245, i32 %246)
  store i32 %247, i32* %13, align 4
  %248 = load i32, i32* @PALMAS_INT_CTRL_INT_CLEAR, align 4
  store i32 %248, i32* %12, align 4
  %249 = load %struct.palmas*, %struct.palmas** %6, align 8
  %250 = getelementptr inbounds %struct.palmas, %struct.palmas* %249, i32 0, i32 3
  %251 = load %struct.i2c_client**, %struct.i2c_client*** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %251, i64 %253
  %255 = load %struct.i2c_client*, %struct.i2c_client** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @regmap_write(%struct.i2c_client* %255, i32 %256, i32 %257)
  %259 = load %struct.palmas*, %struct.palmas** %6, align 8
  %260 = getelementptr inbounds %struct.palmas, %struct.palmas* %259, i32 0, i32 3
  %261 = load %struct.i2c_client**, %struct.i2c_client*** %260, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %261, i64 %263
  %265 = load %struct.i2c_client*, %struct.i2c_client** %264, align 8
  %266 = load %struct.palmas*, %struct.palmas** %6, align 8
  %267 = getelementptr inbounds %struct.palmas, %struct.palmas* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IRQF_ONESHOT, align 4
  %270 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %271 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %269, %272
  %274 = load %struct.palmas_driver_data*, %struct.palmas_driver_data** %8, align 8
  %275 = getelementptr inbounds %struct.palmas_driver_data, %struct.palmas_driver_data* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.palmas*, %struct.palmas** %6, align 8
  %278 = getelementptr inbounds %struct.palmas, %struct.palmas* %277, i32 0, i32 1
  %279 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %265, i32 %268, i32 %273, i32 0, i32 %276, i32* %278)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %242
  br label %578

283:                                              ; preds = %242
  br label %284

284:                                              ; preds = %283, %212
  %285 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %286 = call i32 @PALMAS_BASE_TO_SLAVE(i32 %285)
  store i32 %286, i32* %14, align 4
  %287 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %288 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1, align 4
  %289 = call i32 @PALMAS_BASE_TO_REG(i32 %287, i32 %288)
  store i32 %289, i32* %13, align 4
  %290 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %291 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %290, i32 0, i32 5
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %284
  %295 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %296 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %12, align 4
  %298 = load %struct.palmas*, %struct.palmas** %6, align 8
  %299 = getelementptr inbounds %struct.palmas, %struct.palmas* %298, i32 0, i32 3
  %300 = load %struct.i2c_client**, %struct.i2c_client*** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %300, i64 %302
  %304 = load %struct.i2c_client*, %struct.i2c_client** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %12, align 4
  %307 = call i32 @regmap_write(%struct.i2c_client* %304, i32 %305, i32 %306)
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %294
  br label %570

311:                                              ; preds = %294
  br label %326

312:                                              ; preds = %284
  %313 = load %struct.palmas*, %struct.palmas** %6, align 8
  %314 = getelementptr inbounds %struct.palmas, %struct.palmas* %313, i32 0, i32 3
  %315 = load %struct.i2c_client**, %struct.i2c_client*** %314, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %315, i64 %317
  %319 = load %struct.i2c_client*, %struct.i2c_client** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = call i32 @regmap_read(%struct.i2c_client* %319, i32 %320, i32* %12)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %312
  br label %570

325:                                              ; preds = %312
  br label %326

326:                                              ; preds = %325, %311
  %327 = load i32, i32* %12, align 4
  %328 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_0, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* @PALMAS_GPIO_0_MUXED, align 4
  %333 = load %struct.palmas*, %struct.palmas** %6, align 8
  %334 = getelementptr inbounds %struct.palmas, %struct.palmas* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %331, %326
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %337
  %343 = load i32, i32* @PALMAS_GPIO_1_MUXED, align 4
  %344 = load %struct.palmas*, %struct.palmas** %6, align 8
  %345 = getelementptr inbounds %struct.palmas, %struct.palmas* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %376

348:                                              ; preds = %337
  %349 = load i32, i32* %12, align 4
  %350 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK, align 4
  %351 = and i32 %349, %350
  %352 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT, align 4
  %353 = shl i32 2, %352
  %354 = icmp eq i32 %351, %353
  br i1 %354, label %355, label %361

355:                                              ; preds = %348
  %356 = load i32, i32* @PALMAS_LED1_MUXED, align 4
  %357 = load %struct.palmas*, %struct.palmas** %6, align 8
  %358 = getelementptr inbounds %struct.palmas, %struct.palmas* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 8
  br label %375

361:                                              ; preds = %348
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_MASK, align 4
  %364 = and i32 %362, %363
  %365 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_1_SHIFT, align 4
  %366 = shl i32 3, %365
  %367 = icmp eq i32 %364, %366
  br i1 %367, label %368, label %374

368:                                              ; preds = %361
  %369 = load i32, i32* @PALMAS_PWM1_MUXED, align 4
  %370 = load %struct.palmas*, %struct.palmas** %6, align 8
  %371 = getelementptr inbounds %struct.palmas, %struct.palmas* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %369
  store i32 %373, i32* %371, align 4
  br label %374

374:                                              ; preds = %368, %361
  br label %375

375:                                              ; preds = %374, %355
  br label %376

376:                                              ; preds = %375, %342
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %376
  %382 = load i32, i32* @PALMAS_GPIO_2_MUXED, align 4
  %383 = load %struct.palmas*, %struct.palmas** %6, align 8
  %384 = getelementptr inbounds %struct.palmas, %struct.palmas* %383, i32 0, i32 6
  %385 = load i32, i32* %384, align 8
  %386 = or i32 %385, %382
  store i32 %386, i32* %384, align 8
  br label %415

387:                                              ; preds = %376
  %388 = load i32, i32* %12, align 4
  %389 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK, align 4
  %390 = and i32 %388, %389
  %391 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT, align 4
  %392 = shl i32 2, %391
  %393 = icmp eq i32 %390, %392
  br i1 %393, label %394, label %400

394:                                              ; preds = %387
  %395 = load i32, i32* @PALMAS_LED2_MUXED, align 4
  %396 = load %struct.palmas*, %struct.palmas** %6, align 8
  %397 = getelementptr inbounds %struct.palmas, %struct.palmas* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %395
  store i32 %399, i32* %397, align 8
  br label %414

400:                                              ; preds = %387
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_MASK, align 4
  %403 = and i32 %401, %402
  %404 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_2_SHIFT, align 4
  %405 = shl i32 3, %404
  %406 = icmp eq i32 %403, %405
  br i1 %406, label %407, label %413

407:                                              ; preds = %400
  %408 = load i32, i32* @PALMAS_PWM2_MUXED, align 4
  %409 = load %struct.palmas*, %struct.palmas** %6, align 8
  %410 = getelementptr inbounds %struct.palmas, %struct.palmas* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 4
  br label %413

413:                                              ; preds = %407, %400
  br label %414

414:                                              ; preds = %413, %394
  br label %415

415:                                              ; preds = %414, %381
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD1_GPIO_3, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %426, label %420

420:                                              ; preds = %415
  %421 = load i32, i32* @PALMAS_GPIO_3_MUXED, align 4
  %422 = load %struct.palmas*, %struct.palmas** %6, align 8
  %423 = getelementptr inbounds %struct.palmas, %struct.palmas* %422, i32 0, i32 6
  %424 = load i32, i32* %423, align 8
  %425 = or i32 %424, %421
  store i32 %425, i32* %423, align 8
  br label %426

426:                                              ; preds = %420, %415
  %427 = load i32, i32* @PALMAS_PU_PD_OD_BASE, align 4
  %428 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD2, align 4
  %429 = call i32 @PALMAS_BASE_TO_REG(i32 %427, i32 %428)
  store i32 %429, i32* %13, align 4
  %430 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %431 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %430, i32 0, i32 5
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %452

434:                                              ; preds = %426
  %435 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %436 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  store i32 %437, i32* %12, align 4
  %438 = load %struct.palmas*, %struct.palmas** %6, align 8
  %439 = getelementptr inbounds %struct.palmas, %struct.palmas* %438, i32 0, i32 3
  %440 = load %struct.i2c_client**, %struct.i2c_client*** %439, align 8
  %441 = load i32, i32* %14, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %440, i64 %442
  %444 = load %struct.i2c_client*, %struct.i2c_client** %443, align 8
  %445 = load i32, i32* %13, align 4
  %446 = load i32, i32* %12, align 4
  %447 = call i32 @regmap_write(%struct.i2c_client* %444, i32 %445, i32 %446)
  store i32 %447, i32* %10, align 4
  %448 = load i32, i32* %10, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %434
  br label %570

451:                                              ; preds = %434
  br label %466

452:                                              ; preds = %426
  %453 = load %struct.palmas*, %struct.palmas** %6, align 8
  %454 = getelementptr inbounds %struct.palmas, %struct.palmas* %453, i32 0, i32 3
  %455 = load %struct.i2c_client**, %struct.i2c_client*** %454, align 8
  %456 = load i32, i32* %14, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %455, i64 %457
  %459 = load %struct.i2c_client*, %struct.i2c_client** %458, align 8
  %460 = load i32, i32* %13, align 4
  %461 = call i32 @regmap_read(%struct.i2c_client* %459, i32 %460, i32* %12)
  store i32 %461, i32* %10, align 4
  %462 = load i32, i32* %10, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %452
  br label %570

465:                                              ; preds = %452
  br label %466

466:                                              ; preds = %465, %451
  %467 = load i32, i32* %12, align 4
  %468 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_4, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %466
  %472 = load i32, i32* @PALMAS_GPIO_4_MUXED, align 4
  %473 = load %struct.palmas*, %struct.palmas** %6, align 8
  %474 = getelementptr inbounds %struct.palmas, %struct.palmas* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = or i32 %475, %472
  store i32 %476, i32* %474, align 8
  br label %477

477:                                              ; preds = %471, %466
  %478 = load i32, i32* %12, align 4
  %479 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_5_MASK, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %488, label %482

482:                                              ; preds = %477
  %483 = load i32, i32* @PALMAS_GPIO_5_MUXED, align 4
  %484 = load %struct.palmas*, %struct.palmas** %6, align 8
  %485 = getelementptr inbounds %struct.palmas, %struct.palmas* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 8
  %487 = or i32 %486, %483
  store i32 %487, i32* %485, align 8
  br label %488

488:                                              ; preds = %482, %477
  %489 = load i32, i32* %12, align 4
  %490 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_6, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %499, label %493

493:                                              ; preds = %488
  %494 = load i32, i32* @PALMAS_GPIO_6_MUXED, align 4
  %495 = load %struct.palmas*, %struct.palmas** %6, align 8
  %496 = getelementptr inbounds %struct.palmas, %struct.palmas* %495, i32 0, i32 6
  %497 = load i32, i32* %496, align 8
  %498 = or i32 %497, %494
  store i32 %498, i32* %496, align 8
  br label %499

499:                                              ; preds = %493, %488
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* @PALMAS_PRIMARY_SECONDARY_PAD2_GPIO_7_MASK, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %510, label %504

504:                                              ; preds = %499
  %505 = load i32, i32* @PALMAS_GPIO_7_MUXED, align 4
  %506 = load %struct.palmas*, %struct.palmas** %6, align 8
  %507 = getelementptr inbounds %struct.palmas, %struct.palmas* %506, i32 0, i32 6
  %508 = load i32, i32* %507, align 8
  %509 = or i32 %508, %505
  store i32 %509, i32* %507, align 8
  br label %510

510:                                              ; preds = %504, %499
  %511 = load %struct.palmas*, %struct.palmas** %6, align 8
  %512 = getelementptr inbounds %struct.palmas, %struct.palmas* %511, i32 0, i32 7
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %512, align 8
  %514 = load %struct.palmas*, %struct.palmas** %6, align 8
  %515 = getelementptr inbounds %struct.palmas, %struct.palmas* %514, i32 0, i32 6
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.palmas*, %struct.palmas** %6, align 8
  %518 = getelementptr inbounds %struct.palmas, %struct.palmas* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.palmas*, %struct.palmas** %6, align 8
  %521 = getelementptr inbounds %struct.palmas, %struct.palmas* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 8
  %523 = call i32 @dev_info(%struct.TYPE_8__* %513, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %516, i32 %519, i32 %522)
  %524 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %525 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %524, i32 0, i32 3
  %526 = load i32, i32* %525, align 4
  store i32 %526, i32* %12, align 4
  %527 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %528 = call i32 @PALMAS_BASE_TO_SLAVE(i32 %527)
  store i32 %528, i32* %14, align 4
  %529 = load i32, i32* @PALMAS_PMU_CONTROL_BASE, align 4
  %530 = load i32, i32* @PALMAS_POWER_CTRL, align 4
  %531 = call i32 @PALMAS_BASE_TO_REG(i32 %529, i32 %530)
  store i32 %531, i32* %13, align 4
  %532 = load %struct.palmas*, %struct.palmas** %6, align 8
  %533 = getelementptr inbounds %struct.palmas, %struct.palmas* %532, i32 0, i32 3
  %534 = load %struct.i2c_client**, %struct.i2c_client*** %533, align 8
  %535 = load i32, i32* %14, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %534, i64 %536
  %538 = load %struct.i2c_client*, %struct.i2c_client** %537, align 8
  %539 = load i32, i32* %13, align 4
  %540 = load i32, i32* %12, align 4
  %541 = call i32 @regmap_write(%struct.i2c_client* %538, i32 %539, i32 %540)
  store i32 %541, i32* %10, align 4
  %542 = load i32, i32* %10, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %545

544:                                              ; preds = %510
  br label %570

545:                                              ; preds = %510
  %546 = load %struct.device_node*, %struct.device_node** %9, align 8
  %547 = icmp ne %struct.device_node* %546, null
  br i1 %547, label %548, label %568

548:                                              ; preds = %545
  %549 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %550 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %549, i32 0, i32 0
  %551 = call i32 @devm_of_platform_populate(%struct.TYPE_8__* %550)
  store i32 %551, i32* %10, align 4
  %552 = load i32, i32* %10, align 4
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %548
  br label %570

555:                                              ; preds = %548
  %556 = load %struct.palmas_platform_data*, %struct.palmas_platform_data** %7, align 8
  %557 = getelementptr inbounds %struct.palmas_platform_data, %struct.palmas_platform_data* %556, i32 0, i32 4
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %555
  %561 = load i64, i64* @pm_power_off, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = load %struct.palmas*, %struct.palmas** %6, align 8
  store %struct.palmas* %564, %struct.palmas** @palmas_dev, align 8
  %565 = load i64, i64* @palmas_power_off, align 8
  store i64 %565, i64* @pm_power_off, align 8
  br label %566

566:                                              ; preds = %563, %560, %555
  br label %567

567:                                              ; preds = %566
  br label %568

568:                                              ; preds = %567, %545
  %569 = load i32, i32* %10, align 4
  store i32 %569, i32* %3, align 4
  br label %607

570:                                              ; preds = %554, %544, %464, %450, %324, %310
  %571 = load %struct.palmas*, %struct.palmas** %6, align 8
  %572 = getelementptr inbounds %struct.palmas, %struct.palmas* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 4
  %574 = load %struct.palmas*, %struct.palmas** %6, align 8
  %575 = getelementptr inbounds %struct.palmas, %struct.palmas* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @regmap_del_irq_chip(i32 %573, i32 %576)
  br label %578

578:                                              ; preds = %570, %282, %236, %188, %134
  store i32 1, i32* %11, align 4
  br label %579

579:                                              ; preds = %602, %578
  %580 = load i32, i32* %11, align 4
  %581 = load i32, i32* @PALMAS_NUM_CLIENTS, align 4
  %582 = icmp slt i32 %580, %581
  br i1 %582, label %583, label %605

583:                                              ; preds = %579
  %584 = load %struct.palmas*, %struct.palmas** %6, align 8
  %585 = getelementptr inbounds %struct.palmas, %struct.palmas* %584, i32 0, i32 0
  %586 = load %struct.i2c_client**, %struct.i2c_client*** %585, align 8
  %587 = load i32, i32* %11, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %586, i64 %588
  %590 = load %struct.i2c_client*, %struct.i2c_client** %589, align 8
  %591 = icmp ne %struct.i2c_client* %590, null
  br i1 %591, label %592, label %601

592:                                              ; preds = %583
  %593 = load %struct.palmas*, %struct.palmas** %6, align 8
  %594 = getelementptr inbounds %struct.palmas, %struct.palmas* %593, i32 0, i32 0
  %595 = load %struct.i2c_client**, %struct.i2c_client*** %594, align 8
  %596 = load i32, i32* %11, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %595, i64 %597
  %599 = load %struct.i2c_client*, %struct.i2c_client** %598, align 8
  %600 = call i32 @i2c_unregister_device(%struct.i2c_client* %599)
  br label %601

601:                                              ; preds = %592, %583
  br label %602

602:                                              ; preds = %601
  %603 = load i32, i32* %11, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %11, align 4
  br label %579

605:                                              ; preds = %579
  %606 = load i32, i32* %10, align 4
  store i32 %606, i32* %3, align 4
  br label %607

607:                                              ; preds = %605, %568, %79, %57, %46, %36
  %608 = load i32, i32* %3, align 4
  ret i32 %608
}

declare dso_local %struct.palmas_platform_data* @dev_get_platdata(%struct.TYPE_8__*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @palmas_dt_to_pdata(%struct.i2c_client*, %struct.palmas_platform_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.palmas*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @palmas_update_bits(%struct.palmas*, i32, i32, i32, i32) #1

declare dso_local i32 @PALMAS_BASE_TO_SLAVE(i32) #1

declare dso_local i32 @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.i2c_client*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @regmap_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32, i32, i32) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_8__*) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
