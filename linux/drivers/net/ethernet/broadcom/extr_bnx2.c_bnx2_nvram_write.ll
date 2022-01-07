; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2_NV_BUFFERED = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@BNX2_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32*, i32)* @bnx2_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_nvram_write(%struct.bnx2* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 3
  store i32 %33, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %4
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, -4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 4, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %48 = call i32 @bnx2_nvram_read(%struct.bnx2* %45, i32 %46, i32* %47, i32 4)
  store i32 %48, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %18, align 4
  store i32 %51, i32* %5, align 4
  br label %396

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %58, 3
  %60 = sub nsw i32 4, %59
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %67, 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %70 = call i32 @bnx2_nvram_read(%struct.bnx2* %64, i32 %68, i32* %69, i32 4)
  store i32 %70, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %5, align 4
  br label %396

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i32, i32* %19, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32* @kmalloc(i32 %82, i32 %83)
  store i32* %84, i32** %16, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %396

90:                                               ; preds = %81
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %96 = call i32 @memcpy(i32* %94, i32* %95, i32 4)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = getelementptr inbounds i32, i32* %104, i64 -4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %107 = call i32 @memcpy(i32* %105, i32* %106, i32 4)
  br label %108

108:                                              ; preds = %100, %97
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @memcpy(i32* %112, i32* %113, i32 %114)
  %116 = load i32*, i32** %16, align 8
  store i32* %116, i32** %13, align 8
  br label %117

117:                                              ; preds = %108, %78
  %118 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %119 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BNX2_NV_BUFFERED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i32* @kmalloc(i32 264, i32 %127)
  store i32* %128, i32** %17, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %18, align 4
  br label %390

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %117
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %377, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %141, 0
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi i1 [ false, %136 ], [ %142, %140 ]
  br i1 %144, label %145, label %389

145:                                              ; preds = %143
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %151 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %150, i32 0, i32 0
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = srem i32 %149, %154
  %156 = load i32, i32* %21, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %160 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %159, i32 0, i32 0
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %145
  %168 = load i32, i32* %11, align 4
  br label %171

169:                                              ; preds = %145
  %170 = load i32, i32* %21, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  br label %184

182:                                              ; preds = %171
  %183 = load i32, i32* %22, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi i32 [ %181, %178 ], [ %183, %182 ]
  store i32 %185, i32* %24, align 4
  %186 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %187 = call i32 @bnx2_acquire_nvram_lock(%struct.bnx2* %186)
  store i32 %187, i32* %18, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %390

190:                                              ; preds = %184
  %191 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %192 = call i32 @bnx2_enable_nvram_access(%struct.bnx2* %191)
  %193 = load i32, i32* @BNX2_NVM_COMMAND_FIRST, align 4
  store i32 %193, i32* %26, align 4
  %194 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %195 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @BNX2_NV_BUFFERED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %243, label %202

202:                                              ; preds = %190
  store i32 0, i32* %28, align 4
  br label %203

203:                                              ; preds = %239, %202
  %204 = load i32, i32* %28, align 4
  %205 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %206 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %204, %209
  br i1 %210, label %211, label %242

211:                                              ; preds = %203
  %212 = load i32, i32* %28, align 4
  %213 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %214 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %213, i32 0, i32 0
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = sub nsw i32 %217, 4
  %219 = icmp eq i32 %212, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %211
  %221 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  %222 = load i32, i32* %26, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %26, align 4
  br label %224

224:                                              ; preds = %220, %211
  %225 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %28, align 4
  %228 = add nsw i32 %226, %227
  %229 = load i32*, i32** %17, align 8
  %230 = load i32, i32* %28, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %26, align 4
  %234 = call i32 @bnx2_nvram_read_dword(%struct.bnx2* %225, i32 %228, i32* %232, i32 %233)
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %224
  br label %390

238:                                              ; preds = %224
  store i32 0, i32* %26, align 4
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %28, align 4
  %241 = add nsw i32 %240, 4
  store i32 %241, i32* %28, align 4
  br label %203

242:                                              ; preds = %203
  br label %243

243:                                              ; preds = %242, %190
  %244 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %245 = call i32 @bnx2_enable_nvram_write(%struct.bnx2* %244)
  store i32 %245, i32* %18, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %390

248:                                              ; preds = %243
  store i32 0, i32* %27, align 4
  %249 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %250 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %249, i32 0, i32 0
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @BNX2_NV_BUFFERED, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %290, label %257

257:                                              ; preds = %248
  %258 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %259 = load i32, i32* %21, align 4
  %260 = call i32 @bnx2_nvram_erase_page(%struct.bnx2* %258, i32 %259)
  store i32 %260, i32* %18, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  br label %390

263:                                              ; preds = %257
  %264 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %265 = call i32 @bnx2_enable_nvram_write(%struct.bnx2* %264)
  %266 = load i32, i32* %21, align 4
  store i32 %266, i32* %25, align 4
  br label %267

267:                                              ; preds = %284, %263
  %268 = load i32, i32* %25, align 4
  %269 = load i32, i32* %23, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %289

271:                                              ; preds = %267
  %272 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %273 = load i32, i32* %25, align 4
  %274 = load i32*, i32** %17, align 8
  %275 = load i32, i32* %27, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %26, align 4
  %279 = call i32 @bnx2_nvram_write_dword(%struct.bnx2* %272, i32 %273, i32* %277, i32 %278)
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %271
  br label %390

283:                                              ; preds = %271
  store i32 0, i32* %26, align 4
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %25, align 4
  %286 = add nsw i32 %285, 4
  store i32 %286, i32* %25, align 4
  %287 = load i32, i32* %27, align 4
  %288 = add nsw i32 %287, 4
  store i32 %288, i32* %27, align 4
  br label %267

289:                                              ; preds = %267
  br label %290

290:                                              ; preds = %289, %248
  %291 = load i32, i32* %23, align 4
  store i32 %291, i32* %25, align 4
  br label %292

292:                                              ; preds = %331, %290
  %293 = load i32, i32* %25, align 4
  %294 = load i32, i32* %24, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %336

296:                                              ; preds = %292
  %297 = load i32, i32* %25, align 4
  %298 = load i32, i32* %22, align 4
  %299 = sub nsw i32 %298, 4
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %315, label %301

301:                                              ; preds = %296
  %302 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %303 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %302, i32 0, i32 0
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @BNX2_NV_BUFFERED, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %301
  %311 = load i32, i32* %25, align 4
  %312 = load i32, i32* %24, align 4
  %313 = sub nsw i32 %312, 4
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %310, %296
  %316 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  %317 = load i32, i32* %26, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %26, align 4
  br label %319

319:                                              ; preds = %315, %310, %301
  %320 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %321 = load i32, i32* %25, align 4
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %26, align 4
  %324 = call i32 @bnx2_nvram_write_dword(%struct.bnx2* %320, i32 %321, i32* %322, i32 %323)
  store i32 %324, i32* %18, align 4
  %325 = load i32, i32* %18, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %390

328:                                              ; preds = %319
  store i32 0, i32* %26, align 4
  %329 = load i32*, i32** %13, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 4
  store i32* %330, i32** %13, align 8
  br label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %25, align 4
  %333 = add nsw i32 %332, 4
  store i32 %333, i32* %25, align 4
  %334 = load i32, i32* %27, align 4
  %335 = add nsw i32 %334, 4
  store i32 %335, i32* %27, align 4
  br label %292

336:                                              ; preds = %292
  %337 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %338 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %337, i32 0, i32 0
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @BNX2_NV_BUFFERED, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %377, label %345

345:                                              ; preds = %336
  %346 = load i32, i32* %24, align 4
  store i32 %346, i32* %25, align 4
  br label %347

347:                                              ; preds = %371, %345
  %348 = load i32, i32* %25, align 4
  %349 = load i32, i32* %22, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %376

351:                                              ; preds = %347
  %352 = load i32, i32* %25, align 4
  %353 = load i32, i32* %22, align 4
  %354 = sub nsw i32 %353, 4
  %355 = icmp eq i32 %352, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = load i32, i32* @BNX2_NVM_COMMAND_LAST, align 4
  store i32 %357, i32* %26, align 4
  br label %358

358:                                              ; preds = %356, %351
  %359 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %360 = load i32, i32* %25, align 4
  %361 = load i32*, i32** %17, align 8
  %362 = load i32, i32* %27, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %26, align 4
  %366 = call i32 @bnx2_nvram_write_dword(%struct.bnx2* %359, i32 %360, i32* %364, i32 %365)
  store i32 %366, i32* %18, align 4
  %367 = load i32, i32* %18, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %358
  br label %390

370:                                              ; preds = %358
  store i32 0, i32* %26, align 4
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %25, align 4
  %373 = add nsw i32 %372, 4
  store i32 %373, i32* %25, align 4
  %374 = load i32, i32* %27, align 4
  %375 = add nsw i32 %374, 4
  store i32 %375, i32* %27, align 4
  br label %347

376:                                              ; preds = %347
  br label %377

377:                                              ; preds = %376, %336
  %378 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %379 = call i32 @bnx2_disable_nvram_write(%struct.bnx2* %378)
  %380 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %381 = call i32 @bnx2_disable_nvram_access(%struct.bnx2* %380)
  %382 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %383 = call i32 @bnx2_release_nvram_lock(%struct.bnx2* %382)
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %23, align 4
  %386 = sub nsw i32 %384, %385
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %10, align 4
  br label %136

389:                                              ; preds = %143
  br label %390

390:                                              ; preds = %389, %369, %327, %282, %262, %247, %237, %189, %131
  %391 = load i32*, i32** %17, align 8
  %392 = call i32 @kfree(i32* %391)
  %393 = load i32*, i32** %16, align 8
  %394 = call i32 @kfree(i32* %393)
  %395 = load i32, i32* %18, align 4
  store i32 %395, i32* %5, align 4
  br label %396

396:                                              ; preds = %390, %87, %72, %50
  %397 = load i32, i32* %5, align 4
  ret i32 %397
}

declare dso_local i32 @bnx2_nvram_read(%struct.bnx2*, i32, i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bnx2_acquire_nvram_lock(%struct.bnx2*) #1

declare dso_local i32 @bnx2_enable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @bnx2_nvram_read_dword(%struct.bnx2*, i32, i32*, i32) #1

declare dso_local i32 @bnx2_enable_nvram_write(%struct.bnx2*) #1

declare dso_local i32 @bnx2_nvram_erase_page(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_nvram_write_dword(%struct.bnx2*, i32, i32*, i32) #1

declare dso_local i32 @bnx2_disable_nvram_write(%struct.bnx2*) #1

declare dso_local i32 @bnx2_disable_nvram_access(%struct.bnx2*) #1

declare dso_local i32 @bnx2_release_nvram_lock(%struct.bnx2*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
