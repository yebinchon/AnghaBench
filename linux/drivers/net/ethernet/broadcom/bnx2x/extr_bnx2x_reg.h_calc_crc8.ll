; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_reg.h_calc_crc8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_reg.h_calc_crc8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @calc_crc8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_crc8(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %10

24:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %25

39:                                               ; preds = %25
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 31
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 30
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %41, %43
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 28
  %46 = load i32, i32* %45, align 16
  %47 = xor i32 %44, %46
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 23
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %47, %49
  %51 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 21
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %50, %52
  %54 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 19
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %53, %55
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 18
  %58 = load i32, i32* %57, align 8
  %59 = xor i32 %56, %58
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 16
  %61 = load i32, i32* %60, align 16
  %62 = xor i32 %59, %61
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  %64 = load i32, i32* %63, align 8
  %65 = xor i32 %62, %64
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 12
  %67 = load i32, i32* %66, align 16
  %68 = xor i32 %65, %67
  %69 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 8
  %70 = load i32, i32* %69, align 16
  %71 = xor i32 %68, %70
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %71, %73
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 6
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %74, %76
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %79 = load i32, i32* %78, align 16
  %80 = xor i32 %77, %79
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %82 = load i32, i32* %81, align 16
  %83 = xor i32 %80, %82
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %85 = load i32, i32* %84, align 8
  %86 = xor i32 %83, %85
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %86, %88
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  store i32 %89, i32* %90, align 16
  %91 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 30
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 29
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %92, %94
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 28
  %97 = load i32, i32* %96, align 16
  %98 = xor i32 %95, %97
  %99 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 24
  %100 = load i32, i32* %99, align 16
  %101 = xor i32 %98, %100
  %102 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 23
  %103 = load i32, i32* %102, align 4
  %104 = xor i32 %101, %103
  %105 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 22
  %106 = load i32, i32* %105, align 8
  %107 = xor i32 %104, %106
  %108 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 21
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %107, %109
  %111 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 20
  %112 = load i32, i32* %111, align 16
  %113 = xor i32 %110, %112
  %114 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 18
  %115 = load i32, i32* %114, align 8
  %116 = xor i32 %113, %115
  %117 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 17
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %116, %118
  %120 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 16
  %121 = load i32, i32* %120, align 16
  %122 = xor i32 %119, %121
  %123 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 15
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %122, %124
  %126 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  %127 = load i32, i32* %126, align 8
  %128 = xor i32 %125, %127
  %129 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %128, %130
  %132 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 12
  %133 = load i32, i32* %132, align 16
  %134 = xor i32 %131, %133
  %135 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 9
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %134, %136
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 6
  %139 = load i32, i32* %138, align 8
  %140 = xor i32 %137, %139
  %141 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %140, %142
  %144 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = xor i32 %143, %145
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = xor i32 %146, %148
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %151 = load i32, i32* %150, align 16
  %152 = xor i32 %149, %151
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %152, %154
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %157 = load i32, i32* %156, align 8
  %158 = xor i32 %155, %157
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  store i32 %158, i32* %159, align 4
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 29
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 28
  %163 = load i32, i32* %162, align 16
  %164 = xor i32 %161, %163
  %165 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 25
  %166 = load i32, i32* %165, align 4
  %167 = xor i32 %164, %166
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 24
  %169 = load i32, i32* %168, align 16
  %170 = xor i32 %167, %169
  %171 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 22
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %170, %172
  %174 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 17
  %175 = load i32, i32* %174, align 4
  %176 = xor i32 %173, %175
  %177 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 15
  %178 = load i32, i32* %177, align 4
  %179 = xor i32 %176, %178
  %180 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  %181 = load i32, i32* %180, align 4
  %182 = xor i32 %179, %181
  %183 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 12
  %184 = load i32, i32* %183, align 16
  %185 = xor i32 %182, %184
  %186 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 10
  %187 = load i32, i32* %186, align 8
  %188 = xor i32 %185, %187
  %189 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 8
  %190 = load i32, i32* %189, align 16
  %191 = xor i32 %188, %190
  %192 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 6
  %193 = load i32, i32* %192, align 8
  %194 = xor i32 %191, %193
  %195 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 2
  %196 = load i32, i32* %195, align 8
  %197 = xor i32 %194, %196
  %198 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 1
  %199 = load i32, i32* %198, align 4
  %200 = xor i32 %197, %199
  %201 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = xor i32 %200, %202
  %204 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %205 = load i32, i32* %204, align 16
  %206 = xor i32 %203, %205
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %206, %208
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %211 = load i32, i32* %210, align 16
  %212 = xor i32 %209, %211
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %214 = load i32, i32* %213, align 4
  %215 = xor i32 %212, %214
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  store i32 %215, i32* %216, align 8
  %217 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 30
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 29
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %218, %220
  %222 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 26
  %223 = load i32, i32* %222, align 8
  %224 = xor i32 %221, %223
  %225 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 25
  %226 = load i32, i32* %225, align 4
  %227 = xor i32 %224, %226
  %228 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 23
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %227, %229
  %231 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 18
  %232 = load i32, i32* %231, align 8
  %233 = xor i32 %230, %232
  %234 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 16
  %235 = load i32, i32* %234, align 16
  %236 = xor i32 %233, %235
  %237 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  %238 = load i32, i32* %237, align 8
  %239 = xor i32 %236, %238
  %240 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  %241 = load i32, i32* %240, align 4
  %242 = xor i32 %239, %241
  %243 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 11
  %244 = load i32, i32* %243, align 4
  %245 = xor i32 %242, %244
  %246 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 9
  %247 = load i32, i32* %246, align 4
  %248 = xor i32 %245, %247
  %249 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 7
  %250 = load i32, i32* %249, align 4
  %251 = xor i32 %248, %250
  %252 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = xor i32 %251, %253
  %255 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 2
  %256 = load i32, i32* %255, align 8
  %257 = xor i32 %254, %256
  %258 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = xor i32 %257, %259
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = xor i32 %260, %262
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %265 = load i32, i32* %264, align 8
  %266 = xor i32 %263, %265
  %267 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %268 = load i32, i32* %267, align 4
  %269 = xor i32 %266, %268
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %271 = load i32, i32* %270, align 8
  %272 = xor i32 %269, %271
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  store i32 %272, i32* %273, align 4
  %274 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 31
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 30
  %277 = load i32, i32* %276, align 8
  %278 = xor i32 %275, %277
  %279 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 27
  %280 = load i32, i32* %279, align 4
  %281 = xor i32 %278, %280
  %282 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 26
  %283 = load i32, i32* %282, align 8
  %284 = xor i32 %281, %283
  %285 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 24
  %286 = load i32, i32* %285, align 16
  %287 = xor i32 %284, %286
  %288 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 19
  %289 = load i32, i32* %288, align 4
  %290 = xor i32 %287, %289
  %291 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 17
  %292 = load i32, i32* %291, align 4
  %293 = xor i32 %290, %292
  %294 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 15
  %295 = load i32, i32* %294, align 4
  %296 = xor i32 %293, %295
  %297 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  %298 = load i32, i32* %297, align 8
  %299 = xor i32 %296, %298
  %300 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 12
  %301 = load i32, i32* %300, align 16
  %302 = xor i32 %299, %301
  %303 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 10
  %304 = load i32, i32* %303, align 8
  %305 = xor i32 %302, %304
  %306 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 8
  %307 = load i32, i32* %306, align 16
  %308 = xor i32 %305, %307
  %309 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 4
  %310 = load i32, i32* %309, align 16
  %311 = xor i32 %308, %310
  %312 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 3
  %313 = load i32, i32* %312, align 4
  %314 = xor i32 %311, %313
  %315 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 2
  %316 = load i32, i32* %315, align 8
  %317 = xor i32 %314, %316
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = xor i32 %317, %319
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %322 = load i32, i32* %321, align 8
  %323 = xor i32 %320, %322
  %324 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %325 = load i32, i32* %324, align 4
  %326 = xor i32 %323, %325
  %327 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %328 = load i32, i32* %327, align 8
  %329 = xor i32 %326, %328
  %330 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %331 = load i32, i32* %330, align 4
  %332 = xor i32 %329, %331
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %332, i32* %333, align 16
  %334 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 31
  %335 = load i32, i32* %334, align 4
  %336 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 28
  %337 = load i32, i32* %336, align 16
  %338 = xor i32 %335, %337
  %339 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 27
  %340 = load i32, i32* %339, align 4
  %341 = xor i32 %338, %340
  %342 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 25
  %343 = load i32, i32* %342, align 4
  %344 = xor i32 %341, %343
  %345 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 20
  %346 = load i32, i32* %345, align 16
  %347 = xor i32 %344, %346
  %348 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 18
  %349 = load i32, i32* %348, align 8
  %350 = xor i32 %347, %349
  %351 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 16
  %352 = load i32, i32* %351, align 16
  %353 = xor i32 %350, %352
  %354 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 15
  %355 = load i32, i32* %354, align 4
  %356 = xor i32 %353, %355
  %357 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  %358 = load i32, i32* %357, align 4
  %359 = xor i32 %356, %358
  %360 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 11
  %361 = load i32, i32* %360, align 4
  %362 = xor i32 %359, %361
  %363 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 9
  %364 = load i32, i32* %363, align 4
  %365 = xor i32 %362, %364
  %366 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 5
  %367 = load i32, i32* %366, align 4
  %368 = xor i32 %365, %367
  %369 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 4
  %370 = load i32, i32* %369, align 16
  %371 = xor i32 %368, %370
  %372 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 3
  %373 = load i32, i32* %372, align 4
  %374 = xor i32 %371, %373
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  %376 = load i32, i32* %375, align 4
  %377 = xor i32 %374, %376
  %378 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %379 = load i32, i32* %378, align 4
  %380 = xor i32 %377, %379
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %382 = load i32, i32* %381, align 16
  %383 = xor i32 %380, %382
  %384 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 7
  %385 = load i32, i32* %384, align 4
  %386 = xor i32 %383, %385
  %387 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  store i32 %386, i32* %387, align 4
  %388 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 29
  %389 = load i32, i32* %388, align 4
  %390 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 28
  %391 = load i32, i32* %390, align 16
  %392 = xor i32 %389, %391
  %393 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 26
  %394 = load i32, i32* %393, align 8
  %395 = xor i32 %392, %394
  %396 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 21
  %397 = load i32, i32* %396, align 4
  %398 = xor i32 %395, %397
  %399 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 19
  %400 = load i32, i32* %399, align 4
  %401 = xor i32 %398, %400
  %402 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 17
  %403 = load i32, i32* %402, align 4
  %404 = xor i32 %401, %403
  %405 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 16
  %406 = load i32, i32* %405, align 16
  %407 = xor i32 %404, %406
  %408 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  %409 = load i32, i32* %408, align 8
  %410 = xor i32 %407, %409
  %411 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 12
  %412 = load i32, i32* %411, align 16
  %413 = xor i32 %410, %412
  %414 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 10
  %415 = load i32, i32* %414, align 8
  %416 = xor i32 %413, %415
  %417 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 6
  %418 = load i32, i32* %417, align 8
  %419 = xor i32 %416, %418
  %420 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 5
  %421 = load i32, i32* %420, align 4
  %422 = xor i32 %419, %421
  %423 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 4
  %424 = load i32, i32* %423, align 16
  %425 = xor i32 %422, %424
  %426 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 2
  %427 = load i32, i32* %426, align 8
  %428 = xor i32 %425, %427
  %429 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %430 = load i32, i32* %429, align 16
  %431 = xor i32 %428, %430
  %432 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %433 = load i32, i32* %432, align 4
  %434 = xor i32 %431, %433
  %435 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  store i32 %434, i32* %435, align 8
  %436 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 30
  %437 = load i32, i32* %436, align 8
  %438 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 29
  %439 = load i32, i32* %438, align 4
  %440 = xor i32 %437, %439
  %441 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 27
  %442 = load i32, i32* %441, align 4
  %443 = xor i32 %440, %442
  %444 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 22
  %445 = load i32, i32* %444, align 8
  %446 = xor i32 %443, %445
  %447 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 20
  %448 = load i32, i32* %447, align 16
  %449 = xor i32 %446, %448
  %450 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 18
  %451 = load i32, i32* %450, align 8
  %452 = xor i32 %449, %451
  %453 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 17
  %454 = load i32, i32* %453, align 4
  %455 = xor i32 %452, %454
  %456 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 15
  %457 = load i32, i32* %456, align 4
  %458 = xor i32 %455, %457
  %459 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  %460 = load i32, i32* %459, align 4
  %461 = xor i32 %458, %460
  %462 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 11
  %463 = load i32, i32* %462, align 4
  %464 = xor i32 %461, %463
  %465 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 7
  %466 = load i32, i32* %465, align 4
  %467 = xor i32 %464, %466
  %468 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 6
  %469 = load i32, i32* %468, align 8
  %470 = xor i32 %467, %469
  %471 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 5
  %472 = load i32, i32* %471, align 4
  %473 = xor i32 %470, %472
  %474 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %475 = load i32, i32* %474, align 4
  %476 = xor i32 %473, %475
  %477 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 5
  %478 = load i32, i32* %477, align 4
  %479 = xor i32 %476, %478
  %480 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 6
  %481 = load i32, i32* %480, align 8
  %482 = xor i32 %479, %481
  %483 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  store i32 %482, i32* %483, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %484

484:                                              ; preds = %496, %39
  %485 = load i32, i32* %9, align 4
  %486 = icmp slt i32 %485, 8
  br i1 %486, label %487, label %499

487:                                              ; preds = %484
  %488 = load i32, i32* %9, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %9, align 4
  %493 = shl i32 %491, %492
  %494 = load i32, i32* %8, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %8, align 4
  br label %496

496:                                              ; preds = %487
  %497 = load i32, i32* %9, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %9, align 4
  br label %484

499:                                              ; preds = %484
  %500 = load i32, i32* %8, align 4
  ret i32 %500
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
