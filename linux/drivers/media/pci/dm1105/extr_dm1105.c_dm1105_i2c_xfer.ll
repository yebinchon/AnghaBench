; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/dm1105/extr_dm1105.c_dm1105_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.dm1105_dev* }
%struct.dm1105_dev = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@DM1105_I2CCTR = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@DM1105_I2CDAT = common dso_local global i64 0, align 8
@DM1105_I2CSTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dm1105_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm1105_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm1105_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = load %struct.dm1105_dev*, %struct.dm1105_dev** %19, align 8
  store %struct.dm1105_dev* %20, %struct.dm1105_dev** %8, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %316, %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %319

25:                                               ; preds = %21
  %26 = load i64, i64* @DM1105_I2CCTR, align 8
  %27 = call i32 @dm_writeb(i64 %26, i32 0)
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i64 %30
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @I2C_M_RD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %133

37:                                               ; preds = %25
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i64 %40
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load i64, i64* @DM1105_I2CDAT, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dm_writeb(i64 %47, i32 %48)
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %66, %37
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i64 %54
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %50
  %60 = load i64, i64* @DM1105_I2CDAT, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = add nsw i64 %63, 1
  %65 = call i32 @dm_writeb(i64 %64, i32 0)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load i64, i64* @DM1105_I2CCTR, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i64 %73
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 129, %76
  %78 = call i32 @dm_writeb(i64 %70, i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %91, %69
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 55
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = call i32 @mdelay(i32 10)
  %84 = load i64, i64* @DM1105_I2CSTS, align 8
  %85 = call i32 @dm_readb(i64 %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = and i32 %86, 192
  %88 = icmp eq i32 %87, 64
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %94

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %79

94:                                               ; preds = %89, %79
  %95 = load i32, i32* %12, align 4
  %96 = icmp sge i32 %95, 55
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 -1, i32* %4, align 4
  br label %323

98:                                               ; preds = %94
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %129, %98
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %101, i64 %103
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %100, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %99
  %109 = load i64, i64* @DM1105_I2CDAT, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = add nsw i64 %112, 1
  %114 = call i32 @dm_readb(i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %321

118:                                              ; preds = %108
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i64 %122
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %119, i32* %128, align 4
  br label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %99

132:                                              ; preds = %99
  br label %315

133:                                              ; preds = %25
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i64 %136
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 247
  br i1 %142, label %143, label %244

143:                                              ; preds = %133
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 85
  br i1 %150, label %151, label %244

151:                                              ; preds = %143
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i64 %154
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %159

159:                                              ; preds = %240, %151
  %160 = load i64, i64* @DM1105_I2CDAT, align 8
  %161 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i64 %163
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 1
  %168 = call i32 @dm_writeb(i64 %160, i32 %167)
  %169 = load i64, i64* @DM1105_I2CDAT, align 8
  %170 = add nsw i64 %169, 1
  %171 = call i32 @dm_writeb(i64 %170, i32 247)
  store i32 0, i32* %15, align 4
  br label %172

172:                                              ; preds = %202, %159
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp sgt i32 %174, 48
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %14, align 4
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi i32 [ 48, %176 ], [ %178, %177 ]
  %181 = icmp slt i32 %173, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %179
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i64 %185
  %187 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %16, align 4
  %195 = load i64, i64* @DM1105_I2CDAT, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = add nsw i64 %198, 2
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @dm_writeb(i64 %199, i32 %200)
  br label %202

202:                                              ; preds = %182
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  br label %172

205:                                              ; preds = %179
  %206 = load i64, i64* @DM1105_I2CCTR, align 8
  %207 = load i32, i32* %14, align 4
  %208 = icmp sgt i32 %207, 48
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %212

210:                                              ; preds = %205
  %211 = load i32, i32* %14, align 4
  br label %212

212:                                              ; preds = %210, %209
  %213 = phi i32 [ 48, %209 ], [ %211, %210 ]
  %214 = add nsw i32 130, %213
  %215 = call i32 @dm_writeb(i64 %206, i32 %214)
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %228, %212
  %217 = load i32, i32* %12, align 4
  %218 = icmp slt i32 %217, 25
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = call i32 @mdelay(i32 10)
  %221 = load i64, i64* @DM1105_I2CSTS, align 8
  %222 = call i32 @dm_readb(i64 %221)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = and i32 %223, 192
  %225 = icmp eq i32 %224, 64
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %231

227:                                              ; preds = %219
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %216

231:                                              ; preds = %226, %216
  %232 = load i32, i32* %12, align 4
  %233 = icmp sge i32 %232, 25
  br i1 %233, label %234, label %235

234:                                              ; preds = %231
  store i32 -1, i32* %4, align 4
  br label %323

235:                                              ; preds = %231
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 48
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %14, align 4
  %239 = sub nsw i32 %238, 48
  store i32 %239, i32* %14, align 4
  br label %240

240:                                              ; preds = %235
  %241 = load i32, i32* %14, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %159, label %243

243:                                              ; preds = %240
  br label %314

244:                                              ; preds = %143, %133
  %245 = load i64, i64* @DM1105_I2CDAT, align 8
  %246 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %246, i64 %248
  %250 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %251, 1
  %253 = call i32 @dm_writeb(i64 %245, i32 %252)
  store i32 0, i32* %15, align 4
  br label %254

254:                                              ; preds = %281, %244
  %255 = load i32, i32* %15, align 4
  %256 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %257 = load i32, i32* %11, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %256, i64 %258
  %260 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %255, %261
  br i1 %262, label %263, label %284

263:                                              ; preds = %254
  %264 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %264, i64 %266
  %268 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %16, align 4
  %274 = load i64, i64* @DM1105_I2CDAT, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %274, %276
  %278 = add nsw i64 %277, 1
  %279 = load i32, i32* %16, align 4
  %280 = call i32 @dm_writeb(i64 %278, i32 %279)
  br label %281

281:                                              ; preds = %263
  %282 = load i32, i32* %15, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %15, align 4
  br label %254

284:                                              ; preds = %254
  %285 = load i64, i64* @DM1105_I2CCTR, align 8
  %286 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %286, i64 %288
  %290 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = add nsw i32 129, %291
  %293 = call i32 @dm_writeb(i64 %285, i32 %292)
  store i32 0, i32* %12, align 4
  br label %294

294:                                              ; preds = %306, %284
  %295 = load i32, i32* %12, align 4
  %296 = icmp slt i32 %295, 25
  br i1 %296, label %297, label %309

297:                                              ; preds = %294
  %298 = call i32 @mdelay(i32 10)
  %299 = load i64, i64* @DM1105_I2CSTS, align 8
  %300 = call i32 @dm_readb(i64 %299)
  store i32 %300, i32* %17, align 4
  %301 = load i32, i32* %17, align 4
  %302 = and i32 %301, 192
  %303 = icmp eq i32 %302, 64
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  br label %309

305:                                              ; preds = %297
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %294

309:                                              ; preds = %304, %294
  %310 = load i32, i32* %12, align 4
  %311 = icmp sge i32 %310, 25
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i32 -1, i32* %4, align 4
  br label %323

313:                                              ; preds = %309
  br label %314

314:                                              ; preds = %313, %243
  br label %315

315:                                              ; preds = %314, %132
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %11, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  br label %21

319:                                              ; preds = %21
  %320 = load i32, i32* %7, align 4
  store i32 %320, i32* %4, align 4
  br label %323

321:                                              ; preds = %117
  %322 = load i32, i32* %10, align 4
  store i32 %322, i32* %4, align 4
  br label %323

323:                                              ; preds = %321, %319, %312, %234, %97
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local i32 @dm_writeb(i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dm_readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
