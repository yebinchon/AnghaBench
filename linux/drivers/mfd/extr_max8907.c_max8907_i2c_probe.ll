; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_max8907.c_max8907_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_max8907.c_max8907_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8907 = type { %struct.i2c_client*, i32, %struct.i2c_client*, i32, i32, %struct.TYPE_6__*, %struct.i2c_client*, %struct.i2c_client* }
%struct.TYPE_6__ = type { i64 }
%struct.i2c_client = type { i32, %struct.TYPE_6__, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max8907_platform_data = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"maxim,system-power-controller\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max8907_regmap_gen_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"gen regmap init failed: %d\0A\00", align 1
@MAX8907_RTC_I2C_ADDR = common dso_local global i32 0, align 4
@max8907_regmap_rtc_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"rtc regmap init failed: %d\0A\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@max8907_chg_irq_chip = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to add chg irq chip: %d\0A\00", align 1
@max8907_on_off_irq_chip = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to add on off irq chip: %d\0A\00", align 1
@max8907_rtc_irq_chip = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to add rtc irq chip: %d\0A\00", align 1
@max8907_cells = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to add MFD devices %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@max8907_pm_off = common dso_local global %struct.max8907* null, align 8
@max8907_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max8907_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max8907*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.max8907_platform_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.max8907_platform_data* @dev_get_platdata(%struct.TYPE_6__* %11)
  store %struct.max8907_platform_data* %12, %struct.max8907_platform_data** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.max8907_platform_data*, %struct.max8907_platform_data** %8, align 8
  %14 = icmp ne %struct.max8907_platform_data* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.max8907_platform_data*, %struct.max8907_platform_data** %8, align 8
  %17 = getelementptr inbounds %struct.max8907_platform_data, %struct.max8907_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @of_property_read_bool(i64 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.max8907* @devm_kzalloc(%struct.TYPE_6__* %34, i32 56, i32 %35)
  store %struct.max8907* %36, %struct.max8907** %6, align 8
  %37 = load %struct.max8907*, %struct.max8907** %6, align 8
  %38 = icmp ne %struct.max8907* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %264

42:                                               ; preds = %32
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load %struct.max8907*, %struct.max8907** %6, align 8
  %46 = getelementptr inbounds %struct.max8907, %struct.max8907* %45, i32 0, i32 5
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.max8907*, %struct.max8907** %6, align 8
  %48 = getelementptr inbounds %struct.max8907, %struct.max8907* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.max8907*, %struct.max8907** %6, align 8
  %51 = call i32 @dev_set_drvdata(%struct.TYPE_6__* %49, %struct.max8907* %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load %struct.max8907*, %struct.max8907** %6, align 8
  %54 = getelementptr inbounds %struct.max8907, %struct.max8907* %53, i32 0, i32 2
  store %struct.i2c_client* %52, %struct.i2c_client** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load %struct.max8907*, %struct.max8907** %6, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.max8907* %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %58, i32* @max8907_regmap_gen_config)
  %60 = bitcast i8* %59 to %struct.i2c_client*
  %61 = load %struct.max8907*, %struct.max8907** %6, align 8
  %62 = getelementptr inbounds %struct.max8907, %struct.max8907* %61, i32 0, i32 7
  store %struct.i2c_client* %60, %struct.i2c_client** %62, align 8
  %63 = load %struct.max8907*, %struct.max8907** %6, align 8
  %64 = getelementptr inbounds %struct.max8907, %struct.max8907* %63, i32 0, i32 7
  %65 = load %struct.i2c_client*, %struct.i2c_client** %64, align 8
  %66 = call i64 @IS_ERR(%struct.i2c_client* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %42
  %69 = load %struct.max8907*, %struct.max8907** %6, align 8
  %70 = getelementptr inbounds %struct.max8907, %struct.max8907* %69, i32 0, i32 7
  %71 = load %struct.i2c_client*, %struct.i2c_client** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.i2c_client* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(%struct.TYPE_6__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %263

77:                                               ; preds = %42
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MAX8907_RTC_I2C_ADDR, align 4
  %82 = call %struct.i2c_client* @i2c_new_dummy_device(i32 %80, i32 %81)
  %83 = load %struct.max8907*, %struct.max8907** %6, align 8
  %84 = getelementptr inbounds %struct.max8907, %struct.max8907* %83, i32 0, i32 0
  store %struct.i2c_client* %82, %struct.i2c_client** %84, align 8
  %85 = load %struct.max8907*, %struct.max8907** %6, align 8
  %86 = getelementptr inbounds %struct.max8907, %struct.max8907* %85, i32 0, i32 0
  %87 = load %struct.i2c_client*, %struct.i2c_client** %86, align 8
  %88 = call i64 @IS_ERR(%struct.i2c_client* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load %struct.max8907*, %struct.max8907** %6, align 8
  %92 = getelementptr inbounds %struct.max8907, %struct.max8907* %91, i32 0, i32 0
  %93 = load %struct.i2c_client*, %struct.i2c_client** %92, align 8
  %94 = call i32 @PTR_ERR(%struct.i2c_client* %93)
  store i32 %94, i32* %7, align 4
  br label %262

95:                                               ; preds = %77
  %96 = load %struct.max8907*, %struct.max8907** %6, align 8
  %97 = getelementptr inbounds %struct.max8907, %struct.max8907* %96, i32 0, i32 0
  %98 = load %struct.i2c_client*, %struct.i2c_client** %97, align 8
  %99 = load %struct.max8907*, %struct.max8907** %6, align 8
  %100 = call i32 @i2c_set_clientdata(%struct.i2c_client* %98, %struct.max8907* %99)
  %101 = load %struct.max8907*, %struct.max8907** %6, align 8
  %102 = getelementptr inbounds %struct.max8907, %struct.max8907* %101, i32 0, i32 0
  %103 = load %struct.i2c_client*, %struct.i2c_client** %102, align 8
  %104 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %103, i32* @max8907_regmap_rtc_config)
  %105 = bitcast i8* %104 to %struct.i2c_client*
  %106 = load %struct.max8907*, %struct.max8907** %6, align 8
  %107 = getelementptr inbounds %struct.max8907, %struct.max8907* %106, i32 0, i32 6
  store %struct.i2c_client* %105, %struct.i2c_client** %107, align 8
  %108 = load %struct.max8907*, %struct.max8907** %6, align 8
  %109 = getelementptr inbounds %struct.max8907, %struct.max8907* %108, i32 0, i32 6
  %110 = load %struct.i2c_client*, %struct.i2c_client** %109, align 8
  %111 = call i64 @IS_ERR(%struct.i2c_client* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %95
  %114 = load %struct.max8907*, %struct.max8907** %6, align 8
  %115 = getelementptr inbounds %struct.max8907, %struct.max8907* %114, i32 0, i32 6
  %116 = load %struct.i2c_client*, %struct.i2c_client** %115, align 8
  %117 = call i32 @PTR_ERR(%struct.i2c_client* %116)
  store i32 %117, i32* %7, align 4
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %118, i32 0, i32 1
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @dev_err(%struct.TYPE_6__* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %257

122:                                              ; preds = %95
  %123 = load %struct.max8907*, %struct.max8907** %6, align 8
  %124 = getelementptr inbounds %struct.max8907, %struct.max8907* %123, i32 0, i32 2
  %125 = load %struct.i2c_client*, %struct.i2c_client** %124, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %129 = call i32 @irq_set_status_flags(i32 %127, i32 %128)
  %130 = load %struct.max8907*, %struct.max8907** %6, align 8
  %131 = getelementptr inbounds %struct.max8907, %struct.max8907* %130, i32 0, i32 7
  %132 = load %struct.i2c_client*, %struct.i2c_client** %131, align 8
  %133 = load %struct.max8907*, %struct.max8907** %6, align 8
  %134 = getelementptr inbounds %struct.max8907, %struct.max8907* %133, i32 0, i32 2
  %135 = load %struct.i2c_client*, %struct.i2c_client** %134, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IRQF_ONESHOT, align 4
  %139 = load i32, i32* @IRQF_SHARED, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.max8907*, %struct.max8907** %6, align 8
  %142 = getelementptr inbounds %struct.max8907, %struct.max8907* %141, i32 0, i32 1
  %143 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %132, i32 %137, i32 %140, i32 -1, i32* @max8907_chg_irq_chip, i32* %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %122
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 1
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @dev_err(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %256

151:                                              ; preds = %122
  %152 = load %struct.max8907*, %struct.max8907** %6, align 8
  %153 = getelementptr inbounds %struct.max8907, %struct.max8907* %152, i32 0, i32 7
  %154 = load %struct.i2c_client*, %struct.i2c_client** %153, align 8
  %155 = load %struct.max8907*, %struct.max8907** %6, align 8
  %156 = getelementptr inbounds %struct.max8907, %struct.max8907* %155, i32 0, i32 2
  %157 = load %struct.i2c_client*, %struct.i2c_client** %156, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @IRQF_ONESHOT, align 4
  %161 = load i32, i32* @IRQF_SHARED, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.max8907*, %struct.max8907** %6, align 8
  %164 = getelementptr inbounds %struct.max8907, %struct.max8907* %163, i32 0, i32 3
  %165 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %154, i32 %159, i32 %162, i32 -1, i32* @max8907_on_off_irq_chip, i32* %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %151
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 1
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @dev_err(%struct.TYPE_6__* %170, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %171)
  br label %246

173:                                              ; preds = %151
  %174 = load %struct.max8907*, %struct.max8907** %6, align 8
  %175 = getelementptr inbounds %struct.max8907, %struct.max8907* %174, i32 0, i32 6
  %176 = load %struct.i2c_client*, %struct.i2c_client** %175, align 8
  %177 = load %struct.max8907*, %struct.max8907** %6, align 8
  %178 = getelementptr inbounds %struct.max8907, %struct.max8907* %177, i32 0, i32 2
  %179 = load %struct.i2c_client*, %struct.i2c_client** %178, align 8
  %180 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IRQF_ONESHOT, align 4
  %183 = load i32, i32* @IRQF_SHARED, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.max8907*, %struct.max8907** %6, align 8
  %186 = getelementptr inbounds %struct.max8907, %struct.max8907* %185, i32 0, i32 4
  %187 = call i32 @regmap_add_irq_chip(%struct.i2c_client* %176, i32 %181, i32 %184, i32 -1, i32* @max8907_rtc_irq_chip, i32* %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %173
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 1
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @dev_err(%struct.TYPE_6__* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %236

195:                                              ; preds = %173
  %196 = load %struct.max8907*, %struct.max8907** %6, align 8
  %197 = getelementptr inbounds %struct.max8907, %struct.max8907* %196, i32 0, i32 2
  %198 = load %struct.i2c_client*, %struct.i2c_client** %197, align 8
  %199 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @enable_irq(i32 %200)
  %202 = load %struct.max8907*, %struct.max8907** %6, align 8
  %203 = getelementptr inbounds %struct.max8907, %struct.max8907* %202, i32 0, i32 5
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* @max8907_cells, align 4
  %206 = load i32, i32* @max8907_cells, align 4
  %207 = call i32 @ARRAY_SIZE(i32 %206)
  %208 = call i32 @mfd_add_devices(%struct.TYPE_6__* %204, i32 -1, i32 %205, i32 %207, i32* null, i32 0, i32* null)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %195
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 1
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @dev_err(%struct.TYPE_6__* %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %214)
  br label %226

216:                                              ; preds = %195
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %216
  %220 = load i64, i64* @pm_power_off, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load %struct.max8907*, %struct.max8907** %6, align 8
  store %struct.max8907* %223, %struct.max8907** @max8907_pm_off, align 8
  %224 = load i64, i64* @max8907_power_off, align 8
  store i64 %224, i64* @pm_power_off, align 8
  br label %225

225:                                              ; preds = %222, %219, %216
  store i32 0, i32* %3, align 4
  br label %266

226:                                              ; preds = %211
  %227 = load %struct.max8907*, %struct.max8907** %6, align 8
  %228 = getelementptr inbounds %struct.max8907, %struct.max8907* %227, i32 0, i32 2
  %229 = load %struct.i2c_client*, %struct.i2c_client** %228, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.max8907*, %struct.max8907** %6, align 8
  %233 = getelementptr inbounds %struct.max8907, %struct.max8907* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @regmap_del_irq_chip(i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %226, %190
  %237 = load %struct.max8907*, %struct.max8907** %6, align 8
  %238 = getelementptr inbounds %struct.max8907, %struct.max8907* %237, i32 0, i32 2
  %239 = load %struct.i2c_client*, %struct.i2c_client** %238, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.max8907*, %struct.max8907** %6, align 8
  %243 = getelementptr inbounds %struct.max8907, %struct.max8907* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @regmap_del_irq_chip(i32 %241, i32 %244)
  br label %246

246:                                              ; preds = %236, %168
  %247 = load %struct.max8907*, %struct.max8907** %6, align 8
  %248 = getelementptr inbounds %struct.max8907, %struct.max8907* %247, i32 0, i32 2
  %249 = load %struct.i2c_client*, %struct.i2c_client** %248, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.max8907*, %struct.max8907** %6, align 8
  %253 = getelementptr inbounds %struct.max8907, %struct.max8907* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @regmap_del_irq_chip(i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %246, %146
  br label %257

257:                                              ; preds = %256, %113
  %258 = load %struct.max8907*, %struct.max8907** %6, align 8
  %259 = getelementptr inbounds %struct.max8907, %struct.max8907* %258, i32 0, i32 0
  %260 = load %struct.i2c_client*, %struct.i2c_client** %259, align 8
  %261 = call i32 @i2c_unregister_device(%struct.i2c_client* %260)
  br label %262

262:                                              ; preds = %257, %90
  br label %263

263:                                              ; preds = %262, %68
  br label %264

264:                                              ; preds = %263, %39
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %264, %225
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.max8907_platform_data* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @of_property_read_bool(i64, i8*) #1

declare dso_local %struct.max8907* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_6__*, %struct.max8907*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max8907*) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @regmap_add_irq_chip(%struct.i2c_client*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @mfd_add_devices(%struct.TYPE_6__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
