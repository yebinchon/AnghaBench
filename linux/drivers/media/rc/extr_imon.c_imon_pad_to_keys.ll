; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_pad_to_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon.c_imon_pad_to_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imon_context = type { i32, i64, i32, i8* }

@KEY_RESERVED = common dso_local global i32 0, align 4
@pad_thresh = common dso_local global i32 0, align 4
@RC_PROTO_BIT_IMON = common dso_local global i64 0, align 8
@pad_stabilize = common dso_local global i64 0, align 8
@KEY_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imon_context*, i8*)* @imon_pad_to_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imon_pad_to_keys(%struct.imon_context* %0, i8* %1) #0 {
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %12 = load i32, i32* @KEY_RESERVED, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %14 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 65500
  br i1 %16, label %17, label %140

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 6
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  store i8 0, i8* %23, align 1
  store i32 500, i32* %8, align 4
  %24 = load i32, i32* @pad_thresh, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @pad_thresh, align 4
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 28, %28 ]
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %6, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %7, align 1
  %37 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %38 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RC_PROTO_BIT_IMON, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %98

42:                                               ; preds = %29
  %43 = load i64, i64* @pad_stabilize, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %7, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %55, %51
  %60 = load i8, i8* %6, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @stabilize(i32 %61, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %59
  %70 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %71 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %70, i32 0, i32 2
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i8*, i8** @KEY_UNKNOWN, align 8
  %75 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %76 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %78 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %77, i32 0, i32 2
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %343

81:                                               ; preds = %59
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 255
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8 %84, i8* %86, align 1
  %87 = load i32, i32* %5, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 255
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 %90, i8* %92, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @be32_to_cpu(i32 %95)
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %81, %55, %45
  br label %139

98:                                               ; preds = %42, %29
  %99 = load i8, i8* %7, align 1
  %100 = call i64 @abs(i8 signext %99)
  %101 = load i8, i8* %6, align 1
  %102 = call i64 @abs(i8 signext %101)
  %103 = icmp sgt i64 %100, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %98
  %105 = load i8, i8* %7, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 127, i32 128
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %110, i8* %112, align 1
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  store i8 0, i8* %114, align 1
  %115 = load i8, i8* %7, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  store i32 16809728, i32* %10, align 4
  br label %120

119:                                              ; preds = %104
  store i32 16809984, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %118
  br label %138

121:                                              ; preds = %98
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8 0, i8* %123, align 1
  %124 = load i8, i8* %6, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sgt i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 127, i32 128
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8 %129, i8* %131, align 1
  %132 = load i8, i8* %6, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %121
  store i32 16777343, i32* %10, align 4
  br label %137

136:                                              ; preds = %121
  store i32 16777344, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138, %97
  br label %326

140:                                              ; preds = %2
  store i32 10, i32* %8, align 4
  %141 = load i32, i32* @pad_thresh, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @pad_thresh, align 4
  br label %146

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 15, %145 ]
  store i32 %147, i32* %9, align 4
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 8
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 16
  %158 = ashr i32 %157, 2
  %159 = or i32 %152, %158
  %160 = load i8*, i8** %4, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = and i32 %163, 32
  %165 = ashr i32 %164, 4
  %166 = or i32 %159, %165
  %167 = load i8*, i8** %4, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 64
  %172 = ashr i32 %171, 6
  %173 = or i32 %166, %172
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %6, align 1
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = and i32 %178, 2
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %146
  %182 = load i8, i8* %6, align 1
  %183 = sext i8 %182 to i32
  %184 = or i32 %183, -16
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %6, align 1
  br label %186

186:                                              ; preds = %181, %146
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = and i32 %190, 8
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = and i32 %195, 16
  %197 = ashr i32 %196, 2
  %198 = or i32 %191, %197
  %199 = load i8*, i8** %4, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 2
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = and i32 %202, 32
  %204 = ashr i32 %203, 4
  %205 = or i32 %198, %204
  %206 = load i8*, i8** %4, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 2
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = and i32 %209, 64
  %211 = ashr i32 %210, 6
  %212 = or i32 %205, %211
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %7, align 1
  %214 = load i8*, i8** %4, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 0
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %217, 1
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %186
  %221 = load i8, i8* %7, align 1
  %222 = sext i8 %221 to i32
  %223 = or i32 %222, -16
  %224 = trunc i32 %223 to i8
  store i8 %224, i8* %7, align 1
  br label %225

225:                                              ; preds = %220, %186
  %226 = load i8*, i8** %4, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  store i8 1, i8* %227, align 1
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 7
  store i8 0, i8* %229, align 1
  %230 = load i8*, i8** %4, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 6
  store i8 0, i8* %231, align 1
  %232 = load i8*, i8** %4, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 5
  store i8 0, i8* %233, align 1
  %234 = load i8*, i8** %4, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 4
  store i8 0, i8* %235, align 1
  %236 = load i8*, i8** %4, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 1
  store i8 0, i8* %237, align 1
  %238 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %239 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @RC_PROTO_BIT_IMON, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %284

243:                                              ; preds = %225
  %244 = load i64, i64* @pad_stabilize, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %284

246:                                              ; preds = %243
  %247 = load i8, i8* %6, align 1
  %248 = sext i8 %247 to i32
  %249 = load i8, i8* %7, align 1
  %250 = sext i8 %249 to i32
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @stabilize(i32 %248, i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %246
  %257 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %258 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %257, i32 0, i32 2
  %259 = load i64, i64* %11, align 8
  %260 = call i32 @spin_lock_irqsave(i32* %258, i64 %259)
  %261 = load i8*, i8** @KEY_UNKNOWN, align 8
  %262 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %263 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %262, i32 0, i32 3
  store i8* %261, i8** %263, align 8
  %264 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %265 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %264, i32 0, i32 2
  %266 = load i64, i64* %11, align 8
  %267 = call i32 @spin_unlock_irqrestore(i32* %265, i64 %266)
  br label %343

268:                                              ; preds = %246
  %269 = load i32, i32* %5, align 4
  %270 = and i32 %269, 255
  %271 = trunc i32 %270 to i8
  %272 = load i8*, i8** %4, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  store i8 %271, i8* %273, align 1
  %274 = load i32, i32* %5, align 4
  %275 = ashr i32 %274, 8
  %276 = and i32 %275, 255
  %277 = trunc i32 %276 to i8
  %278 = load i8*, i8** %4, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 3
  store i8 %277, i8* %279, align 1
  %280 = load i8*, i8** %4, align 8
  %281 = bitcast i8* %280 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @be32_to_cpu(i32 %282)
  store i32 %283, i32* %10, align 4
  br label %325

284:                                              ; preds = %243, %225
  %285 = load i8, i8* %7, align 1
  %286 = call i64 @abs(i8 signext %285)
  %287 = load i8, i8* %6, align 1
  %288 = call i64 @abs(i8 signext %287)
  %289 = icmp sgt i64 %286, %288
  br i1 %289, label %290, label %307

290:                                              ; preds = %284
  %291 = load i8, i8* %7, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp sgt i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 127, i32 128
  %296 = trunc i32 %295 to i8
  %297 = load i8*, i8** %4, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 2
  store i8 %296, i8* %298, align 1
  %299 = load i8*, i8** %4, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  store i8 0, i8* %300, align 1
  %301 = load i8, i8* %7, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %290
  store i32 16809728, i32* %10, align 4
  br label %306

305:                                              ; preds = %290
  store i32 16809984, i32* %10, align 4
  br label %306

306:                                              ; preds = %305, %304
  br label %324

307:                                              ; preds = %284
  %308 = load i8*, i8** %4, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 2
  store i8 0, i8* %309, align 1
  %310 = load i8, i8* %6, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp sgt i32 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 127, i32 128
  %315 = trunc i32 %314 to i8
  %316 = load i8*, i8** %4, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 3
  store i8 %315, i8* %317, align 1
  %318 = load i8, i8* %6, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %307
  store i32 16777343, i32* %10, align 4
  br label %323

322:                                              ; preds = %307
  store i32 16777344, i32* %10, align 4
  br label %323

323:                                              ; preds = %322, %321
  br label %324

324:                                              ; preds = %323, %306
  br label %325

325:                                              ; preds = %324, %268
  br label %326

326:                                              ; preds = %325, %139
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %343

329:                                              ; preds = %326
  %330 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %331 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %330, i32 0, i32 2
  %332 = load i64, i64* %11, align 8
  %333 = call i32 @spin_lock_irqsave(i32* %331, i64 %332)
  %334 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %335 = load i32, i32* %10, align 4
  %336 = call i8* @imon_remote_key_lookup(%struct.imon_context* %334, i32 %335)
  %337 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %338 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %337, i32 0, i32 3
  store i8* %336, i8** %338, align 8
  %339 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %340 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %339, i32 0, i32 2
  %341 = load i64, i64* %11, align 8
  %342 = call i32 @spin_unlock_irqrestore(i32* %340, i64 %341)
  br label %343

343:                                              ; preds = %69, %256, %329, %326
  ret void
}

declare dso_local i32 @stabilize(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @abs(i8 signext) #1

declare dso_local i8* @imon_remote_key_lookup(%struct.imon_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
