; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ipack.c_send_ipack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ipack.c_send_ipack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack = type { i32, i32, i32*, i32, i32, i32 (i32*, i32, i32)*, i32 }
%struct.dvb_audio_info = type { i32, i32 }

@PRIVATE_STREAM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipack*)* @send_ipack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_ipack(%struct.ipack* %0) #0 {
  %2 = alloca %struct.ipack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_audio_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipack* %0, %struct.ipack** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.ipack*, %struct.ipack** %2, align 8
  %10 = getelementptr inbounds %struct.ipack, %struct.ipack* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %304 [
    i32 2, label %12
    i32 1, label %246
  ]

12:                                               ; preds = %1
  %13 = load %struct.ipack*, %struct.ipack** %2, align 8
  %14 = getelementptr inbounds %struct.ipack, %struct.ipack* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %304

18:                                               ; preds = %12
  %19 = load %struct.ipack*, %struct.ipack** %2, align 8
  %20 = getelementptr inbounds %struct.ipack, %struct.ipack* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ipack*, %struct.ipack** %2, align 8
  %23 = getelementptr inbounds %struct.ipack, %struct.ipack* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ipack*, %struct.ipack** %2, align 8
  %27 = getelementptr inbounds %struct.ipack, %struct.ipack* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 6
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.ipack*, %struct.ipack** %2, align 8
  %36 = getelementptr inbounds %struct.ipack, %struct.ipack* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ipack*, %struct.ipack** %2, align 8
  %40 = getelementptr inbounds %struct.ipack, %struct.ipack* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 6
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.ipack*, %struct.ipack** %2, align 8
  %48 = getelementptr inbounds %struct.ipack, %struct.ipack* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 %46, i32* %50, align 4
  %51 = load %struct.ipack*, %struct.ipack** %2, align 8
  %52 = getelementptr inbounds %struct.ipack, %struct.ipack* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %176

55:                                               ; preds = %18
  %56 = load %struct.ipack*, %struct.ipack** %2, align 8
  %57 = getelementptr inbounds %struct.ipack, %struct.ipack* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PRIVATE_STREAM1, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %176

61:                                               ; preds = %55
  %62 = load %struct.ipack*, %struct.ipack** %2, align 8
  %63 = getelementptr inbounds %struct.ipack, %struct.ipack* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 9, %66
  store i32 %67, i32* %3, align 4
  %68 = load %struct.ipack*, %struct.ipack** %2, align 8
  %69 = getelementptr inbounds %struct.ipack, %struct.ipack* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 248
  %77 = icmp eq i32 %76, 128
  br i1 %77, label %78, label %175

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %4, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.ipack*, %struct.ipack** %2, align 8
  %81 = getelementptr inbounds %struct.ipack, %struct.ipack* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = load %struct.ipack*, %struct.ipack** %2, align 8
  %90 = getelementptr inbounds %struct.ipack, %struct.ipack* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %88, %96
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.ipack*, %struct.ipack** %2, align 8
  %100 = getelementptr inbounds %struct.ipack, %struct.ipack* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %78
  %104 = load %struct.ipack*, %struct.ipack** %2, align 8
  %105 = getelementptr inbounds %struct.ipack, %struct.ipack* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = ptrtoint i32* %113 to i32
  %115 = load %struct.ipack*, %struct.ipack** %2, align 8
  %116 = getelementptr inbounds %struct.ipack, %struct.ipack* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @dvb_filter_get_ac3info(i32 %114, i32 %119, %struct.dvb_audio_info* %4, i32 0)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %103, %78
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %174, label %124

124:                                              ; preds = %121
  %125 = load %struct.ipack*, %struct.ipack** %2, align 8
  %126 = getelementptr inbounds %struct.ipack, %struct.ipack* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %3, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sub nsw i32 %129, 3
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %130, %131
  %133 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %4, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %132, %134
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %5, align 4
  %138 = ashr i32 %137, 8
  %139 = and i32 %138, 255
  %140 = load %struct.ipack*, %struct.ipack** %2, align 8
  %141 = getelementptr inbounds %struct.ipack, %struct.ipack* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %139, i32* %146, align 4
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, 255
  %149 = load %struct.ipack*, %struct.ipack** %2, align 8
  %150 = getelementptr inbounds %struct.ipack, %struct.ipack* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  store i32 %148, i32* %155, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.ipack*, %struct.ipack** %2, align 8
  %158 = getelementptr inbounds %struct.ipack, %struct.ipack* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %156, i32* %163, align 4
  %164 = load i32, i32* %7, align 4
  %165 = getelementptr inbounds %struct.dvb_audio_info, %struct.dvb_audio_info* %4, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %164, %166
  %168 = load %struct.ipack*, %struct.ipack** %2, align 8
  %169 = getelementptr inbounds %struct.ipack, %struct.ipack* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %167, %170
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %124, %121
  br label %175

175:                                              ; preds = %174, %61
  br label %176

176:                                              ; preds = %175, %55, %18
  %177 = load %struct.ipack*, %struct.ipack** %2, align 8
  %178 = getelementptr inbounds %struct.ipack, %struct.ipack* %177, i32 0, i32 5
  %179 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %178, align 8
  %180 = load %struct.ipack*, %struct.ipack** %2, align 8
  %181 = getelementptr inbounds %struct.ipack, %struct.ipack* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.ipack*, %struct.ipack** %2, align 8
  %184 = getelementptr inbounds %struct.ipack, %struct.ipack* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ipack*, %struct.ipack** %2, align 8
  %187 = getelementptr inbounds %struct.ipack, %struct.ipack* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 %179(i32* %182, i32 %185, i32 %188)
  %190 = load %struct.ipack*, %struct.ipack** %2, align 8
  %191 = getelementptr inbounds %struct.ipack, %struct.ipack* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 6
  store i32 128, i32* %193, align 4
  %194 = load %struct.ipack*, %struct.ipack** %2, align 8
  %195 = getelementptr inbounds %struct.ipack, %struct.ipack* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 7
  store i32 0, i32* %197, align 4
  %198 = load %struct.ipack*, %struct.ipack** %2, align 8
  %199 = getelementptr inbounds %struct.ipack, %struct.ipack* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 8
  store i32 0, i32* %201, align 4
  %202 = load %struct.ipack*, %struct.ipack** %2, align 8
  %203 = getelementptr inbounds %struct.ipack, %struct.ipack* %202, i32 0, i32 1
  store i32 9, i32* %203, align 4
  %204 = load %struct.ipack*, %struct.ipack** %2, align 8
  %205 = getelementptr inbounds %struct.ipack, %struct.ipack* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %245

208:                                              ; preds = %176
  %209 = load %struct.ipack*, %struct.ipack** %2, align 8
  %210 = getelementptr inbounds %struct.ipack, %struct.ipack* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @PRIVATE_STREAM1, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %245

214:                                              ; preds = %208
  %215 = load i32, i32* %6, align 4
  %216 = and i32 %215, 248
  %217 = icmp eq i32 %216, 128
  br i1 %217, label %218, label %245

218:                                              ; preds = %214
  %219 = load %struct.ipack*, %struct.ipack** %2, align 8
  %220 = getelementptr inbounds %struct.ipack, %struct.ipack* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 4
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.ipack*, %struct.ipack** %2, align 8
  %225 = getelementptr inbounds %struct.ipack, %struct.ipack* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 9
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* %5, align 4
  %229 = ashr i32 %228, 8
  %230 = and i32 %229, 255
  %231 = load %struct.ipack*, %struct.ipack** %2, align 8
  %232 = getelementptr inbounds %struct.ipack, %struct.ipack* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 10
  store i32 %230, i32* %234, align 4
  %235 = load i32, i32* %5, align 4
  %236 = and i32 %235, 255
  %237 = load %struct.ipack*, %struct.ipack** %2, align 8
  %238 = getelementptr inbounds %struct.ipack, %struct.ipack* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 11
  store i32 %236, i32* %240, align 4
  %241 = load %struct.ipack*, %struct.ipack** %2, align 8
  %242 = getelementptr inbounds %struct.ipack, %struct.ipack* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 12
  store i32 0, i32* %244, align 4
  br label %245

245:                                              ; preds = %218, %214, %208, %176
  br label %304

246:                                              ; preds = %1
  %247 = load %struct.ipack*, %struct.ipack** %2, align 8
  %248 = getelementptr inbounds %struct.ipack, %struct.ipack* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %249, 8
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %304

252:                                              ; preds = %246
  %253 = load %struct.ipack*, %struct.ipack** %2, align 8
  %254 = getelementptr inbounds %struct.ipack, %struct.ipack* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.ipack*, %struct.ipack** %2, align 8
  %257 = getelementptr inbounds %struct.ipack, %struct.ipack* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  store i32 %255, i32* %259, align 4
  %260 = load %struct.ipack*, %struct.ipack** %2, align 8
  %261 = getelementptr inbounds %struct.ipack, %struct.ipack* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %262, 6
  %264 = and i32 %263, 65280
  %265 = ashr i32 %264, 8
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.ipack*, %struct.ipack** %2, align 8
  %270 = getelementptr inbounds %struct.ipack, %struct.ipack* %269, i32 0, i32 2
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  store i32 %268, i32* %272, align 4
  %273 = load %struct.ipack*, %struct.ipack** %2, align 8
  %274 = getelementptr inbounds %struct.ipack, %struct.ipack* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 6
  %277 = and i32 %276, 255
  %278 = sext i32 %277 to i64
  %279 = inttoptr i64 %278 to i8*
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.ipack*, %struct.ipack** %2, align 8
  %282 = getelementptr inbounds %struct.ipack, %struct.ipack* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 5
  store i32 %280, i32* %284, align 4
  %285 = load %struct.ipack*, %struct.ipack** %2, align 8
  %286 = getelementptr inbounds %struct.ipack, %struct.ipack* %285, i32 0, i32 5
  %287 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %286, align 8
  %288 = load %struct.ipack*, %struct.ipack** %2, align 8
  %289 = getelementptr inbounds %struct.ipack, %struct.ipack* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.ipack*, %struct.ipack** %2, align 8
  %292 = getelementptr inbounds %struct.ipack, %struct.ipack* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.ipack*, %struct.ipack** %2, align 8
  %295 = getelementptr inbounds %struct.ipack, %struct.ipack* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = call i32 %287(i32* %290, i32 %293, i32 %296)
  %298 = load %struct.ipack*, %struct.ipack** %2, align 8
  %299 = getelementptr inbounds %struct.ipack, %struct.ipack* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 6
  store i32 15, i32* %301, align 4
  %302 = load %struct.ipack*, %struct.ipack** %2, align 8
  %303 = getelementptr inbounds %struct.ipack, %struct.ipack* %302, i32 0, i32 1
  store i32 7, i32* %303, align 4
  br label %304

304:                                              ; preds = %17, %251, %1, %252, %245
  ret void
}

declare dso_local i32 @dvb_filter_get_ac3info(i32, i32, %struct.dvb_audio_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
