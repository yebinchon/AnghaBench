; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c___ar955x_tx_iq_cal_sort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c___ar955x_tx_iq_cal_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.coeff = type { i32***, i32*** }
%struct.ath_common = type { i32 }

@MAXIQCAL = common dso_local global i32 0, align 4
@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"IQCAL: Median [ch%d][gain%d]: mag = %d phase = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.coeff*, i32, i32)* @__ar955x_tx_iq_cal_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ar955x_tx_iq_cal_sort(%struct.ath_hw* %0, %struct.coeff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.coeff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.coeff* %1, %struct.coeff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %314, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %317

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %223, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MAXIQCAL, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %226

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %219, %26
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @MAXIQCAL, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %222

34:                                               ; preds = %29
  %35 = load %struct.coeff*, %struct.coeff** %6, align 8
  %36 = getelementptr inbounds %struct.coeff, %struct.coeff* %35, i32 0, i32 0
  %37 = load i32***, i32**** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32**, i32*** %37, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.coeff*, %struct.coeff** %6, align 8
  %51 = getelementptr inbounds %struct.coeff, %struct.coeff* %50, i32 0, i32 0
  %52 = load i32***, i32**** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32**, i32*** %52, i64 %54
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %49, %64
  br i1 %65, label %66, label %126

66:                                               ; preds = %34
  %67 = load %struct.coeff*, %struct.coeff** %6, align 8
  %68 = getelementptr inbounds %struct.coeff, %struct.coeff* %67, i32 0, i32 0
  %69 = load i32***, i32**** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32**, i32*** %69, i64 %71
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load %struct.coeff*, %struct.coeff** %6, align 8
  %83 = getelementptr inbounds %struct.coeff, %struct.coeff* %82, i32 0, i32 0
  %84 = load i32***, i32**** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32**, i32*** %84, i64 %86
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.coeff*, %struct.coeff** %6, align 8
  %98 = getelementptr inbounds %struct.coeff, %struct.coeff* %97, i32 0, i32 0
  %99 = load i32***, i32**** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32**, i32*** %99, i64 %101
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %96, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.coeff*, %struct.coeff** %6, align 8
  %113 = getelementptr inbounds %struct.coeff, %struct.coeff* %112, i32 0, i32 0
  %114 = load i32***, i32**** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32**, i32*** %114, i64 %116
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %111, i32* %125, align 4
  br label %126

126:                                              ; preds = %66, %34
  %127 = load %struct.coeff*, %struct.coeff** %6, align 8
  %128 = getelementptr inbounds %struct.coeff, %struct.coeff* %127, i32 0, i32 1
  %129 = load i32***, i32**** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32**, i32*** %129, i64 %131
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.coeff*, %struct.coeff** %6, align 8
  %143 = getelementptr inbounds %struct.coeff, %struct.coeff* %142, i32 0, i32 1
  %144 = load i32***, i32**** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32**, i32*** %144, i64 %146
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %141, %156
  br i1 %157, label %158, label %218

158:                                              ; preds = %126
  %159 = load %struct.coeff*, %struct.coeff** %6, align 8
  %160 = getelementptr inbounds %struct.coeff, %struct.coeff* %159, i32 0, i32 1
  %161 = load i32***, i32**** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32**, i32*** %161, i64 %163
  %165 = load i32**, i32*** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  %174 = load %struct.coeff*, %struct.coeff** %6, align 8
  %175 = getelementptr inbounds %struct.coeff, %struct.coeff* %174, i32 0, i32 1
  %176 = load i32***, i32**** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32**, i32*** %176, i64 %178
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.coeff*, %struct.coeff** %6, align 8
  %190 = getelementptr inbounds %struct.coeff, %struct.coeff* %189, i32 0, i32 1
  %191 = load i32***, i32**** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32**, i32*** %191, i64 %193
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %188, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.coeff*, %struct.coeff** %6, align 8
  %205 = getelementptr inbounds %struct.coeff, %struct.coeff* %204, i32 0, i32 1
  %206 = load i32***, i32**** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32**, i32*** %206, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %203, i32* %217, align 4
  br label %218

218:                                              ; preds = %158, %126
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %29

222:                                              ; preds = %29
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %21

226:                                              ; preds = %21
  %227 = load %struct.coeff*, %struct.coeff** %6, align 8
  %228 = getelementptr inbounds %struct.coeff, %struct.coeff* %227, i32 0, i32 0
  %229 = load i32***, i32**** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32**, i32*** %229, i64 %231
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* @MAXIQCAL, align 4
  %239 = sdiv i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.coeff*, %struct.coeff** %6, align 8
  %244 = getelementptr inbounds %struct.coeff, %struct.coeff* %243, i32 0, i32 0
  %245 = load i32***, i32**** %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32**, i32*** %245, i64 %247
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %242, i32* %254, align 4
  %255 = load %struct.coeff*, %struct.coeff** %6, align 8
  %256 = getelementptr inbounds %struct.coeff, %struct.coeff* %255, i32 0, i32 1
  %257 = load i32***, i32**** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32**, i32*** %257, i64 %259
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @MAXIQCAL, align 4
  %267 = sdiv i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.coeff*, %struct.coeff** %6, align 8
  %272 = getelementptr inbounds %struct.coeff, %struct.coeff* %271, i32 0, i32 1
  %273 = load i32***, i32**** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32**, i32*** %273, i64 %275
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  store i32 %270, i32* %282, align 4
  %283 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %284 = load i32, i32* @CALIBRATE, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.coeff*, %struct.coeff** %6, align 8
  %288 = getelementptr inbounds %struct.coeff, %struct.coeff* %287, i32 0, i32 0
  %289 = load i32***, i32**** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32**, i32*** %289, i64 %291
  %293 = load i32**, i32*** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %293, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.coeff*, %struct.coeff** %6, align 8
  %301 = getelementptr inbounds %struct.coeff, %struct.coeff* %300, i32 0, i32 1
  %302 = load i32***, i32**** %301, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32**, i32*** %302, i64 %304
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %10, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @ath_dbg(%struct.ath_common* %283, i32 %284, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %285, i32 %286, i32 %299, i32 %312)
  br label %314

314:                                              ; preds = %226
  %315 = load i32, i32* %10, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  br label %16

317:                                              ; preds = %16
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
