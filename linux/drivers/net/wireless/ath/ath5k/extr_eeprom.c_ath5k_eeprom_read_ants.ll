; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_ants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_read_ants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath5k_eeprom_info }
%struct.ath5k_eeprom_info = type { i32*, i32*, i32** }

@AR5K_ANT_CTL = common dso_local global i64 0, align 8
@AR5K_ANT_SWTABLE_A = common dso_local global i64 0, align 8
@AR5K_ANT_SWTABLE_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i64*, i32)* @ath5k_eeprom_read_ants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_eeprom_read_ants(%struct.ath5k_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_eeprom_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ath5k_eeprom_info* %13, %struct.ath5k_eeprom_info** %7, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* %8, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %8, align 8
  %18 = trunc i64 %16 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @AR5K_EEPROM_READ(i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 127
  %24 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %25 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 2
  %32 = and i32 %31, 63
  %33 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %34 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 %39, 4
  %41 = and i32 %40, 63
  %42 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %43 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %42, i32 0, i32 2
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %41, i32* %51, align 4
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %8, align 8
  %54 = trunc i64 %52 to i32
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @AR5K_EEPROM_READ(i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 15
  %60 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %61 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %59
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 6
  %75 = and i32 %74, 63
  %76 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %77 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %75, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 63
  %89 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %90 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %88, i32* %99, align 4
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = trunc i64 %100 to i32
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @AR5K_EEPROM_READ(i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = ashr i32 %105, 10
  %107 = and i32 %106, 63
  %108 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %109 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %107, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 4
  %121 = and i32 %120, 63
  %122 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %123 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %122, i32 0, i32 2
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %121, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = shl i32 %133, 2
  %135 = and i32 %134, 63
  %136 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %137 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %136, i32 0, i32 2
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %135, i32* %145, align 4
  %146 = load i64, i64* %8, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %8, align 8
  %148 = trunc i64 %146 to i32
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @AR5K_EEPROM_READ(i32 %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = ashr i32 %151, 14
  %153 = and i32 %152, 3
  %154 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %155 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %154, i32 0, i32 2
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %153
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* %9, align 4
  %168 = ashr i32 %167, 8
  %169 = and i32 %168, 63
  %170 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %171 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %170, i32 0, i32 2
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %169, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = ashr i32 %181, 2
  %183 = and i32 %182, 63
  %184 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %185 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %184, i32 0, i32 2
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %183, i32* %194, align 4
  %195 = load i32, i32* %9, align 4
  %196 = shl i32 %195, 4
  %197 = and i32 %196, 63
  %198 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %199 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %198, i32 0, i32 2
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %197, i32* %207, align 4
  %208 = load i64, i64* %8, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %8, align 8
  %210 = trunc i64 %208 to i32
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @AR5K_EEPROM_READ(i32 %210, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = ashr i32 %213, 12
  %215 = and i32 %214, 15
  %216 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %217 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %216, i32 0, i32 2
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %6, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %10, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %215
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %9, align 4
  %230 = ashr i32 %229, 6
  %231 = and i32 %230, 63
  %232 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %233 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %232, i32 0, i32 2
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  store i32 %231, i32* %242, align 4
  %243 = load i32, i32* %9, align 4
  %244 = and i32 %243, 63
  %245 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %246 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %245, i32 0, i32 2
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %244, i32* %255, align 4
  %256 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %257 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %256, i32 0, i32 2
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = shl i32 %264, 4
  %266 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %267 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %266, i32 0, i32 0
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = load i64, i64* @AR5K_ANT_CTL, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  store i32 %265, i32* %274, align 4
  %275 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %276 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %275, i32 0, i32 2
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %285 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %284, i32 0, i32 2
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 6
  %294 = or i32 %283, %293
  %295 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %296 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %295, i32 0, i32 2
  %297 = load i32**, i32*** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  %303 = load i32, i32* %302, align 4
  %304 = shl i32 %303, 12
  %305 = or i32 %294, %304
  %306 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %307 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %306, i32 0, i32 2
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 4
  %314 = load i32, i32* %313, align 4
  %315 = shl i32 %314, 18
  %316 = or i32 %305, %315
  %317 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %318 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %317, i32 0, i32 2
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 5
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 24
  %327 = or i32 %316, %326
  %328 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %329 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %328, i32 0, i32 0
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i64, i64* @AR5K_ANT_SWTABLE_A, align 8
  %336 = getelementptr inbounds i32, i32* %334, i64 %335
  store i32 %327, i32* %336, align 4
  %337 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %338 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %337, i32 0, i32 2
  %339 = load i32**, i32*** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 6
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %347 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %346, i32 0, i32 2
  %348 = load i32**, i32*** %347, align 8
  %349 = load i32, i32* %6, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 7
  %354 = load i32, i32* %353, align 4
  %355 = shl i32 %354, 6
  %356 = or i32 %345, %355
  %357 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %358 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %357, i32 0, i32 2
  %359 = load i32**, i32*** %358, align 8
  %360 = load i32, i32* %6, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i32*, i32** %359, i64 %361
  %363 = load i32*, i32** %362, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 8
  %365 = load i32, i32* %364, align 4
  %366 = shl i32 %365, 12
  %367 = or i32 %356, %366
  %368 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %369 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %368, i32 0, i32 2
  %370 = load i32**, i32*** %369, align 8
  %371 = load i32, i32* %6, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i32*, i32** %370, i64 %372
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 9
  %376 = load i32, i32* %375, align 4
  %377 = shl i32 %376, 18
  %378 = or i32 %367, %377
  %379 = load %struct.ath5k_eeprom_info*, %struct.ath5k_eeprom_info** %7, align 8
  %380 = getelementptr inbounds %struct.ath5k_eeprom_info, %struct.ath5k_eeprom_info* %379, i32 0, i32 2
  %381 = load i32**, i32*** %380, align 8
  %382 = load i32, i32* %6, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32*, i32** %381, i64 %383
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 10
  %387 = load i32, i32* %386, align 4
  %388 = shl i32 %387, 24
  %389 = or i32 %378, %388
  %390 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %391 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %390, i32 0, i32 0
  %392 = load i32**, i32*** %391, align 8
  %393 = load i32, i32* %6, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = load i64, i64* @AR5K_ANT_SWTABLE_B, align 8
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  store i32 %389, i32* %398, align 4
  %399 = load i64, i64* %8, align 8
  %400 = load i64*, i64** %5, align 8
  store i64 %399, i64* %400, align 8
  ret i32 0
}

declare dso_local i32 @AR5K_EEPROM_READ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
