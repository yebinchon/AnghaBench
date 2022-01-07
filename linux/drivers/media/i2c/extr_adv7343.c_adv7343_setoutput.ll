; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_setoutput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7343.c_adv7343_setoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7343_state = type { i32, i8, i8, i8, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@ADV7343_SVIDEO_ID = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid output type or output type not supported:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADV7343_COMPOSITE_ID = common dso_local global i64 0, align 8
@ADV7343_COMPOSITE_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_COMPONENT_ID = common dso_local global i64 0, align 8
@ADV7343_COMPONENT_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_SVIDEO_POWER_VALUE = common dso_local global i8 0, align 1
@ADV7343_POWER_MODE_REG = common dso_local global i32 0, align 4
@YUV_OUTPUT_SELECT = common dso_local global i8 0, align 1
@ADV7343_MODE_REG0 = common dso_local global i32 0, align 4
@SD_DAC_1_DI = common dso_local global i8 0, align 1
@SD_DAC_2_DI = common dso_local global i8 0, align 1
@ADV7343_SD_MODE_REG2 = common dso_local global i32 0, align 4
@HD_RGB_INPUT_DI = common dso_local global i8 0, align 1
@HD_DAC_SWAP_DI = common dso_local global i8 0, align 1
@ADV7343_HD_MODE_REG6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error setting output, write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64)* @adv7343_setoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7343_setoutput(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adv7343_state*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.adv7343_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.adv7343_state* %10, %struct.adv7343_state** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ADV7343_SVIDEO_ID, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @v4l2_dbg(i32 1, i32 %15, %struct.v4l2_subdev* %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %343

21:                                               ; preds = %2
  %22 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %23 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 3
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %28 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %27, i32 0, i32 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %62, label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ADV7343_COMPOSITE_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i8, i8* @ADV7343_COMPOSITE_POWER_VALUE, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %7, align 1
  br label %61

42:                                               ; preds = %31
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ADV7343_COMPONENT_ID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8, i8* @ADV7343_COMPONENT_POWER_VALUE, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  br label %60

53:                                               ; preds = %42
  %54 = load i8, i8* @ADV7343_SVIDEO_POWER_VALUE, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %7, align 1
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %35
  br label %139

62:                                               ; preds = %21
  %63 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %64 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %63, i32 0, i32 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 0
  %70 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %71 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 1
  %77 = or i32 %69, %76
  %78 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %79 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 2
  %87 = or i32 %77, %86
  %88 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %89 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %88, i32 0, i32 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 3
  %97 = or i32 %87, %96
  %98 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %99 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 4
  %107 = or i32 %97, %106
  %108 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %109 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %108, i32 0, i32 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 5
  %117 = or i32 %107, %116
  %118 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %119 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %118, i32 0, i32 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 6
  %127 = or i32 %117, %126
  %128 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %129 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %128, i32 0, i32 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 7
  %137 = or i32 %127, %136
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %7, align 1
  br label %139

139:                                              ; preds = %62, %61
  %140 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %141 = load i32, i32* @ADV7343_POWER_MODE_REG, align 4
  %142 = load i8, i8* %7, align 1
  %143 = call i32 @adv7343_write(%struct.v4l2_subdev* %140, i32 %141, i8 zeroext %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %335

147:                                              ; preds = %139
  %148 = load i8, i8* %7, align 1
  %149 = zext i8 %148 to i32
  %150 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %151 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %153 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %152, i32 0, i32 1
  %154 = load i8, i8* %153, align 4
  %155 = zext i8 %154 to i32
  %156 = load i8, i8* @YUV_OUTPUT_SELECT, align 1
  %157 = zext i8 %156 to i32
  %158 = or i32 %155, %157
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %7, align 1
  %160 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %161 = load i32, i32* @ADV7343_MODE_REG0, align 4
  %162 = load i8, i8* %7, align 1
  %163 = call i32 @adv7343_write(%struct.v4l2_subdev* %160, i32 %161, i8 zeroext %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %147
  br label %335

167:                                              ; preds = %147
  %168 = load i8, i8* %7, align 1
  %169 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %170 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %169, i32 0, i32 1
  store i8 %168, i8* %170, align 4
  %171 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %172 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %171, i32 0, i32 2
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* @SD_DAC_1_DI, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8, i8* @SD_DAC_2_DI, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %176, %178
  %180 = and i32 %174, %179
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %7, align 1
  %182 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %183 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %182, i32 0, i32 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = icmp ne %struct.TYPE_6__* %184, null
  br i1 %185, label %186, label %210

186:                                              ; preds = %167
  %187 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %188 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %187, i32 0, i32 4
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %210

196:                                              ; preds = %186
  %197 = load i8, i8* %7, align 1
  %198 = zext i8 %197 to i32
  %199 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %200 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %199, i32 0, i32 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 1
  %208 = or i32 %198, %207
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %7, align 1
  br label %241

210:                                              ; preds = %186, %167
  %211 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %212 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %211, i32 0, i32 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = icmp ne %struct.TYPE_6__* %213, null
  br i1 %214, label %215, label %240

215:                                              ; preds = %210
  %216 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %217 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %216, i32 0, i32 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %240, label %225

225:                                              ; preds = %215
  %226 = load i8, i8* %7, align 1
  %227 = zext i8 %226 to i32
  %228 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %229 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %228, i32 0, i32 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 1
  %237 = xor i32 %236, -1
  %238 = and i32 %227, %237
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %7, align 1
  br label %240

240:                                              ; preds = %225, %215, %210
  br label %241

241:                                              ; preds = %240, %196
  %242 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %243 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %242, i32 0, i32 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = icmp ne %struct.TYPE_6__* %244, null
  br i1 %245, label %246, label %270

246:                                              ; preds = %241
  %247 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %248 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %247, i32 0, i32 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %246
  %257 = load i8, i8* %7, align 1
  %258 = zext i8 %257 to i32
  %259 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %260 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %259, i32 0, i32 4
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 2
  %268 = or i32 %258, %267
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %7, align 1
  br label %301

270:                                              ; preds = %246, %241
  %271 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %272 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %271, i32 0, i32 4
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %272, align 8
  %274 = icmp ne %struct.TYPE_6__* %273, null
  br i1 %274, label %275, label %300

275:                                              ; preds = %270
  %276 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %277 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %276, i32 0, i32 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %300, label %285

285:                                              ; preds = %275
  %286 = load i8, i8* %7, align 1
  %287 = zext i8 %286 to i32
  %288 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %289 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %288, i32 0, i32 4
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = shl i32 %295, 2
  %297 = xor i32 %296, -1
  %298 = and i32 %287, %297
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %7, align 1
  br label %300

300:                                              ; preds = %285, %275, %270
  br label %301

301:                                              ; preds = %300, %256
  %302 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %303 = load i32, i32* @ADV7343_SD_MODE_REG2, align 4
  %304 = load i8, i8* %7, align 1
  %305 = call i32 @adv7343_write(%struct.v4l2_subdev* %302, i32 %303, i8 zeroext %304)
  store i32 %305, i32* %8, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  br label %335

309:                                              ; preds = %301
  %310 = load i8, i8* %7, align 1
  %311 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %312 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %311, i32 0, i32 2
  store i8 %310, i8* %312, align 1
  %313 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %314 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %313, i32 0, i32 3
  %315 = load i8, i8* %314, align 2
  %316 = zext i8 %315 to i32
  %317 = load i8, i8* @HD_RGB_INPUT_DI, align 1
  %318 = zext i8 %317 to i32
  %319 = load i8, i8* @HD_DAC_SWAP_DI, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %318, %320
  %322 = and i32 %316, %321
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %7, align 1
  %324 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %325 = load i32, i32* @ADV7343_HD_MODE_REG6, align 4
  %326 = load i8, i8* %7, align 1
  %327 = call i32 @adv7343_write(%struct.v4l2_subdev* %324, i32 %325, i8 zeroext %326)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %309
  br label %335

331:                                              ; preds = %309
  %332 = load i8, i8* %7, align 1
  %333 = load %struct.adv7343_state*, %struct.adv7343_state** %6, align 8
  %334 = getelementptr inbounds %struct.adv7343_state, %struct.adv7343_state* %333, i32 0, i32 3
  store i8 %332, i8* %334, align 2
  br label %335

335:                                              ; preds = %331, %330, %308, %166, %146
  %336 = load i32, i32* %8, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %340 = call i32 @v4l2_err(%struct.v4l2_subdev* %339, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %341

341:                                              ; preds = %338, %335
  %342 = load i32, i32* %8, align 4
  store i32 %342, i32* %3, align 4
  br label %343

343:                                              ; preds = %341, %14
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local %struct.adv7343_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64) #1

declare dso_local i32 @adv7343_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
