; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_common_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mc13xxx_platform_data = type { i32, i32, i32*, i32*, i32*, i32 }
%struct.mc13xxx = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.mc13xxx*, i32)* }

@MC13XXX_REVISION = common dso_local global i32 0, align 4
@MC13XXX_PWRCTRL = common dso_local global i32 0, align 4
@MC13XXX_PWRCTRL_WDIRESET = common dso_local global i32 0, align 4
@MC13XXX_IRQ_PER_REG = common dso_local global i32 0, align 4
@MC13XXX_IRQSTAT0 = common dso_local global i8* null, align 8
@MC13XXX_IRQMASK0 = common dso_local global i32 0, align 4
@MC13XXX_IRQSTAT1 = common dso_local global i8* null, align 8
@MC13XXX_IRQ_REG_CNT = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s-regulator\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s-led\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s-pwrbutton\00", align 1
@MC13XXX_USE_CODEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-codec\00", align 1
@MC13XXX_USE_TOUCHSCREEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-ts\00", align 1
@MC13XXX_USE_ADC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s-adc\00", align 1
@MC13XXX_USE_RTC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"%s-rtc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc13xxx_common_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mc13xxx_platform_data*, align 8
  %5 = alloca %struct.mc13xxx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.mc13xxx_platform_data* @dev_get_platdata(%struct.device* %9)
  store %struct.mc13xxx_platform_data* %10, %struct.mc13xxx_platform_data** %4, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.mc13xxx* @dev_get_drvdata(%struct.device* %11)
  store %struct.mc13xxx* %12, %struct.mc13xxx** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %15 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %14, i32 0, i32 8
  store %struct.device* %13, %struct.device** %15, align 8
  %16 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %17 = load i32, i32* @MC13XXX_REVISION, align 4
  %18 = call i32 @mc13xxx_reg_read(%struct.mc13xxx* %16, i32 %17, i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %247

23:                                               ; preds = %1
  %24 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %25 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %24, i32 0, i32 7
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.mc13xxx*, i32)*, i32 (%struct.mc13xxx*, i32)** %27, align 8
  %29 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %28(%struct.mc13xxx* %29, i32 %30)
  %32 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %33 = load i32, i32* @MC13XXX_PWRCTRL, align 4
  %34 = load i32, i32* @MC13XXX_PWRCTRL_WDIRESET, align 4
  %35 = load i32, i32* @MC13XXX_PWRCTRL_WDIRESET, align 4
  %36 = call i32 @mc13xxx_reg_rmw(%struct.mc13xxx* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %247

41:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %45 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %44, i32 0, i32 6
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %46)
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MC13XXX_IRQ_PER_REG, align 4
  %52 = sdiv i32 %50, %51
  %53 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %54 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %53, i32 0, i32 6
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @MC13XXX_IRQ_PER_REG, align 4
  %62 = srem i32 %60, %61
  %63 = call i32 @BIT(i32 %62)
  %64 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %65 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %64, i32 0, i32 6
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = call i32 @dev_name(%struct.device* %75)
  %77 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %78 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 9
  store i32 %76, i32* %79, align 8
  %80 = load i8*, i8** @MC13XXX_IRQSTAT0, align 8
  %81 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %82 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 8
  store i8* %80, i8** %83, align 8
  %84 = load i32, i32* @MC13XXX_IRQMASK0, align 4
  %85 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %86 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 8
  %88 = load i8*, i8** @MC13XXX_IRQSTAT0, align 8
  %89 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %90 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 6
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @MC13XXX_IRQSTAT1, align 8
  %93 = load i8*, i8** @MC13XXX_IRQSTAT0, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %99 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  store i8* %97, i8** %100, align 8
  %101 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %102 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %105 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* @MC13XXX_IRQ_REG_CNT, align 4
  %108 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %109 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 8
  %111 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %112 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %111, i32 0, i32 6
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %115 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 3
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %116, align 8
  %117 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %118 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %117, i32 0, i32 6
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %119)
  %121 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %122 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %125 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %128 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IRQF_ONESHOT, align 4
  %131 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %132 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %131, i32 0, i32 3
  %133 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %134 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %133, i32 0, i32 2
  %135 = call i32 @regmap_add_irq_chip(i32 %126, i32 %129, i32 %130, i32 0, %struct.TYPE_5__* %132, i32* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %74
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %247

140:                                              ; preds = %74
  %141 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %142 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %141, i32 0, i32 1
  %143 = call i32 @mutex_init(i32* %142)
  %144 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %145 = call i64 @mc13xxx_probe_flags_dt(%struct.mc13xxx* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %149 = icmp ne %struct.mc13xxx_platform_data* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %152 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %155 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %150, %147, %140
  %157 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %158 = icmp ne %struct.mc13xxx_platform_data* %157, null
  br i1 %158, label %159, label %199

159:                                              ; preds = %156
  %160 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %161 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %162 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %161, i32 0, i32 5
  %163 = call i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %162, i32 4)
  %164 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %165 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %166 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %167, i32 4)
  %169 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %170 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %171 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %169, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %172, i32 4)
  %174 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %175 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MC13XXX_USE_CODEC, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %159
  %181 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %182 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %183 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %184, i32 4)
  br label %186

186:                                              ; preds = %180, %159
  %187 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %188 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @MC13XXX_USE_TOUCHSCREEN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %195 = load %struct.mc13xxx_platform_data*, %struct.mc13xxx_platform_data** %4, align 8
  %196 = getelementptr inbounds %struct.mc13xxx_platform_data, %struct.mc13xxx_platform_data* %195, i32 0, i32 1
  %197 = call i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %196, i32 4)
  br label %198

198:                                              ; preds = %193, %186
  br label %226

199:                                              ; preds = %156
  %200 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %201 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %200, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %202 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %203 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %204 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %205 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %206 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %207 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @MC13XXX_USE_CODEC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %199
  %213 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %214 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %199
  %216 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %217 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MC13XXX_USE_TOUCHSCREEN, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %224 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %215
  br label %226

226:                                              ; preds = %225, %198
  %227 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %228 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @MC13XXX_USE_ADC, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %235 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %226
  %237 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %238 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @MC13XXX_USE_RTC, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %236
  %244 = load %struct.mc13xxx*, %struct.mc13xxx** %5, align 8
  %245 = call i32 @mc13xxx_add_subdevice(%struct.mc13xxx* %244, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %236
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %138, %39, %21
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.mc13xxx_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.mc13xxx* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mc13xxx_reg_read(%struct.mc13xxx*, i32, i32*) #1

declare dso_local i32 @mc13xxx_reg_rmw(%struct.mc13xxx*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @regmap_add_irq_chip(i32, i32, i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @mc13xxx_probe_flags_dt(%struct.mc13xxx*) #1

declare dso_local i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx*, i8*, i32*, i32) #1

declare dso_local i32 @mc13xxx_add_subdevice(%struct.mc13xxx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
