; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i64, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }
%struct.cx25840_state = type { i32, i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"chip reported picture size (%u x %u) is far too small\0A\00", align 1
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@cx25840_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"decoder set size %u x %u with scale %x x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @cx25840_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.cx25840_state*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %18 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %19, %struct.v4l2_mbus_framefmt** %8, align 8
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %21 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %20)
  store %struct.cx25840_state* %21, %struct.cx25840_state** %9, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %10, align 8
  %24 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %25 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_STD_525_60, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MEDIA_BUS_FMT_FIXED, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %283

45:                                               ; preds = %36
  %46 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %53 = call i64 @is_cx23888(%struct.cx25840_state* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %45
  %56 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %57 = call i32 @cx25840_read(%struct.i2c_client* %56, i32 1066)
  %58 = and i32 %57, 63
  %59 = shl i32 %58, 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %61 = call i32 @cx25840_read(%struct.i2c_client* %60, i32 1065)
  %62 = and i32 %61, 240
  %63 = ashr i32 %62, 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %77

66:                                               ; preds = %45
  %67 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %68 = call i32 @cx25840_read(%struct.i2c_client* %67, i32 1142)
  %69 = and i32 %68, 63
  %70 = shl i32 %69, 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %72 = call i32 @cx25840_read(%struct.i2c_client* %71, i32 1141)
  %73 = and i32 %72, 240
  %74 = ashr i32 %73, 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %66, %55
  %78 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %79 = call i64 @is_cx23888(%struct.cx25840_state* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %83 = call i32 @cx25840_read(%struct.i2c_client* %82, i32 1062)
  %84 = and i32 %83, 63
  %85 = shl i32 %84, 4
  store i32 %85, i32* %14, align 4
  %86 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %87 = call i32 @cx25840_read(%struct.i2c_client* %86, i32 1061)
  %88 = and i32 %87, 240
  %89 = ashr i32 %88, 4
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %103

92:                                               ; preds = %77
  %93 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %94 = call i32 @cx25840_read(%struct.i2c_client* %93, i32 1138)
  %95 = and i32 %94, 63
  %96 = shl i32 %95, 4
  store i32 %96, i32* %14, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %98 = call i32 @cx25840_read(%struct.i2c_client* %97, i32 1137)
  %99 = and i32 %98, 240
  %100 = ashr i32 %99, 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %92, %81
  %104 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %105 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 4, i32 7
  store i32 %112, i32* %15, align 4
  %113 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %114 = call i64 @is_cx23888(%struct.cx25840_state* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %119, %116, %108
  br label %124

123:                                              ; preds = %103
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %123, %122
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127, %124
  %132 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @v4l_err(%struct.i2c_client* %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  br label %283

138:                                              ; preds = %127
  %139 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %140 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 15
  %144 = sdiv i32 %143, 16
  %145 = load i32, i32* %14, align 4
  %146 = call i8* @clamp(i32 %141, i32 %144, i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %149 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = mul nsw i32 %150, 8
  %152 = load i32, i32* %13, align 4
  %153 = icmp sge i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %138
  %155 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %156 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %158, %159
  %161 = call i8* @clamp(i32 %157, i32 1, i32 %160)
  %162 = ptrtoint i8* %161 to i32
  %163 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %164 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  br label %182

165:                                              ; preds = %138
  %166 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %167 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %15, align 4
  %171 = mul nsw i32 %170, 8
  %172 = sub nsw i32 %169, %171
  %173 = add nsw i32 %172, 7
  %174 = sdiv i32 %173, 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %175, %176
  %178 = call i8* @clamp(i32 %168, i32 %174, i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %181 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %165, %154
  %183 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %184 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %283

189:                                              ; preds = %182
  %190 = load i32, i32* %14, align 4
  %191 = mul nsw i32 %190, 1048576
  %192 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %193 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = sdiv i32 %191, %194
  %196 = sub nsw i32 %195, 1048576
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = mul nsw i32 %197, 512
  %199 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %200 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %201, %202
  %204 = sdiv i32 %198, %203
  %205 = sub nsw i32 %204, 512
  %206 = sub nsw i32 65536, %205
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = and i32 %207, 8191
  store i32 %208, i32* %12, align 4
  %209 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %210 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp sge i32 %211, 385
  br i1 %212, label %213, label %214

213:                                              ; preds = %189
  store i32 0, i32* %16, align 4
  br label %229

214:                                              ; preds = %189
  %215 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %216 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp sgt i32 %217, 192
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 1, i32* %16, align 4
  br label %228

220:                                              ; preds = %214
  %221 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %222 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = icmp sgt i32 %223, 96
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 2, i32* %16, align 4
  br label %227

226:                                              ; preds = %220
  store i32 3, i32* %16, align 4
  br label %227

227:                                              ; preds = %226, %225
  br label %228

228:                                              ; preds = %227, %219
  br label %229

229:                                              ; preds = %228, %213
  %230 = load i32, i32* @cx25840_debug, align 4
  %231 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %232 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %233 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %236 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @v4l_dbg(i32 1, i32 %230, %struct.i2c_client* %231, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %234, i32 %237, i32 %238, i32 %239)
  %241 = load %struct.cx25840_state*, %struct.cx25840_state** %9, align 8
  %242 = call i64 @is_cx23888(%struct.cx25840_state* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %229
  %245 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %246 = load i32, i32* %11, align 4
  %247 = or i32 %246, 16777216
  %248 = call i32 @cx25840_write4(%struct.i2c_client* %245, i32 1076, i32 %247)
  %249 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %250 = load i32, i32* %12, align 4
  %251 = or i32 %250, 524288
  %252 = load i32, i32* %16, align 4
  %253 = shl i32 %252, 16
  %254 = or i32 %251, %253
  %255 = call i32 @cx25840_write4(%struct.i2c_client* %249, i32 1080, i32 %254)
  br label %282

256:                                              ; preds = %229
  %257 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %258 = load i32, i32* %11, align 4
  %259 = and i32 %258, 255
  %260 = call i32 @cx25840_write(%struct.i2c_client* %257, i32 1048, i32 %259)
  %261 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %262 = load i32, i32* %11, align 4
  %263 = ashr i32 %262, 8
  %264 = and i32 %263, 255
  %265 = call i32 @cx25840_write(%struct.i2c_client* %261, i32 1049, i32 %264)
  %266 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %267 = load i32, i32* %11, align 4
  %268 = ashr i32 %267, 16
  %269 = call i32 @cx25840_write(%struct.i2c_client* %266, i32 1050, i32 %268)
  %270 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %271 = load i32, i32* %12, align 4
  %272 = and i32 %271, 255
  %273 = call i32 @cx25840_write(%struct.i2c_client* %270, i32 1052, i32 %272)
  %274 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %275 = load i32, i32* %12, align 4
  %276 = ashr i32 %275, 8
  %277 = call i32 @cx25840_write(%struct.i2c_client* %274, i32 1053, i32 %276)
  %278 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %279 = load i32, i32* %16, align 4
  %280 = or i32 8, %279
  %281 = call i32 @cx25840_write(%struct.i2c_client* %278, i32 1054, i32 %280)
  br label %282

282:                                              ; preds = %256, %244
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %282, %188, %131, %42
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx23888(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
