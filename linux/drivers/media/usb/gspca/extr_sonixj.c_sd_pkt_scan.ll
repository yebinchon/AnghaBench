; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32, i32, i32*, i32, i32, i64, i32 }

@LAST_PACKET = common dso_local global i64 0, align 8
@FIRST_PACKET = common dso_local global i64 0, align 8
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i64 0, align 8
@DISCARD_PACKET = common dso_local global i8* null, align 8
@QUALITY_MIN = common dso_local global i32 0, align 4
@QUALITY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load %struct.sd*, %struct.sd** %7, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sd*, %struct.sd** %7, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sd*, %struct.sd** %7, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %3
  %28 = load %struct.sd*, %struct.sd** %7, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %138

43:                                               ; preds = %37, %32, %27
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %138

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %331

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %5, align 8
  br label %66

66:                                               ; preds = %61, %3
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %106, %80, %66
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %8, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 255
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %8, align 4
  br label %69

83:                                               ; preds = %73
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 255
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96, %91
  br label %138

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %83
  br label %69

107:                                              ; preds = %69
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 255
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.sd*, %struct.sd** %7, align 8
  %117 = getelementptr inbounds %struct.sd, %struct.sd* %116, i32 0, i32 2
  store i32 -1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %107
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %120 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @LAST_PACKET, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %126 = load i64, i64* @FIRST_PACKET, align 8
  %127 = load %struct.sd*, %struct.sd** %7, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* @JPEG_HDR_SZ, align 4
  %131 = call i32 @gspca_frame_add(%struct.gspca_dev* %125, i64 %126, i32* %129, i32 %130)
  br label %132

132:                                              ; preds = %124, %118
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %134 = load i64, i64* @INTER_PACKET, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @gspca_frame_add(%struct.gspca_dev* %133, i64 %134, i32* %135, i32 %136)
  br label %331

138:                                              ; preds = %104, %53, %42
  store i32 0, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp sgt i32 %139, 2
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 255
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 217
  br i1 %156, label %157, label %162

157:                                              ; preds = %149, %141
  %158 = load i8*, i8** @DISCARD_PACKET, align 8
  %159 = ptrtoint i8* %158 to i64
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %161 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  store i32 -3, i32* %9, align 4
  br label %162

162:                                              ; preds = %157, %149
  br label %184

163:                                              ; preds = %138
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 6
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 6
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load i8*, i8** @DISCARD_PACKET, align 8
  %179 = ptrtoint i8* %178 to i64
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %181 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  store i32 -5, i32* %9, align 4
  br label %182

182:                                              ; preds = %177, %168
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %183, %162
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %186 = load i64, i64* @LAST_PACKET, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @gspca_frame_add(%struct.gspca_dev* %185, i64 %186, i32* %187, i32 %188)
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %221

192:                                              ; preds = %184
  %193 = load %struct.sd*, %struct.sd** %7, align 8
  %194 = getelementptr inbounds %struct.sd, %struct.sd* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 100
  %197 = load %struct.sd*, %struct.sd** %7, align 8
  %198 = getelementptr inbounds %struct.sd, %struct.sd* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %201 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %202, i64 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %199, %209
  %211 = sdiv i32 %196, %210
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp sge i32 %212, 85
  br i1 %213, label %214, label %215

214:                                              ; preds = %192
  store i32 -3, i32* %9, align 4
  br label %220

215:                                              ; preds = %192
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 75
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 2, i32* %9, align 4
  br label %219

219:                                              ; preds = %218, %215
  br label %220

220:                                              ; preds = %219, %214
  br label %221

221:                                              ; preds = %220, %184
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %274

224:                                              ; preds = %221
  %225 = load i32, i32* %9, align 4
  %226 = load %struct.sd*, %struct.sd** %7, align 8
  %227 = getelementptr inbounds %struct.sd, %struct.sd* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load %struct.sd*, %struct.sd** %7, align 8
  %231 = getelementptr inbounds %struct.sd, %struct.sd* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %232, -6
  br i1 %233, label %239, label %234

234:                                              ; preds = %224
  %235 = load %struct.sd*, %struct.sd** %7, align 8
  %236 = getelementptr inbounds %struct.sd, %struct.sd* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = icmp sge i32 %237, 12
  br i1 %238, label %239, label %273

239:                                              ; preds = %234, %224
  %240 = load %struct.sd*, %struct.sd** %7, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 4
  store i32 0, i32* %241, align 8
  %242 = load %struct.sd*, %struct.sd** %7, align 8
  %243 = getelementptr inbounds %struct.sd, %struct.sd* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* @QUALITY_MIN, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %239
  %251 = load i32, i32* @QUALITY_MIN, align 4
  store i32 %251, i32* %9, align 4
  br label %259

252:                                              ; preds = %239
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* @QUALITY_MAX, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* @QUALITY_MAX, align 4
  store i32 %257, i32* %9, align 4
  br label %258

258:                                              ; preds = %256, %252
  br label %259

259:                                              ; preds = %258, %250
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.sd*, %struct.sd** %7, align 8
  %262 = getelementptr inbounds %struct.sd, %struct.sd* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %259
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.sd*, %struct.sd** %7, align 8
  %268 = getelementptr inbounds %struct.sd, %struct.sd* %267, i32 0, i32 5
  store i32 %266, i32* %268, align 4
  %269 = load %struct.sd*, %struct.sd** %7, align 8
  %270 = getelementptr inbounds %struct.sd, %struct.sd* %269, i32 0, i32 7
  %271 = call i32 @schedule_work(i32* %270)
  br label %272

272:                                              ; preds = %265, %259
  br label %273

273:                                              ; preds = %272, %234
  br label %277

274:                                              ; preds = %221
  %275 = load %struct.sd*, %struct.sd** %7, align 8
  %276 = getelementptr inbounds %struct.sd, %struct.sd* %275, i32 0, i32 4
  store i32 0, i32* %276, align 8
  br label %277

277:                                              ; preds = %274, %273
  %278 = load %struct.sd*, %struct.sd** %7, align 8
  %279 = getelementptr inbounds %struct.sd, %struct.sd* %278, i32 0, i32 0
  store i32 0, i32* %279, align 8
  %280 = load %struct.sd*, %struct.sd** %7, align 8
  %281 = getelementptr inbounds %struct.sd, %struct.sd* %280, i32 0, i32 1
  store i32 0, i32* %281, align 4
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 62
  %284 = load i32, i32* %6, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, 62
  %289 = load i32, i32* %6, align 4
  %290 = sub nsw i32 %288, %289
  %291 = load %struct.sd*, %struct.sd** %7, align 8
  %292 = getelementptr inbounds %struct.sd, %struct.sd* %291, i32 0, i32 2
  store i32 %290, i32* %292, align 8
  br label %331

293:                                              ; preds = %277
  %294 = load %struct.sd*, %struct.sd** %7, align 8
  %295 = getelementptr inbounds %struct.sd, %struct.sd* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = icmp sge i64 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %293
  %299 = load %struct.sd*, %struct.sd** %7, align 8
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = call i32 @set_lum(%struct.sd* %299, i32* %303)
  br label %305

305:                                              ; preds = %298, %293
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 62
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %331

311:                                              ; preds = %305
  %312 = load i32, i32* %8, align 4
  %313 = load i32*, i32** %5, align 8
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds i32, i32* %313, i64 %314
  store i32* %315, i32** %5, align 8
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* %6, align 4
  %318 = sub nsw i32 %317, %316
  store i32 %318, i32* %6, align 4
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %320 = load i64, i64* @FIRST_PACKET, align 8
  %321 = load %struct.sd*, %struct.sd** %7, align 8
  %322 = getelementptr inbounds %struct.sd, %struct.sd* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* @JPEG_HDR_SZ, align 4
  %325 = call i32 @gspca_frame_add(%struct.gspca_dev* %319, i64 %320, i32* %323, i32 %324)
  %326 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %327 = load i64, i64* @INTER_PACKET, align 8
  %328 = load i32*, i32** %5, align 8
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @gspca_frame_add(%struct.gspca_dev* %326, i64 %327, i32* %328, i32 %329)
  br label %331

331:                                              ; preds = %60, %132, %286, %311, %305
  ret void
}

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @set_lum(%struct.sd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
