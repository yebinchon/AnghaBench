; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_tea575x.c_snd_tea575x_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.file = type { i32 }
%struct.snd_tea575x = type { i32, i64, i32, i32, i64, i64 }
%struct.v4l2_hw_freq_seek = type { i64, i64, i64, i64, i64 }

@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@bands = common dso_local global %struct.TYPE_3__* null, align 8
@BAND_FM = common dso_local global i32 0, align 4
@BAND_FM_JAPAN = common dso_local global i32 0, align 4
@BAND_AM = common dso_local global i32 0, align 4
@TEA575X_BIT_FREQ_MASK = common dso_local global i32 0, align 4
@TEA575X_BIT_SEARCH = common dso_local global i32 0, align 4
@TEA575X_BIT_UPDOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tea575x_s_hw_freq_seek(%struct.file* %0, %struct.snd_tea575x* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_tea575x*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.snd_tea575x* %1, %struct.snd_tea575x** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %12 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %13 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOTTY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %303

19:                                               ; preds = %3
  %20 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %303

32:                                               ; preds = %24
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EWOULDBLOCK, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %303

42:                                               ; preds = %32
  %43 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %152

52:                                               ; preds = %47, %42
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %110, %52
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %113

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @BAND_FM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %64 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @BAND_FM_JAPAN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %73 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @BAND_AM, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %82 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %71, %62
  br label %110

86:                                               ; preds = %80, %76
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %86
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %113

109:                                              ; preds = %97, %86
  br label %110

110:                                              ; preds = %109, %85
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %53

113:                                              ; preds = %108, %53
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %116 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %115)
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %303

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %124 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %130 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %132 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bands, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @clamp(i64 %133, i64 %139, i64 %145)
  %147 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %148 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %150 = call i32 @snd_tea575x_set_freq(%struct.snd_tea575x* %149)
  br label %151

151:                                              ; preds = %127, %121
  br label %152

152:                                              ; preds = %151, %47
  %153 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %154 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @BAND_AM, align 4
  %157 = icmp eq i32 %155, %156
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 5, i32 50
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @TEA575X_BIT_FREQ_MASK, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %163 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @TEA575X_BIT_SEARCH, align 4
  %167 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %168 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %172 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %152
  %176 = load i32, i32* @TEA575X_BIT_UPDOWN, align 4
  %177 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %178 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %188

181:                                              ; preds = %152
  %182 = load i32, i32* @TEA575X_BIT_UPDOWN, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %185 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %181, %175
  %189 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %190 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %191 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @snd_tea575x_write(%struct.snd_tea575x* %189, i32 %192)
  %194 = load i64, i64* @jiffies, align 8
  %195 = call i64 @msecs_to_jiffies(i32 10000)
  %196 = add i64 %194, %195
  store i64 %196, i64* %8, align 8
  br label %197

197:                                              ; preds = %291, %275, %188
  %198 = load i64, i64* @jiffies, align 8
  %199 = load i64, i64* %8, align 8
  %200 = call i64 @time_after(i64 %198, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %292

203:                                              ; preds = %197
  %204 = call i64 @msecs_to_jiffies(i32 10)
  %205 = call i64 @schedule_timeout_interruptible(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32, i32* @TEA575X_BIT_SEARCH, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %211 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %215 = call i32 @snd_tea575x_set_freq(%struct.snd_tea575x* %214)
  %216 = load i32, i32* @ERESTARTSYS, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %303

218:                                              ; preds = %203
  %219 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %220 = call i32 @snd_tea575x_read(%struct.snd_tea575x* %219)
  %221 = load i32, i32* @TEA575X_BIT_SEARCH, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %291, label %224

224:                                              ; preds = %218
  store i32 0, i32* %9, align 4
  br label %225

225:                                              ; preds = %236, %224
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %226, 100
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = call i32 @msleep(i32 10)
  %230 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %231 = call i64 @snd_tea575x_get_freq(%struct.snd_tea575x* %230)
  store i64 %231, i64* %11, align 8
  %232 = load i64, i64* %11, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %239

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %225

239:                                              ; preds = %234, %225
  %240 = load i64, i64* %11, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  br label %292

243:                                              ; preds = %239
  %244 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %245 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* %11, align 8
  %248 = sub nsw i64 %246, %247
  %249 = call i32 @abs(i64 %248)
  %250 = load i32, i32* %10, align 4
  %251 = mul nsw i32 16, %250
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %275, label %253

253:                                              ; preds = %243
  %254 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %255 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i64, i64* %11, align 8
  %260 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %261 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp slt i64 %259, %262
  br i1 %263, label %275, label %264

264:                                              ; preds = %258, %253
  %265 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %266 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %281, label %269

269:                                              ; preds = %264
  %270 = load i64, i64* %11, align 8
  %271 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %272 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = icmp sgt i64 %270, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %269, %258, %243
  %276 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %277 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %278 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @snd_tea575x_write(%struct.snd_tea575x* %276, i32 %279)
  br label %197

281:                                              ; preds = %269, %264
  %282 = load i64, i64* %11, align 8
  %283 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %284 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %283, i32 0, i32 1
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* @TEA575X_BIT_SEARCH, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %288 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 8
  store i32 0, i32* %4, align 4
  br label %303

291:                                              ; preds = %218
  br label %197

292:                                              ; preds = %242, %202
  %293 = load i32, i32* @TEA575X_BIT_SEARCH, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %296 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = and i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load %struct.snd_tea575x*, %struct.snd_tea575x** %6, align 8
  %300 = call i32 @snd_tea575x_set_freq(%struct.snd_tea575x* %299)
  %301 = load i32, i32* @ENODATA, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %292, %281, %207, %118, %39, %29, %16
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i32 @snd_tea575x_set_freq(%struct.snd_tea575x*) #1

declare dso_local i32 @snd_tea575x_write(%struct.snd_tea575x*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @schedule_timeout_interruptible(i64) #1

declare dso_local i32 @snd_tea575x_read(%struct.snd_tea575x*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @snd_tea575x_get_freq(%struct.snd_tea575x*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
