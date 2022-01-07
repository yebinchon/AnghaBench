; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_sensor = type { i32*, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@SMIAPP_REG_U16_CSI_DATA_FORMAT = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_X_ADDR_START = common dso_local global i32 0, align 4
@SMIAPP_PA_PAD_SRC = common dso_local global i64 0, align 8
@SMIAPP_REG_U16_Y_ADDR_START = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_X_ADDR_END = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_Y_ADDR_END = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_DIGITAL_CROP_X_OFFSET = common dso_local global i32 0, align 4
@SMIAPP_PAD_SINK = common dso_local global i64 0, align 8
@SMIAPP_REG_U16_DIGITAL_CROP_Y_OFFSET = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_WIDTH = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_HEIGHT = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_SCALING_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_SCALING_CAPABILITY_NONE = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_SCALING_MODE = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_SCALE_M = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_X_OUTPUT_SIZE = common dso_local global i32 0, align 4
@SMIAPP_PAD_SRC = common dso_local global i64 0, align 8
@SMIAPP_REG_U16_Y_OUTPUT_SIZE = common dso_local global i32 0, align 4
@SMIAPP_LIMIT_FLASH_MODE_CAPABILITY = common dso_local global i64 0, align 8
@SMIAPP_FLASH_MODE_CAPABILITY_SINGLE_STROBE = common dso_local global i32 0, align 4
@SMIAPP_FLASH_MODE_CAPABILITY_MULTIPLE_STROBE = common dso_local global i32 0, align 4
@pre_streamon = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pre_streamon quirks failed\0A\00", align 1
@SMIAPP_REG_U8_MODE_SELECT = common dso_local global i32 0, align 4
@SMIAPP_MODE_SELECT_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_start_streaming(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %5 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %6 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %5, i32 0, i32 5
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %11 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %10, i32 0, i32 3
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %14 = load i32, i32* @SMIAPP_REG_U16_CSI_DATA_FORMAT, align 4
  %15 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %16 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %15, i32 0, i32 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %22 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %21, i32 0, i32 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  %27 = call i32 @smiapp_write(%struct.smiapp_sensor* %13, i32 %14, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %309

31:                                               ; preds = %1
  %32 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %33 = call i32 @smiapp_pll_configure(%struct.smiapp_sensor* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %309

37:                                               ; preds = %31
  %38 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %39 = load i32, i32* @SMIAPP_REG_U16_X_ADDR_START, align 4
  %40 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %41 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %40, i32 0, i32 7
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @smiapp_write(%struct.smiapp_sensor* %38, i32 %39, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %309

53:                                               ; preds = %37
  %54 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %55 = load i32, i32* @SMIAPP_REG_U16_Y_ADDR_START, align 4
  %56 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %57 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %56, i32 0, i32 7
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @smiapp_write(%struct.smiapp_sensor* %54, i32 %55, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %309

69:                                               ; preds = %53
  %70 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %71 = load i32, i32* @SMIAPP_REG_U16_X_ADDR_END, align 4
  %72 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %73 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %72, i32 0, i32 7
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %82 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %81, i32 0, i32 7
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %80, %89
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @smiapp_write(%struct.smiapp_sensor* %70, i32 %71, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %69
  br label %309

96:                                               ; preds = %69
  %97 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %98 = load i32, i32* @SMIAPP_REG_U16_Y_ADDR_END, align 4
  %99 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %100 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %99, i32 0, i32 7
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %109 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %108, i32 0, i32 7
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i64, i64* @SMIAPP_PA_PAD_SRC, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %107, %116
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @smiapp_write(%struct.smiapp_sensor* %97, i32 %98, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %96
  br label %309

123:                                              ; preds = %96
  %124 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %125 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @SMIAPP_LIMIT_DIGITAL_CROP_CAPABILITY, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @SMIAPP_DIGITAL_CROP_CAPABILITY_INPUT_CROP, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %197

132:                                              ; preds = %123
  %133 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %134 = load i32, i32* @SMIAPP_REG_U16_DIGITAL_CROP_X_OFFSET, align 4
  %135 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %136 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %135, i32 0, i32 6
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @smiapp_write(%struct.smiapp_sensor* %133, i32 %134, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %309

148:                                              ; preds = %132
  %149 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %150 = load i32, i32* @SMIAPP_REG_U16_DIGITAL_CROP_Y_OFFSET, align 4
  %151 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %152 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %151, i32 0, i32 6
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @smiapp_write(%struct.smiapp_sensor* %149, i32 %150, i32 %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %309

164:                                              ; preds = %148
  %165 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %166 = load i32, i32* @SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_WIDTH, align 4
  %167 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %168 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %167, i32 0, i32 6
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  %172 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @smiapp_write(%struct.smiapp_sensor* %165, i32 %166, i32 %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %164
  br label %309

180:                                              ; preds = %164
  %181 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %182 = load i32, i32* @SMIAPP_REG_U16_DIGITAL_CROP_IMAGE_HEIGHT, align 4
  %183 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %184 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %183, i32 0, i32 6
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = load i64, i64* @SMIAPP_PAD_SINK, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @smiapp_write(%struct.smiapp_sensor* %181, i32 %182, i32 %191)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %180
  br label %309

196:                                              ; preds = %180
  br label %197

197:                                              ; preds = %196, %123
  %198 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %199 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @SMIAPP_LIMIT_SCALING_CAPABILITY, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SMIAPP_SCALING_CAPABILITY_NONE, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %227

206:                                              ; preds = %197
  %207 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %208 = load i32, i32* @SMIAPP_REG_U16_SCALING_MODE, align 4
  %209 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %210 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @smiapp_write(%struct.smiapp_sensor* %207, i32 %208, i32 %211)
  store i32 %212, i32* %4, align 4
  %213 = load i32, i32* %4, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %309

216:                                              ; preds = %206
  %217 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %218 = load i32, i32* @SMIAPP_REG_U16_SCALE_M, align 4
  %219 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %220 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @smiapp_write(%struct.smiapp_sensor* %217, i32 %218, i32 %221)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %216
  br label %309

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226, %197
  %228 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %229 = load i32, i32* @SMIAPP_REG_U16_X_OUTPUT_SIZE, align 4
  %230 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %231 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %230, i32 0, i32 5
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = load i64, i64* @SMIAPP_PAD_SRC, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @smiapp_write(%struct.smiapp_sensor* %228, i32 %229, i32 %238)
  store i32 %239, i32* %4, align 4
  %240 = load i32, i32* %4, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %227
  br label %309

243:                                              ; preds = %227
  %244 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %245 = load i32, i32* @SMIAPP_REG_U16_Y_OUTPUT_SIZE, align 4
  %246 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %247 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %246, i32 0, i32 5
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = load i64, i64* @SMIAPP_PAD_SRC, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @smiapp_write(%struct.smiapp_sensor* %244, i32 %245, i32 %254)
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* %4, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %243
  br label %309

259:                                              ; preds = %243
  %260 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %261 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @SMIAPP_LIMIT_FLASH_MODE_CAPABILITY, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @SMIAPP_FLASH_MODE_CAPABILITY_SINGLE_STROBE, align 4
  %267 = load i32, i32* @SMIAPP_FLASH_MODE_CAPABILITY_MULTIPLE_STROBE, align 4
  %268 = or i32 %266, %267
  %269 = and i32 %265, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %294

271:                                              ; preds = %259
  %272 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %273 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %272, i32 0, i32 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = icmp ne %struct.TYPE_17__* %276, null
  br i1 %277, label %278, label %294

278:                                              ; preds = %271
  %279 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %280 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %279, i32 0, i32 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %278
  %288 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %289 = call i32 @smiapp_setup_flash_strobe(%struct.smiapp_sensor* %288)
  store i32 %289, i32* %4, align 4
  %290 = load i32, i32* %4, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %309

293:                                              ; preds = %287
  br label %294

294:                                              ; preds = %293, %278, %271, %259
  %295 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %296 = load i32, i32* @pre_streamon, align 4
  %297 = call i32 @smiapp_call_quirk(%struct.smiapp_sensor* %295, i32 %296)
  store i32 %297, i32* %4, align 4
  %298 = load i32, i32* %4, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %294
  %301 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %302 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %301, i32 0, i32 0
  %303 = call i32 @dev_err(i32* %302, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %309

304:                                              ; preds = %294
  %305 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %306 = load i32, i32* @SMIAPP_REG_U8_MODE_SELECT, align 4
  %307 = load i32, i32* @SMIAPP_MODE_SELECT_STREAMING, align 4
  %308 = call i32 @smiapp_write(%struct.smiapp_sensor* %305, i32 %306, i32 %307)
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %304, %300, %292, %258, %242, %225, %215, %195, %179, %163, %147, %122, %95, %68, %52, %36, %30
  %310 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %311 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %310, i32 0, i32 3
  %312 = call i32 @mutex_unlock(i32* %311)
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smiapp_write(%struct.smiapp_sensor*, i32, i32) #1

declare dso_local i32 @smiapp_pll_configure(%struct.smiapp_sensor*) #1

declare dso_local i32 @smiapp_setup_flash_strobe(%struct.smiapp_sensor*) #1

declare dso_local i32 @smiapp_call_quirk(%struct.smiapp_sensor*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
