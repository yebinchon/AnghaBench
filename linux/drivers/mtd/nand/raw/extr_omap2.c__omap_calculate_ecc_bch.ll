; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c__omap_calculate_ecc_bch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c__omap_calculate_ecc_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { i32, %struct.gpmc_nand_regs, %struct.TYPE_4__ }
%struct.gpmc_nand_regs = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@bch4_polynomial = common dso_local global i32* null, align 8
@bch8_polynomial = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32)* @_omap_calculate_ecc_bch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap_calculate_ecc_bch(%struct.mtd_info* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_nand_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpmc_nand_regs*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %21 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %20)
  store %struct.omap_nand_info* %21, %struct.omap_nand_info** %10, align 8
  %22 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %23 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %28 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %27, i32 0, i32 1
  store %struct.gpmc_nand_regs* %28, %struct.gpmc_nand_regs** %12, align 8
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %13, align 8
  %30 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %31 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %403 [
    i32 128, label %33
    i32 129, label %33
    i32 130, label %144
    i32 131, label %144
    i32 132, label %209
  ]

33:                                               ; preds = %4, %4
  %34 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %35 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @readl(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %14, align 8
  %43 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %44 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @readl(i32 %49)
  %51 = ptrtoint i8* %50 to i64
  store i64 %51, i64* %15, align 8
  %52 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %53 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @readl(i32 %58)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %16, align 8
  %61 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %62 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @readl(i32 %67)
  %69 = ptrtoint i8* %68 to i64
  store i64 %69, i64* %17, align 8
  %70 = load i64, i64* %17, align 8
  %71 = and i64 %70, 255
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %13, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i64, i64* %16, align 8
  %76 = lshr i64 %75, 24
  %77 = and i64 %76, 255
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %13, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %81 = load i64, i64* %16, align 8
  %82 = lshr i64 %81, 16
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i64, i64* %16, align 8
  %88 = lshr i64 %87, 8
  %89 = and i64 %88, 255
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i64, i64* %16, align 8
  %94 = and i64 %93, 255
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %13, align 8
  store i32 %95, i32* %96, align 4
  %98 = load i64, i64* %15, align 8
  %99 = lshr i64 %98, 24
  %100 = and i64 %99, 255
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %104 = load i64, i64* %15, align 8
  %105 = lshr i64 %104, 16
  %106 = and i64 %105, 255
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %13, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  %110 = load i64, i64* %15, align 8
  %111 = lshr i64 %110, 8
  %112 = and i64 %111, 255
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %116 = load i64, i64* %15, align 8
  %117 = and i64 %116, 255
  %118 = trunc i64 %117 to i32
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %13, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i64, i64* %14, align 8
  %122 = lshr i64 %121, 24
  %123 = and i64 %122, 255
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i64, i64* %14, align 8
  %128 = lshr i64 %127, 16
  %129 = and i64 %128, 255
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %13, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i64, i64* %14, align 8
  %134 = lshr i64 %133, 8
  %135 = and i64 %134, 255
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %13, align 8
  store i32 %136, i32* %137, align 4
  %139 = load i64, i64* %14, align 8
  %140 = and i64 %139, 255
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %13, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %13, align 8
  store i32 %141, i32* %142, align 4
  br label %406

144:                                              ; preds = %4, %4
  %145 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %146 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @readl(i32 %151)
  %153 = ptrtoint i8* %152 to i64
  store i64 %153, i64* %14, align 8
  %154 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %155 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @readl(i32 %160)
  %162 = ptrtoint i8* %161 to i64
  store i64 %162, i64* %15, align 8
  %163 = load i64, i64* %15, align 8
  %164 = lshr i64 %163, 12
  %165 = and i64 %164, 255
  %166 = trunc i64 %165 to i32
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %13, align 8
  store i32 %166, i32* %167, align 4
  %169 = load i64, i64* %15, align 8
  %170 = lshr i64 %169, 4
  %171 = and i64 %170, 255
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** %13, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %13, align 8
  store i32 %172, i32* %173, align 4
  %175 = load i64, i64* %15, align 8
  %176 = and i64 %175, 15
  %177 = shl i64 %176, 4
  %178 = load i64, i64* %14, align 8
  %179 = lshr i64 %178, 28
  %180 = and i64 %179, 15
  %181 = or i64 %177, %180
  %182 = trunc i64 %181 to i32
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %13, align 8
  store i32 %182, i32* %183, align 4
  %185 = load i64, i64* %14, align 8
  %186 = lshr i64 %185, 20
  %187 = and i64 %186, 255
  %188 = trunc i64 %187 to i32
  %189 = load i32*, i32** %13, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %13, align 8
  store i32 %188, i32* %189, align 4
  %191 = load i64, i64* %14, align 8
  %192 = lshr i64 %191, 12
  %193 = and i64 %192, 255
  %194 = trunc i64 %193 to i32
  %195 = load i32*, i32** %13, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %13, align 8
  store i32 %194, i32* %195, align 4
  %197 = load i64, i64* %14, align 8
  %198 = lshr i64 %197, 4
  %199 = and i64 %198, 255
  %200 = trunc i64 %199 to i32
  %201 = load i32*, i32** %13, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %13, align 8
  store i32 %200, i32* %201, align 4
  %203 = load i64, i64* %14, align 8
  %204 = and i64 %203, 15
  %205 = shl i64 %204, 4
  %206 = trunc i64 %205 to i32
  %207 = load i32*, i32** %13, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %13, align 8
  store i32 %206, i32* %207, align 4
  br label %406

209:                                              ; preds = %4
  %210 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %211 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @readl(i32 %216)
  %218 = ptrtoint i8* %217 to i32
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %18, align 4
  %220 = ashr i32 %219, 8
  %221 = and i32 %220, 255
  %222 = load i32*, i32** %13, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %18, align 4
  %225 = ashr i32 %224, 0
  %226 = and i32 %225, 255
  %227 = load i32*, i32** %13, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %230 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @readl(i32 %235)
  %237 = ptrtoint i8* %236 to i32
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = ashr i32 %238, 24
  %240 = and i32 %239, 255
  %241 = load i32*, i32** %13, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %18, align 4
  %244 = ashr i32 %243, 16
  %245 = and i32 %244, 255
  %246 = load i32*, i32** %13, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %18, align 4
  %249 = ashr i32 %248, 8
  %250 = and i32 %249, 255
  %251 = load i32*, i32** %13, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 4
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %18, align 4
  %254 = ashr i32 %253, 0
  %255 = and i32 %254, 255
  %256 = load i32*, i32** %13, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  store i32 %255, i32* %257, align 4
  %258 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %259 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @readl(i32 %264)
  %266 = ptrtoint i8* %265 to i32
  store i32 %266, i32* %18, align 4
  %267 = load i32, i32* %18, align 4
  %268 = ashr i32 %267, 24
  %269 = and i32 %268, 255
  %270 = load i32*, i32** %13, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 6
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %18, align 4
  %273 = ashr i32 %272, 16
  %274 = and i32 %273, 255
  %275 = load i32*, i32** %13, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 7
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %18, align 4
  %278 = ashr i32 %277, 8
  %279 = and i32 %278, 255
  %280 = load i32*, i32** %13, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 8
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %18, align 4
  %283 = ashr i32 %282, 0
  %284 = and i32 %283, 255
  %285 = load i32*, i32** %13, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 9
  store i32 %284, i32* %286, align 4
  %287 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %288 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %287, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @readl(i32 %293)
  %295 = ptrtoint i8* %294 to i32
  store i32 %295, i32* %18, align 4
  %296 = load i32, i32* %18, align 4
  %297 = ashr i32 %296, 24
  %298 = and i32 %297, 255
  %299 = load i32*, i32** %13, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 10
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %18, align 4
  %302 = ashr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = load i32*, i32** %13, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 11
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %18, align 4
  %307 = ashr i32 %306, 8
  %308 = and i32 %307, 255
  %309 = load i32*, i32** %13, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 12
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %18, align 4
  %312 = ashr i32 %311, 0
  %313 = and i32 %312, 255
  %314 = load i32*, i32** %13, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 13
  store i32 %313, i32* %315, align 4
  %316 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %317 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %316, i32 0, i32 2
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = call i8* @readl(i32 %322)
  %324 = ptrtoint i8* %323 to i32
  store i32 %324, i32* %18, align 4
  %325 = load i32, i32* %18, align 4
  %326 = ashr i32 %325, 24
  %327 = and i32 %326, 255
  %328 = load i32*, i32** %13, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 14
  store i32 %327, i32* %329, align 4
  %330 = load i32, i32* %18, align 4
  %331 = ashr i32 %330, 16
  %332 = and i32 %331, 255
  %333 = load i32*, i32** %13, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 15
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* %18, align 4
  %336 = ashr i32 %335, 8
  %337 = and i32 %336, 255
  %338 = load i32*, i32** %13, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 16
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %18, align 4
  %341 = ashr i32 %340, 0
  %342 = and i32 %341, 255
  %343 = load i32*, i32** %13, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 17
  store i32 %342, i32* %344, align 4
  %345 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %346 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i8* @readl(i32 %351)
  %353 = ptrtoint i8* %352 to i32
  store i32 %353, i32* %18, align 4
  %354 = load i32, i32* %18, align 4
  %355 = ashr i32 %354, 24
  %356 = and i32 %355, 255
  %357 = load i32*, i32** %13, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 18
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %18, align 4
  %360 = ashr i32 %359, 16
  %361 = and i32 %360, 255
  %362 = load i32*, i32** %13, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 19
  store i32 %361, i32* %363, align 4
  %364 = load i32, i32* %18, align 4
  %365 = ashr i32 %364, 8
  %366 = and i32 %365, 255
  %367 = load i32*, i32** %13, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 20
  store i32 %366, i32* %368, align 4
  %369 = load i32, i32* %18, align 4
  %370 = ashr i32 %369, 0
  %371 = and i32 %370, 255
  %372 = load i32*, i32** %13, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 21
  store i32 %371, i32* %373, align 4
  %374 = load %struct.gpmc_nand_regs*, %struct.gpmc_nand_regs** %12, align 8
  %375 = getelementptr inbounds %struct.gpmc_nand_regs, %struct.gpmc_nand_regs* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i8* @readl(i32 %380)
  %382 = ptrtoint i8* %381 to i32
  store i32 %382, i32* %18, align 4
  %383 = load i32, i32* %18, align 4
  %384 = ashr i32 %383, 24
  %385 = and i32 %384, 255
  %386 = load i32*, i32** %13, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 22
  store i32 %385, i32* %387, align 4
  %388 = load i32, i32* %18, align 4
  %389 = ashr i32 %388, 16
  %390 = and i32 %389, 255
  %391 = load i32*, i32** %13, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 23
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %18, align 4
  %394 = ashr i32 %393, 8
  %395 = and i32 %394, 255
  %396 = load i32*, i32** %13, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 24
  store i32 %395, i32* %397, align 4
  %398 = load i32, i32* %18, align 4
  %399 = ashr i32 %398, 0
  %400 = and i32 %399, 255
  %401 = load i32*, i32** %13, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 25
  store i32 %400, i32* %402, align 4
  br label %406

403:                                              ; preds = %4
  %404 = load i32, i32* @EINVAL, align 4
  %405 = sub nsw i32 0, %404
  store i32 %405, i32* %5, align 4
  br label %469

406:                                              ; preds = %209, %144, %33
  %407 = load %struct.omap_nand_info*, %struct.omap_nand_info** %10, align 8
  %408 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  switch i32 %409, label %465 [
    i32 130, label %410
    i32 131, label %431
    i32 128, label %437
    i32 129, label %458
    i32 132, label %464
  ]

410:                                              ; preds = %406
  store i32 0, i32* %19, align 4
  br label %411

411:                                              ; preds = %427, %410
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %11, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %430

415:                                              ; preds = %411
  %416 = load i32*, i32** @bch4_polynomial, align 8
  %417 = load i32, i32* %19, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load i32*, i32** %8, align 8
  %422 = load i32, i32* %19, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = xor i32 %425, %420
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %415
  %428 = load i32, i32* %19, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %19, align 4
  br label %411

430:                                              ; preds = %411
  br label %468

431:                                              ; preds = %406
  %432 = load i32*, i32** %8, align 8
  %433 = load i32, i32* %11, align 4
  %434 = sub nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32 0, i32* %436, align 4
  br label %468

437:                                              ; preds = %406
  store i32 0, i32* %19, align 4
  br label %438

438:                                              ; preds = %454, %437
  %439 = load i32, i32* %19, align 4
  %440 = load i32, i32* %11, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %457

442:                                              ; preds = %438
  %443 = load i32*, i32** @bch8_polynomial, align 8
  %444 = load i32, i32* %19, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32*, i32** %8, align 8
  %449 = load i32, i32* %19, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = xor i32 %452, %447
  store i32 %453, i32* %451, align 4
  br label %454

454:                                              ; preds = %442
  %455 = load i32, i32* %19, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %19, align 4
  br label %438

457:                                              ; preds = %438
  br label %468

458:                                              ; preds = %406
  %459 = load i32*, i32** %8, align 8
  %460 = load i32, i32* %11, align 4
  %461 = sub nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %459, i64 %462
  store i32 0, i32* %463, align 4
  br label %468

464:                                              ; preds = %406
  br label %468

465:                                              ; preds = %406
  %466 = load i32, i32* @EINVAL, align 4
  %467 = sub nsw i32 0, %466
  store i32 %467, i32* %5, align 4
  br label %469

468:                                              ; preds = %464, %458, %457, %431, %430
  store i32 0, i32* %5, align 4
  br label %469

469:                                              ; preds = %468, %465, %403
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i8* @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
