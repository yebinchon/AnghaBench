; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mpeg4hdr_to_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-fw.c_gen_mpeg4hdr_to_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PFRAME = common dso_local global i32 0, align 4
@BFRAME_PRE = common dso_local global i32 0, align 4
@BFRAME_POST = common dso_local global i32 0, align 4
@BFRAME_BIDIR = common dso_local global i32 0, align 4
@BFRAME_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i64*, i32, i32*)* @gen_mpeg4hdr_to_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_mpeg4hdr_to_package(%struct.go7007* %0, i64* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 15872, i32* %11, align 4
  store i32 25, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 5120, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %330

23:                                               ; preds = %4
  %24 = load %struct.go7007*, %struct.go7007** %6, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @PFRAME, align 4
  %27 = call i32 @mpeg4_frame_header(%struct.go7007* %24, i32* %25, i32 0, i32 %26)
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  store i32 368, i32* %13, align 4
  %30 = load %struct.go7007*, %struct.go7007** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @BFRAME_PRE, align 4
  %36 = call i32 @mpeg4_frame_header(%struct.go7007* %30, i32* %34, i32 0, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1632
  store i32 %40, i32* %13, align 4
  %41 = load %struct.go7007*, %struct.go7007** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @BFRAME_POST, align 4
  %47 = call i32 @mpeg4_frame_header(%struct.go7007* %41, i32* %45, i32 0, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1432
  store i32 %51, i32* %13, align 4
  %52 = load %struct.go7007*, %struct.go7007** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @BFRAME_BIDIR, align 4
  %58 = call i32 @mpeg4_frame_header(%struct.go7007* %52, i32* %56, i32 0, i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1632
  store i32 %62, i32* %13, align 4
  %63 = load %struct.go7007*, %struct.go7007** %6, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* @BFRAME_EMPTY, align 4
  %69 = call i32 @mpeg4_frame_header(%struct.go7007* %63, i32* %67, i32 0, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 16
  store i32 %71, i32* %13, align 4
  %72 = load %struct.go7007*, %struct.go7007** %6, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i32 @mpeg4_sequence_header(%struct.go7007* %72, i32* %76, i32 0)
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 40
  store i32 %79, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %169, %23
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 5120
  br i1 %82, label %83, label %174

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 -1, i32* %14, align 4
  br label %326

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = or i32 32768, %90
  %92 = call i64 @__cpu_to_le16(i32 %91)
  %93 = load i64*, i64** %7, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  store i64 %92, i64* %97, align 8
  store i32 28, i32* %15, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp sgt i32 %100, 16384
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 16384, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %89
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 2, %107
  %109 = add nsw i32 %106, %108
  %110 = icmp sgt i32 %109, 5120
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 5120, %112
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %116, 28
  br i1 %117, label %118, label %141

118:                                              ; preds = %115
  %119 = load i32, i32* %15, align 4
  %120 = or i32 16384, %119
  %121 = call i64 @__cpu_to_le16(i32 %120)
  %122 = load i64*, i64** %7, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %121, i64* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = call i64 @__cpu_to_le16(i32 %126)
  %128 = load i64*, i64** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 31
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  store i64 %127, i64* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp eq i32 %135, 16384
  br i1 %136, label %137, label %140

137:                                              ; preds = %118
  store i32 15872, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %137, %118
  br label %154

141:                                              ; preds = %115
  %142 = call i64 @__cpu_to_le16(i32 4124)
  %143 = load i64*, i64** %7, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  store i64 %142, i64* %146, align 8
  %147 = load i64*, i64** %7, align 8
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 31
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 28
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %141, %140
  %155 = load i64*, i64** %7, align 8
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %164, 2
  %166 = call i32 @memcpy(i64* %159, i32* %163, i32 %165)
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 32
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %154
  %170 = load i32, i32* %15, align 4
  %171 = mul nsw i32 %170, 2
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  br label %80

174:                                              ; preds = %80
  store i32 15872, i32* %11, align 4
  %175 = load %struct.go7007*, %struct.go7007** %6, align 8
  %176 = getelementptr inbounds %struct.go7007, %struct.go7007* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 5369, i32 2809
  store i32 %180, i32* %12, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @memset(i32* %181, i32 0, i32 5120)
  %183 = load %struct.go7007*, %struct.go7007** %6, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* @PFRAME, align 4
  %186 = call i32 @mpeg4_frame_header(%struct.go7007* %183, i32* %184, i32 1, i32 %185)
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 4
  store i32 %186, i32* %188, align 4
  store i32 368, i32* %13, align 4
  %189 = load %struct.go7007*, %struct.go7007** %6, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* @BFRAME_PRE, align 4
  %195 = call i32 @mpeg4_frame_header(%struct.go7007* %189, i32* %193, i32 1, i32 %194)
  %196 = load i32*, i32** %9, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 5
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %13, align 4
  %199 = add nsw i32 %198, 1632
  store i32 %199, i32* %13, align 4
  %200 = load %struct.go7007*, %struct.go7007** %6, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* @BFRAME_POST, align 4
  %206 = call i32 @mpeg4_frame_header(%struct.go7007* %200, i32* %204, i32 1, i32 %205)
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 6
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1432
  store i32 %210, i32* %13, align 4
  %211 = load %struct.go7007*, %struct.go7007** %6, align 8
  %212 = load i32*, i32** %10, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* @BFRAME_BIDIR, align 4
  %217 = call i32 @mpeg4_frame_header(%struct.go7007* %211, i32* %215, i32 1, i32 %216)
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 7
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1632
  store i32 %221, i32* %13, align 4
  %222 = load %struct.go7007*, %struct.go7007** %6, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* @BFRAME_EMPTY, align 4
  %228 = call i32 @mpeg4_frame_header(%struct.go7007* %222, i32* %226, i32 1, i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 16
  store i32 %230, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %320, %174
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 5120
  br i1 %233, label %234, label %325

234:                                              ; preds = %231
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* %14, align 4
  %237 = sub nsw i32 %235, %236
  %238 = icmp slt i32 %237, 32
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  store i32 -1, i32* %14, align 4
  br label %326

240:                                              ; preds = %234
  %241 = load i32, i32* %11, align 4
  %242 = or i32 32768, %241
  %243 = call i64 @__cpu_to_le16(i32 %242)
  %244 = load i64*, i64** %7, align 8
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i64, i64* %244, i64 %247
  store i64 %243, i64* %248, align 8
  store i32 28, i32* %15, align 4
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %249, %250
  %252 = icmp sgt i32 %251, 16384
  br i1 %252, label %253, label %256

253:                                              ; preds = %240
  %254 = load i32, i32* %11, align 4
  %255 = sub nsw i32 16384, %254
  store i32 %255, i32* %15, align 4
  br label %256

256:                                              ; preds = %253, %240
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %15, align 4
  %259 = mul nsw i32 2, %258
  %260 = add nsw i32 %257, %259
  %261 = icmp sgt i32 %260, 5120
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load i32, i32* %13, align 4
  %264 = sub nsw i32 5120, %263
  %265 = sdiv i32 %264, 2
  store i32 %265, i32* %15, align 4
  br label %266

266:                                              ; preds = %262, %256
  %267 = load i32, i32* %15, align 4
  %268 = icmp slt i32 %267, 28
  br i1 %268, label %269, label %292

269:                                              ; preds = %266
  %270 = load i32, i32* %15, align 4
  %271 = or i32 16384, %270
  %272 = call i64 @__cpu_to_le16(i32 %271)
  %273 = load i64*, i64** %7, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  store i64 %272, i64* %276, align 8
  %277 = load i32, i32* %12, align 4
  %278 = call i64 @__cpu_to_le16(i32 %277)
  %279 = load i64*, i64** %7, align 8
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 31
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %279, i64 %282
  store i64 %278, i64* %283, align 8
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* %15, align 4
  %286 = add nsw i32 %284, %285
  %287 = icmp eq i32 %286, 16384
  br i1 %287, label %288, label %291

288:                                              ; preds = %269
  store i32 15872, i32* %11, align 4
  %289 = load i32, i32* %12, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %288, %269
  br label %305

292:                                              ; preds = %266
  %293 = call i64 @__cpu_to_le16(i32 4124)
  %294 = load i64*, i64** %7, align 8
  %295 = load i32, i32* %14, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64, i64* %294, i64 %296
  store i64 %293, i64* %297, align 8
  %298 = load i64*, i64** %7, align 8
  %299 = load i32, i32* %14, align 4
  %300 = add nsw i32 %299, 31
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %298, i64 %301
  store i64 0, i64* %302, align 8
  %303 = load i32, i32* %11, align 4
  %304 = add nsw i32 %303, 28
  store i32 %304, i32* %11, align 4
  br label %305

305:                                              ; preds = %292, %291
  %306 = load i64*, i64** %7, align 8
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 2
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %306, i64 %309
  %311 = load i32*, i32** %10, align 8
  %312 = load i32, i32* %13, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %15, align 4
  %316 = mul nsw i32 %315, 2
  %317 = call i32 @memcpy(i64* %310, i32* %314, i32 %316)
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 32
  store i32 %319, i32* %14, align 4
  br label %320

320:                                              ; preds = %305
  %321 = load i32, i32* %15, align 4
  %322 = mul nsw i32 %321, 2
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %13, align 4
  br label %231

325:                                              ; preds = %231
  br label %326

326:                                              ; preds = %325, %239, %88
  %327 = load i32*, i32** %10, align 8
  %328 = call i32 @kfree(i32* %327)
  %329 = load i32, i32* %14, align 4
  store i32 %329, i32* %5, align 4
  br label %330

330:                                              ; preds = %326, %20
  %331 = load i32, i32* %5, align 4
  ret i32 %331
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @mpeg4_frame_header(%struct.go7007*, i32*, i32, i32) #1

declare dso_local i32 @mpeg4_sequence_header(%struct.go7007*, i32*, i32) #1

declare dso_local i64 @__cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
