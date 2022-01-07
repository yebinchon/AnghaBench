; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfd_cell = type { i32 }
%struct.madera = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.device*, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.mfd_cell }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { i32 }

@madera_core_supplies = common dso_local global %struct.mfd_cell* null, align 8
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@madera_ldo1_devs = common dso_local global %struct.mfd_cell* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to add LDO1 child: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown device type %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to request core supplies: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DCVDD\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to request DCVDD: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to enable core supplies: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to enable DCVDD: %d\0A\00", align 1
@MADERA_SOFTWARE_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to read ID register: %d\0A\00", align 1
@CONFIG_MFD_CS47L15 = common dso_local global i32 0, align 4
@cs47l15_devs = common dso_local global %struct.mfd_cell* null, align 8
@CONFIG_MFD_CS47L35 = common dso_local global i32 0, align 4
@cs47l35_devs = common dso_local global %struct.mfd_cell* null, align 8
@CONFIG_MFD_CS47L85 = common dso_local global i32 0, align 4
@cs47l85_devs = common dso_local global %struct.mfd_cell* null, align 8
@CONFIG_MFD_CS47L90 = common dso_local global i32 0, align 4
@cs47l90_devs = common dso_local global %struct.mfd_cell* null, align 8
@CONFIG_MFD_CS47L92 = common dso_local global i32 0, align 4
@cs47l92_devs = common dso_local global %struct.mfd_cell* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"Unknown device ID: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"Device ID 0x%x not a %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Device failed initial boot: %d\0A\00", align 1
@MADERA_HARDWARE_REVISION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"Failed to read revision register: %d\0A\00", align 1
@MADERA_HW_REVISION_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"%s silicon revision %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Failed to apply patch %d\0A\00", align 1
@MADERA_CLOCK_32K_1 = common dso_local global i32 0, align 4
@MADERA_CLK_32K_ENA_MASK = common dso_local global i32 0, align 4
@MADERA_CLK_32K_SRC_MASK = common dso_local global i32 0, align 4
@MADERA_CLK_32K_ENA = common dso_local global i32 0, align 4
@MADERA_32KZ_MCLK2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to init 32k clock: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to add subdevices: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_dev_init(%struct.madera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.madera*)*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %3, align 8
  %11 = load %struct.madera*, %struct.madera** %3, align 8
  %12 = getelementptr inbounds %struct.madera, %struct.madera* %11, i32 0, i32 5
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 (%struct.madera*)* null, i32 (%struct.madera*)** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.madera*, %struct.madera** %3, align 8
  %15 = getelementptr inbounds %struct.madera, %struct.madera* %14, i32 0, i32 5
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = load %struct.madera*, %struct.madera** %3, align 8
  %18 = call i32 @dev_set_drvdata(%struct.device* %16, %struct.madera* %17)
  %19 = load %struct.madera*, %struct.madera** %3, align 8
  %20 = getelementptr inbounds %struct.madera, %struct.madera* %19, i32 0, i32 11
  %21 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %20)
  %22 = load %struct.madera*, %struct.madera** %3, align 8
  %23 = getelementptr inbounds %struct.madera, %struct.madera* %22, i32 0, i32 10
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.madera*, %struct.madera** %3, align 8
  %26 = call i32 @madera_set_micbias_info(%struct.madera* %25)
  %27 = load %struct.madera*, %struct.madera** %3, align 8
  %28 = getelementptr inbounds %struct.madera, %struct.madera* %27, i32 0, i32 5
  %29 = load %struct.device*, %struct.device** %28, align 8
  %30 = call i64 @dev_get_platdata(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.madera*, %struct.madera** %3, align 8
  %34 = getelementptr inbounds %struct.madera, %struct.madera* %33, i32 0, i32 8
  %35 = load %struct.madera*, %struct.madera** %3, align 8
  %36 = getelementptr inbounds %struct.madera, %struct.madera* %35, i32 0, i32 5
  %37 = load %struct.device*, %struct.device** %36, align 8
  %38 = call i64 @dev_get_platdata(%struct.device* %37)
  %39 = call i32 @memcpy(%struct.TYPE_6__* %34, i64 %38, i32 4)
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.madera*, %struct.madera** %3, align 8
  %42 = call i32 @madera_get_reset_gpio(%struct.madera* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %2, align 4
  br label %444

47:                                               ; preds = %40
  %48 = load %struct.madera*, %struct.madera** %3, align 8
  %49 = getelementptr inbounds %struct.madera, %struct.madera* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @regcache_cache_only(i32 %50, i32 1)
  %52 = load %struct.madera*, %struct.madera** %3, align 8
  %53 = getelementptr inbounds %struct.madera, %struct.madera* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regcache_cache_only(i32 %54, i32 1)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %75, %47
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mfd_cell*, %struct.mfd_cell** @madera_core_supplies, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.madera*, %struct.madera** %3, align 8
  %63 = getelementptr inbounds %struct.madera, %struct.madera* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.mfd_cell*, %struct.mfd_cell** @madera_core_supplies, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %69, i64 %71
  %73 = bitcast %struct.mfd_cell* %68 to i8*
  %74 = bitcast %struct.mfd_cell* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load %struct.mfd_cell*, %struct.mfd_cell** @madera_core_supplies, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %79)
  %81 = load %struct.madera*, %struct.madera** %3, align 8
  %82 = getelementptr inbounds %struct.madera, %struct.madera* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.madera*, %struct.madera** %3, align 8
  %84 = getelementptr inbounds %struct.madera, %struct.madera* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %104 [
    i32 140, label %86
    i32 138, label %86
    i32 134, label %86
    i32 132, label %86
    i32 141, label %86
    i32 131, label %86
    i32 129, label %86
    i32 136, label %87
    i32 128, label %87
  ]

86:                                               ; preds = %78, %78, %78, %78, %78, %78, %78
  br label %114

87:                                               ; preds = %78, %78
  %88 = load %struct.madera*, %struct.madera** %3, align 8
  %89 = getelementptr inbounds %struct.madera, %struct.madera* %88, i32 0, i32 5
  %90 = load %struct.device*, %struct.device** %89, align 8
  %91 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %92 = load %struct.mfd_cell*, %struct.mfd_cell** @madera_ldo1_devs, align 8
  %93 = load %struct.mfd_cell*, %struct.mfd_cell** @madera_ldo1_devs, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %93)
  %95 = call i32 @mfd_add_devices(%struct.device* %90, i32 %91, %struct.mfd_cell* %92, i32 %94, i32* null, i32 0, i32* null)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %2, align 4
  br label %444

103:                                              ; preds = %87
  br label %114

104:                                              ; preds = %78
  %105 = load %struct.madera*, %struct.madera** %3, align 8
  %106 = getelementptr inbounds %struct.madera, %struct.madera* %105, i32 0, i32 5
  %107 = load %struct.device*, %struct.device** %106, align 8
  %108 = load %struct.madera*, %struct.madera** %3, align 8
  %109 = getelementptr inbounds %struct.madera, %struct.madera* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %444

114:                                              ; preds = %103, %86
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.madera*, %struct.madera** %3, align 8
  %117 = getelementptr inbounds %struct.madera, %struct.madera* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.madera*, %struct.madera** %3, align 8
  %120 = getelementptr inbounds %struct.madera, %struct.madera* %119, i32 0, i32 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = call i32 @devm_regulator_bulk_get(%struct.device* %115, i32 %118, %struct.TYPE_5__* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  br label %440

129:                                              ; preds = %114
  %130 = load %struct.madera*, %struct.madera** %3, align 8
  %131 = getelementptr inbounds %struct.madera, %struct.madera* %130, i32 0, i32 5
  %132 = load %struct.device*, %struct.device** %131, align 8
  %133 = call i32 @regulator_get(%struct.device* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.madera*, %struct.madera** %3, align 8
  %135 = getelementptr inbounds %struct.madera, %struct.madera* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.madera*, %struct.madera** %3, align 8
  %137 = getelementptr inbounds %struct.madera, %struct.madera* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %129
  %142 = load %struct.madera*, %struct.madera** %3, align 8
  %143 = getelementptr inbounds %struct.madera, %struct.madera* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @PTR_ERR(i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.device*, %struct.device** %4, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %440

149:                                              ; preds = %129
  %150 = load %struct.madera*, %struct.madera** %3, align 8
  %151 = getelementptr inbounds %struct.madera, %struct.madera* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.madera*, %struct.madera** %3, align 8
  %154 = getelementptr inbounds %struct.madera, %struct.madera* %153, i32 0, i32 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = call i32 @regulator_bulk_enable(i32 %152, %struct.TYPE_5__* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  br label %435

163:                                              ; preds = %149
  %164 = load %struct.madera*, %struct.madera** %3, align 8
  %165 = getelementptr inbounds %struct.madera, %struct.madera* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @regulator_enable(i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  br label %427

174:                                              ; preds = %163
  %175 = load %struct.madera*, %struct.madera** %3, align 8
  %176 = call i32 @madera_disable_hard_reset(%struct.madera* %175)
  %177 = load %struct.madera*, %struct.madera** %3, align 8
  %178 = getelementptr inbounds %struct.madera, %struct.madera* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @regcache_cache_only(i32 %179, i32 0)
  %181 = load %struct.madera*, %struct.madera** %3, align 8
  %182 = getelementptr inbounds %struct.madera, %struct.madera* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @regcache_cache_only(i32 %183, i32 0)
  %185 = load %struct.madera*, %struct.madera** %3, align 8
  %186 = getelementptr inbounds %struct.madera, %struct.madera* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @MADERA_SOFTWARE_RESET, align 4
  %189 = call i32 @regmap_read(i32 %187, i32 %188, i32* %5)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %174
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %194)
  br label %420

196:                                              ; preds = %174
  %197 = load i32, i32* %5, align 4
  switch i32 %197, label %273 [
    i32 139, label %198
    i32 137, label %213
    i32 135, label %228
    i32 133, label %243
    i32 130, label %258
  ]

198:                                              ; preds = %196
  %199 = load i32, i32* @CONFIG_MFD_CS47L15, align 4
  %200 = call i32 @IS_ENABLED(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %198
  %203 = load %struct.madera*, %struct.madera** %3, align 8
  %204 = getelementptr inbounds %struct.madera, %struct.madera* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %210 [
    i32 140, label %206
  ]

206:                                              ; preds = %202
  store i32 (%struct.madera*)* @cs47l15_patch, i32 (%struct.madera*)** %6, align 8
  %207 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l15_devs, align 8
  store %struct.mfd_cell* %207, %struct.mfd_cell** %7, align 8
  %208 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l15_devs, align 8
  %209 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %208)
  store i32 %209, i32* %8, align 4
  br label %211

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %206
  br label %212

212:                                              ; preds = %211, %198
  br label %281

213:                                              ; preds = %196
  %214 = load i32, i32* @CONFIG_MFD_CS47L35, align 4
  %215 = call i32 @IS_ENABLED(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load %struct.madera*, %struct.madera** %3, align 8
  %219 = getelementptr inbounds %struct.madera, %struct.madera* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  switch i32 %220, label %225 [
    i32 138, label %221
  ]

221:                                              ; preds = %217
  store i32 (%struct.madera*)* @cs47l35_patch, i32 (%struct.madera*)** %6, align 8
  %222 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l35_devs, align 8
  store %struct.mfd_cell* %222, %struct.mfd_cell** %7, align 8
  %223 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l35_devs, align 8
  %224 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %223)
  store i32 %224, i32* %8, align 4
  br label %226

225:                                              ; preds = %217
  br label %226

226:                                              ; preds = %225, %221
  br label %227

227:                                              ; preds = %226, %213
  br label %281

228:                                              ; preds = %196
  %229 = load i32, i32* @CONFIG_MFD_CS47L85, align 4
  %230 = call i32 @IS_ENABLED(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.madera*, %struct.madera** %3, align 8
  %234 = getelementptr inbounds %struct.madera, %struct.madera* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  switch i32 %235, label %240 [
    i32 136, label %236
    i32 128, label %236
  ]

236:                                              ; preds = %232, %232
  store i32 (%struct.madera*)* @cs47l85_patch, i32 (%struct.madera*)** %6, align 8
  %237 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l85_devs, align 8
  store %struct.mfd_cell* %237, %struct.mfd_cell** %7, align 8
  %238 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l85_devs, align 8
  %239 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %238)
  store i32 %239, i32* %8, align 4
  br label %241

240:                                              ; preds = %232
  br label %241

241:                                              ; preds = %240, %236
  br label %242

242:                                              ; preds = %241, %228
  br label %281

243:                                              ; preds = %196
  %244 = load i32, i32* @CONFIG_MFD_CS47L90, align 4
  %245 = call i32 @IS_ENABLED(i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load %struct.madera*, %struct.madera** %3, align 8
  %249 = getelementptr inbounds %struct.madera, %struct.madera* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  switch i32 %250, label %255 [
    i32 134, label %251
    i32 132, label %251
  ]

251:                                              ; preds = %247, %247
  store i32 (%struct.madera*)* @cs47l90_patch, i32 (%struct.madera*)** %6, align 8
  %252 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l90_devs, align 8
  store %struct.mfd_cell* %252, %struct.mfd_cell** %7, align 8
  %253 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l90_devs, align 8
  %254 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %253)
  store i32 %254, i32* %8, align 4
  br label %256

255:                                              ; preds = %247
  br label %256

256:                                              ; preds = %255, %251
  br label %257

257:                                              ; preds = %256, %243
  br label %281

258:                                              ; preds = %196
  %259 = load i32, i32* @CONFIG_MFD_CS47L92, align 4
  %260 = call i32 @IS_ENABLED(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %258
  %263 = load %struct.madera*, %struct.madera** %3, align 8
  %264 = getelementptr inbounds %struct.madera, %struct.madera* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  switch i32 %265, label %270 [
    i32 141, label %266
    i32 131, label %266
    i32 129, label %266
  ]

266:                                              ; preds = %262, %262, %262
  store i32 (%struct.madera*)* @cs47l92_patch, i32 (%struct.madera*)** %6, align 8
  %267 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l92_devs, align 8
  store %struct.mfd_cell* %267, %struct.mfd_cell** %7, align 8
  %268 = load %struct.mfd_cell*, %struct.mfd_cell** @cs47l92_devs, align 8
  %269 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %268)
  store i32 %269, i32* %8, align 4
  br label %271

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %270, %266
  br label %272

272:                                              ; preds = %271, %258
  br label %281

273:                                              ; preds = %196
  %274 = load %struct.madera*, %struct.madera** %3, align 8
  %275 = getelementptr inbounds %struct.madera, %struct.madera* %274, i32 0, i32 5
  %276 = load %struct.device*, %struct.device** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %10, align 4
  br label %420

281:                                              ; preds = %272, %257, %242, %227, %212
  %282 = load i32, i32* %8, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %281
  %285 = load %struct.madera*, %struct.madera** %3, align 8
  %286 = getelementptr inbounds %struct.madera, %struct.madera* %285, i32 0, i32 5
  %287 = load %struct.device*, %struct.device** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.madera*, %struct.madera** %3, align 8
  %290 = getelementptr inbounds %struct.madera, %struct.madera* %289, i32 0, i32 7
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %287, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %288, i32 %291)
  %293 = load i32, i32* @ENODEV, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %10, align 4
  br label %420

295:                                              ; preds = %281
  %296 = load %struct.madera*, %struct.madera** %3, align 8
  %297 = getelementptr inbounds %struct.madera, %struct.madera* %296, i32 0, i32 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %295
  %302 = load %struct.madera*, %struct.madera** %3, align 8
  %303 = call i32 @madera_soft_reset(%struct.madera* %302)
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %420

307:                                              ; preds = %301
  br label %308

308:                                              ; preds = %307, %295
  %309 = load %struct.madera*, %struct.madera** %3, align 8
  %310 = call i32 @madera_wait_for_boot(%struct.madera* %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %308
  %314 = load %struct.madera*, %struct.madera** %3, align 8
  %315 = getelementptr inbounds %struct.madera, %struct.madera* %314, i32 0, i32 5
  %316 = load %struct.device*, %struct.device** %315, align 8
  %317 = load i32, i32* %10, align 4
  %318 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %317)
  br label %420

319:                                              ; preds = %308
  %320 = load %struct.madera*, %struct.madera** %3, align 8
  %321 = getelementptr inbounds %struct.madera, %struct.madera* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @MADERA_HARDWARE_REVISION, align 4
  %324 = load %struct.madera*, %struct.madera** %3, align 8
  %325 = getelementptr inbounds %struct.madera, %struct.madera* %324, i32 0, i32 2
  %326 = call i32 @regmap_read(i32 %322, i32 %323, i32* %325)
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %319
  %330 = load %struct.device*, %struct.device** %4, align 8
  %331 = load i32, i32* %10, align 4
  %332 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %330, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %331)
  br label %420

333:                                              ; preds = %319
  %334 = load i32, i32* @MADERA_HW_REVISION_MASK, align 4
  %335 = load %struct.madera*, %struct.madera** %3, align 8
  %336 = getelementptr inbounds %struct.madera, %struct.madera* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 8
  %339 = load %struct.device*, %struct.device** %4, align 8
  %340 = load %struct.madera*, %struct.madera** %3, align 8
  %341 = getelementptr inbounds %struct.madera, %struct.madera* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.madera*, %struct.madera** %3, align 8
  %344 = getelementptr inbounds %struct.madera, %struct.madera* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @dev_info(%struct.device* %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %342, i32 %345)
  %347 = load i32 (%struct.madera*)*, i32 (%struct.madera*)** %6, align 8
  %348 = icmp ne i32 (%struct.madera*)* %347, null
  br i1 %348, label %349, label %362

349:                                              ; preds = %333
  %350 = load i32 (%struct.madera*)*, i32 (%struct.madera*)** %6, align 8
  %351 = load %struct.madera*, %struct.madera** %3, align 8
  %352 = call i32 %350(%struct.madera* %351)
  store i32 %352, i32* %10, align 4
  %353 = load i32, i32* %10, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %349
  %356 = load %struct.madera*, %struct.madera** %3, align 8
  %357 = getelementptr inbounds %struct.madera, %struct.madera* %356, i32 0, i32 5
  %358 = load %struct.device*, %struct.device** %357, align 8
  %359 = load i32, i32* %10, align 4
  %360 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %358, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %359)
  br label %420

361:                                              ; preds = %349
  br label %362

362:                                              ; preds = %361, %333
  %363 = load %struct.madera*, %struct.madera** %3, align 8
  %364 = getelementptr inbounds %struct.madera, %struct.madera* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @MADERA_CLOCK_32K_1, align 4
  %367 = load i32, i32* @MADERA_CLK_32K_ENA_MASK, align 4
  %368 = load i32, i32* @MADERA_CLK_32K_SRC_MASK, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* @MADERA_CLK_32K_ENA, align 4
  %371 = load i32, i32* @MADERA_32KZ_MCLK2, align 4
  %372 = or i32 %370, %371
  %373 = call i32 @regmap_update_bits(i32 %365, i32 %366, i32 %369, i32 %372)
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %10, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %362
  %377 = load %struct.madera*, %struct.madera** %3, align 8
  %378 = getelementptr inbounds %struct.madera, %struct.madera* %377, i32 0, i32 5
  %379 = load %struct.device*, %struct.device** %378, align 8
  %380 = load i32, i32* %10, align 4
  %381 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %379, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %380)
  br label %420

382:                                              ; preds = %362
  %383 = load %struct.madera*, %struct.madera** %3, align 8
  %384 = getelementptr inbounds %struct.madera, %struct.madera* %383, i32 0, i32 5
  %385 = load %struct.device*, %struct.device** %384, align 8
  %386 = call i32 @pm_runtime_set_active(%struct.device* %385)
  %387 = load %struct.madera*, %struct.madera** %3, align 8
  %388 = getelementptr inbounds %struct.madera, %struct.madera* %387, i32 0, i32 5
  %389 = load %struct.device*, %struct.device** %388, align 8
  %390 = call i32 @pm_runtime_enable(%struct.device* %389)
  %391 = load %struct.madera*, %struct.madera** %3, align 8
  %392 = getelementptr inbounds %struct.madera, %struct.madera* %391, i32 0, i32 5
  %393 = load %struct.device*, %struct.device** %392, align 8
  %394 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %393, i32 100)
  %395 = load %struct.madera*, %struct.madera** %3, align 8
  %396 = getelementptr inbounds %struct.madera, %struct.madera* %395, i32 0, i32 5
  %397 = load %struct.device*, %struct.device** %396, align 8
  %398 = call i32 @pm_runtime_use_autosuspend(%struct.device* %397)
  %399 = load %struct.madera*, %struct.madera** %3, align 8
  %400 = getelementptr inbounds %struct.madera, %struct.madera* %399, i32 0, i32 5
  %401 = load %struct.device*, %struct.device** %400, align 8
  %402 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %403 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %404 = load i32, i32* %8, align 4
  %405 = call i32 @mfd_add_devices(%struct.device* %401, i32 %402, %struct.mfd_cell* %403, i32 %404, i32* null, i32 0, i32* null)
  store i32 %405, i32* %10, align 4
  %406 = load i32, i32* %10, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %382
  %409 = load %struct.madera*, %struct.madera** %3, align 8
  %410 = getelementptr inbounds %struct.madera, %struct.madera* %409, i32 0, i32 5
  %411 = load %struct.device*, %struct.device** %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %411, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %412)
  br label %415

414:                                              ; preds = %382
  store i32 0, i32* %2, align 4
  br label %444

415:                                              ; preds = %408
  %416 = load %struct.madera*, %struct.madera** %3, align 8
  %417 = getelementptr inbounds %struct.madera, %struct.madera* %416, i32 0, i32 5
  %418 = load %struct.device*, %struct.device** %417, align 8
  %419 = call i32 @pm_runtime_disable(%struct.device* %418)
  br label %420

420:                                              ; preds = %415, %376, %355, %329, %313, %306, %284, %273, %192
  %421 = load %struct.madera*, %struct.madera** %3, align 8
  %422 = call i32 @madera_enable_hard_reset(%struct.madera* %421)
  %423 = load %struct.madera*, %struct.madera** %3, align 8
  %424 = getelementptr inbounds %struct.madera, %struct.madera* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @regulator_disable(i32 %425)
  br label %427

427:                                              ; preds = %420, %170
  %428 = load %struct.madera*, %struct.madera** %3, align 8
  %429 = getelementptr inbounds %struct.madera, %struct.madera* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.madera*, %struct.madera** %3, align 8
  %432 = getelementptr inbounds %struct.madera, %struct.madera* %431, i32 0, i32 4
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %432, align 8
  %434 = call i32 @regulator_bulk_disable(i32 %430, %struct.TYPE_5__* %433)
  br label %435

435:                                              ; preds = %427, %159
  %436 = load %struct.madera*, %struct.madera** %3, align 8
  %437 = getelementptr inbounds %struct.madera, %struct.madera* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @regulator_put(i32 %438)
  br label %440

440:                                              ; preds = %435, %141, %125
  %441 = load %struct.device*, %struct.device** %4, align 8
  %442 = call i32 @mfd_remove_devices(%struct.device* %441)
  %443 = load i32, i32* %10, align 4
  store i32 %443, i32* %2, align 4
  br label %444

444:                                              ; preds = %440, %414, %104, %98, %45
  %445 = load i32, i32* %2, align 4
  ret i32 %445
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.madera*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @madera_set_micbias_info(%struct.madera*) #1

declare dso_local i64 @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @madera_get_reset_gpio(%struct.madera*) #1

declare dso_local i32 @regcache_cache_only(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mfd_add_devices(%struct.device*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @madera_disable_hard_reset(%struct.madera*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @cs47l15_patch(%struct.madera*) #1

declare dso_local i32 @cs47l35_patch(%struct.madera*) #1

declare dso_local i32 @cs47l85_patch(%struct.madera*) #1

declare dso_local i32 @cs47l90_patch(%struct.madera*) #1

declare dso_local i32 @cs47l92_patch(%struct.madera*) #1

declare dso_local i32 @madera_soft_reset(%struct.madera*) #1

declare dso_local i32 @madera_wait_for_boot(%struct.madera*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @madera_enable_hard_reset(%struct.madera*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regulator_put(i32) #1

declare dso_local i32 @mfd_remove_devices(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
