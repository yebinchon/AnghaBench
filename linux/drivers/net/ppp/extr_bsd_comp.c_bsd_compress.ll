; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_bsd_comp.c_bsd_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.bsd_dict = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PPP_HDRLEN = common dso_local global i32 0, align 4
@BSD_OVHD = common dso_local global i32 0, align 4
@PPP_COMP = common dso_local global i32 0, align 4
@BADCODEM1 = common dso_local global i32 0, align 4
@CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32)* @bsd_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_compress(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_db*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.bsd_dict*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.bsd_dict*, align 8
  %29 = alloca %struct.bsd_dict*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i16*, align 8
  %32 = alloca i16*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @PPP_PROTOCOL(i8* %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 33
  br i1 %36, label %40, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* %18, align 4
  %39 = icmp sgt i32 %38, 249
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %5
  store i32 0, i32* %6, align 4
  br label %469

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to %struct.bsd_db*
  store %struct.bsd_db* %43, %struct.bsd_db** %12, align 8
  %44 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %45 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  %47 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %48 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %51 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  store i32 32, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @MAXCODE(i32 %53)
  store i32 %54, i32* %25, align 4
  %55 = load i8*, i8** %9, align 8
  store i8* %55, i8** %26, align 8
  %56 = load i32, i32* @PPP_HDRLEN, align 4
  %57 = load i32, i32* @BSD_OVHD, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %27, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %41
  %65 = load i8*, i8** %26, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @PPP_ADDRESS(i8* %68)
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %26, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %26, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @PPP_CONTROL(i8* %73)
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %26, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %26, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8*, i8** %26, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %26, align 8
  store i8 0, i8* %78, align 1
  %80 = load i32, i32* @PPP_COMP, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %26, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %26, align 8
  store i8 %81, i8* %82, align 1
  %84 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %85 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %26, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %26, align 8
  store i8 %88, i8* %89, align 1
  %91 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %92 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %26, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %26, align 8
  store i8 %94, i8* %95, align 1
  br label %97

97:                                               ; preds = %67, %64
  %98 = load i32, i32* @PPP_HDRLEN, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %8, align 8
  %102 = load i32, i32* @PPP_HDRLEN, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  store i32 %106, i32* %24, align 4
  br label %107

107:                                              ; preds = %293, %184, %138, %97
  %108 = load i32, i32* %24, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %24, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %296

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %8, align 8
  %114 = load i8, i8* %112, align 1
  store i8 %114, i8* %21, align 1
  %115 = load i32, i32* %18, align 4
  %116 = load i8, i8* %21, align 1
  %117 = call i64 @BSD_KEY(i32 %115, i8 zeroext %116)
  store i64 %117, i64* %19, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load i8, i8* %21, align 1
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @BSD_HASH(i32 %118, i8 zeroext %119, i32 %120)
  store i32 %121, i32* %22, align 4
  %122 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %123 = load i32, i32* %22, align 4
  %124 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %122, i32 %123)
  store %struct.bsd_dict* %124, %struct.bsd_dict** %20, align 8
  %125 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %126 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %111
  br label %189

131:                                              ; preds = %111
  %132 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %133 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %19, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %140 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %107

143:                                              ; preds = %131
  %144 = load i32, i32* %22, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %22, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i32 [ 1, %146 ], [ %148, %147 ]
  store i32 %150, i32* %23, align 4
  br label %151

151:                                              ; preds = %177, %149
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %22, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %157 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %162 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %22, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %22, align 4
  br label %166

166:                                              ; preds = %160, %151
  %167 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %168 = load i32, i32* %22, align 4
  %169 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %167, i32 %168)
  store %struct.bsd_dict* %169, %struct.bsd_dict** %20, align 8
  %170 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %171 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = icmp uge i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %189

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %179 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %19, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %151, label %184

184:                                              ; preds = %177
  %185 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %186 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add i32 %187, 1
  store i32 %188, i32* %18, align 4
  br label %107

189:                                              ; preds = %175, %130
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %16, align 4
  %192 = sub i32 %191, %190
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %16, align 4
  %195 = shl i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %17, align 8
  %198 = or i64 %197, %196
  store i64 %198, i64* %17, align 8
  br label %199

199:                                              ; preds = %220, %189
  %200 = load i32, i32* %27, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %27, align 4
  %202 = load i8*, i8** %26, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load i64, i64* %17, align 8
  %206 = lshr i64 %205, 24
  %207 = trunc i64 %206 to i8
  %208 = load i8*, i8** %26, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %26, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i8* null, i8** %26, align 8
  br label %214

214:                                              ; preds = %213, %204
  br label %215

215:                                              ; preds = %214, %199
  %216 = load i64, i64* %17, align 8
  %217 = shl i64 %216, 8
  store i64 %217, i64* %17, align 8
  %218 = load i32, i32* %16, align 4
  %219 = add i32 %218, 8
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %16, align 4
  %222 = icmp ule i32 %221, 24
  br i1 %222, label %199, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %226 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = icmp ult i32 %224, %227
  br i1 %228, label %229, label %293

229:                                              ; preds = %223
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %25, align 4
  %232 = icmp uge i32 %230, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = load i32, i32* %15, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %15, align 4
  %236 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %237 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %15, align 4
  %239 = call i32 @MAXCODE(i32 %238)
  store i32 %239, i32* %25, align 4
  br label %240

240:                                              ; preds = %233, %229
  %241 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %242 = load i32, i32* %14, align 4
  %243 = add i32 %242, 1
  %244 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %241, i32 %243)
  store %struct.bsd_dict* %244, %struct.bsd_dict** %28, align 8
  %245 = load %struct.bsd_dict*, %struct.bsd_dict** %28, align 8
  %246 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %30, align 4
  %248 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %249 = load i32, i32* %30, align 4
  %250 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %248, i32 %249)
  store %struct.bsd_dict* %250, %struct.bsd_dict** %29, align 8
  %251 = load %struct.bsd_dict*, %struct.bsd_dict** %29, align 8
  %252 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %14, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %240
  %257 = load i32, i32* @BADCODEM1, align 4
  %258 = load %struct.bsd_dict*, %struct.bsd_dict** %29, align 8
  %259 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  br label %260

260:                                              ; preds = %256, %240
  %261 = load i32, i32* %22, align 4
  %262 = load %struct.bsd_dict*, %struct.bsd_dict** %28, align 8
  %263 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %266 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  %267 = load i64, i64* %19, align 8
  %268 = load %struct.bsd_dict*, %struct.bsd_dict** %20, align 8
  %269 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  %271 = load i32, i32* %14, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %14, align 4
  %273 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %274 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %276 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %275, i32 0, i32 14
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %292

279:                                              ; preds = %260
  %280 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %281 = load i32, i32* %14, align 4
  %282 = call i16* @lens_ptr(%struct.bsd_db* %280, i32 %281)
  store i16* %282, i16** %31, align 8
  %283 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %284 = load i32, i32* %18, align 4
  %285 = call i16* @lens_ptr(%struct.bsd_db* %283, i32 %284)
  store i16* %285, i16** %32, align 8
  %286 = load i16*, i16** %32, align 8
  %287 = load i16, i16* %286, align 2
  %288 = zext i16 %287 to i32
  %289 = add nsw i32 %288, 1
  %290 = trunc i32 %289 to i16
  %291 = load i16*, i16** %31, align 8
  store i16 %290, i16* %291, align 2
  br label %292

292:                                              ; preds = %279, %260
  br label %293

293:                                              ; preds = %292, %223
  %294 = load i8, i8* %21, align 1
  %295 = zext i8 %294 to i32
  store i32 %295, i32* %18, align 4
  br label %107

296:                                              ; preds = %107
  %297 = load i32, i32* %15, align 4
  %298 = load i32, i32* %16, align 4
  %299 = sub i32 %298, %297
  store i32 %299, i32* %16, align 4
  %300 = load i32, i32* %18, align 4
  %301 = load i32, i32* %16, align 4
  %302 = shl i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = load i64, i64* %17, align 8
  %305 = or i64 %304, %303
  store i64 %305, i64* %17, align 8
  br label %306

306:                                              ; preds = %327, %296
  %307 = load i32, i32* %27, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %27, align 4
  %309 = load i8*, i8** %26, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = load i64, i64* %17, align 8
  %313 = lshr i64 %312, 24
  %314 = trunc i64 %313 to i8
  %315 = load i8*, i8** %26, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %26, align 8
  store i8 %314, i8* %315, align 1
  %317 = load i32, i32* %27, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp sge i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %311
  store i8* null, i8** %26, align 8
  br label %321

321:                                              ; preds = %320, %311
  br label %322

322:                                              ; preds = %321, %306
  %323 = load i64, i64* %17, align 8
  %324 = shl i64 %323, 8
  store i64 %324, i64* %17, align 8
  %325 = load i32, i32* %16, align 4
  %326 = add i32 %325, 8
  store i32 %326, i32* %16, align 4
  br label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %16, align 4
  %329 = icmp ule i32 %328, 24
  br i1 %329, label %306, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %27, align 4
  %332 = load i32, i32* @PPP_HDRLEN, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load i32, i32* @BSD_OVHD, align 4
  %335 = sub nsw i32 %333, %334
  %336 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %337 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %342 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, %340
  store i32 %344, i32* %342, align 4
  %345 = load i32, i32* %10, align 4
  %346 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %347 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %351 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %350, i32 0, i32 13
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 4
  %354 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %355 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  %358 = load i32, i32* %16, align 4
  %359 = icmp ult i32 %358, 32
  br i1 %359, label %360, label %365

360:                                              ; preds = %330
  %361 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %362 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 8
  br label %365

365:                                              ; preds = %360, %330
  %366 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %367 = call i64 @bsd_check(%struct.bsd_db* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %404

369:                                              ; preds = %365
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* %16, align 4
  %372 = sub i32 %371, %370
  store i32 %372, i32* %16, align 4
  %373 = load i32, i32* @CLEAR, align 4
  %374 = load i32, i32* %16, align 4
  %375 = shl i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = load i64, i64* %17, align 8
  %378 = or i64 %377, %376
  store i64 %378, i64* %17, align 8
  br label %379

379:                                              ; preds = %400, %369
  %380 = load i32, i32* %27, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %27, align 4
  %382 = load i8*, i8** %26, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %395

384:                                              ; preds = %379
  %385 = load i64, i64* %17, align 8
  %386 = lshr i64 %385, 24
  %387 = trunc i64 %386 to i8
  %388 = load i8*, i8** %26, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %26, align 8
  store i8 %387, i8* %388, align 1
  %390 = load i32, i32* %27, align 4
  %391 = load i32, i32* %11, align 4
  %392 = icmp sge i32 %390, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %384
  store i8* null, i8** %26, align 8
  br label %394

394:                                              ; preds = %393, %384
  br label %395

395:                                              ; preds = %394, %379
  %396 = load i64, i64* %17, align 8
  %397 = shl i64 %396, 8
  store i64 %397, i64* %17, align 8
  %398 = load i32, i32* %16, align 4
  %399 = add i32 %398, 8
  store i32 %399, i32* %16, align 4
  br label %400

400:                                              ; preds = %395
  %401 = load i32, i32* %16, align 4
  %402 = icmp ule i32 %401, 24
  br i1 %402, label %379, label %403

403:                                              ; preds = %400
  br label %404

404:                                              ; preds = %403, %365
  %405 = load i32, i32* %16, align 4
  %406 = icmp ne i32 %405, 32
  br i1 %406, label %407, label %429

407:                                              ; preds = %404
  %408 = load i32, i32* %27, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %27, align 4
  %410 = load i8*, i8** %26, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %428

412:                                              ; preds = %407
  %413 = load i64, i64* %17, align 8
  %414 = load i32, i32* %16, align 4
  %415 = sub i32 %414, 8
  %416 = shl i32 255, %415
  %417 = sext i32 %416 to i64
  %418 = or i64 %413, %417
  %419 = lshr i64 %418, 24
  %420 = trunc i64 %419 to i8
  %421 = load i8*, i8** %26, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %26, align 8
  store i8 %420, i8* %421, align 1
  %423 = load i32, i32* %27, align 4
  %424 = load i32, i32* %11, align 4
  %425 = icmp sge i32 %423, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %412
  store i8* null, i8** %26, align 8
  br label %427

427:                                              ; preds = %426, %412
  br label %428

428:                                              ; preds = %427, %407
  br label %429

429:                                              ; preds = %428, %404
  %430 = load i32, i32* %14, align 4
  %431 = load i32, i32* %25, align 4
  %432 = icmp uge i32 %430, %431
  br i1 %432, label %433, label %444

433:                                              ; preds = %429
  %434 = load i32, i32* %14, align 4
  %435 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %436 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 4
  %438 = icmp ult i32 %434, %437
  br i1 %438, label %439, label %444

439:                                              ; preds = %433
  %440 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %441 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = add i32 %442, 1
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %439, %433, %429
  %445 = load i8*, i8** %26, align 8
  %446 = icmp eq i8* %445, null
  br i1 %446, label %447, label %457

447:                                              ; preds = %444
  %448 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %449 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %448, i32 0, i32 12
  %450 = load i32, i32* %449, align 8
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %449, align 8
  %452 = load i32, i32* %10, align 4
  %453 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %454 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %453, i32 0, i32 9
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, %452
  store i32 %456, i32* %454, align 4
  store i32 0, i32* %27, align 4
  br label %467

457:                                              ; preds = %444
  %458 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %459 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %458, i32 0, i32 11
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  %462 = load i32, i32* %27, align 4
  %463 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %464 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %463, i32 0, i32 10
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %465, %462
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %457, %447
  %468 = load i32, i32* %27, align 4
  store i32 %468, i32* %6, align 4
  br label %469

469:                                              ; preds = %467, %40
  %470 = load i32, i32* %6, align 4
  ret i32 %470
}

declare dso_local i32 @PPP_PROTOCOL(i8*) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local i32 @PPP_ADDRESS(i8*) #1

declare dso_local i32 @PPP_CONTROL(i8*) #1

declare dso_local i64 @BSD_KEY(i32, i8 zeroext) #1

declare dso_local i32 @BSD_HASH(i32, i8 zeroext, i32) #1

declare dso_local %struct.bsd_dict* @dict_ptr(%struct.bsd_db*, i32) #1

declare dso_local i16* @lens_ptr(%struct.bsd_db*, i32) #1

declare dso_local i64 @bsd_check(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
