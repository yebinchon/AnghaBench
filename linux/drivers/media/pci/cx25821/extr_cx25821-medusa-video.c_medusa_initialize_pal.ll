; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_pal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_pal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

@MAX_DECODERS = common dso_local global i32 0, align 4
@MODE_CTRL = common dso_local global i64 0, align 8
@HORIZ_TIM_CTRL = common dso_local global i64 0, align 8
@VERT_TIM_CTRL = common dso_local global i64 0, align 8
@SC_STEP_SIZE = common dso_local global i64 0, align 8
@OUT_CTRL_NS = common dso_local global i64 0, align 8
@OUT_CTRL1 = common dso_local global i64 0, align 8
@MISC_TIM_CTRL = common dso_local global i64 0, align 8
@DFE_CTRL1 = common dso_local global i64 0, align 8
@MAX_ENCODERS = common dso_local global i32 0, align 4
@DENC_A_REG_1 = common dso_local global i64 0, align 8
@DENC_A_REG_2 = common dso_local global i64 0, align 8
@DENC_A_REG_3 = common dso_local global i64 0, align 8
@DENC_A_REG_4 = common dso_local global i64 0, align 8
@DENC_A_REG_5 = common dso_local global i64 0, align 8
@DENC_A_REG_6 = common dso_local global i64 0, align 8
@DENC_A_REG_7 = common dso_local global i64 0, align 8
@HSCALE_CTRL = common dso_local global i64 0, align 8
@VSCALE_CTRL = common dso_local global i64 0, align 8
@BYP_AB_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_dev*)* @medusa_initialize_pal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @medusa_initialize_pal(%struct.cx25821_dev* %0) #0 {
  %2 = alloca %struct.cx25821_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %201, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_DECODERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %204

11:                                               ; preds = %7
  %12 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %13 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i64, i64* @MODE_CTRL, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 512, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @cx25821_i2c_read(i32* %15, i64 %20, i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -16
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 65540
  store i32 %25, i32* %5, align 4
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i64, i64* @MODE_CTRL, align 8
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 512, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cx25821_i2c_write(i32* %29, i64 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %38 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i64, i64* @HORIZ_TIM_CTRL, align 8
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 512, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @cx25821_i2c_read(i32* %40, i64 %45, i32* %6)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 12585984
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 1663893629
  store i32 %50, i32* %5, align 4
  %51 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i64, i64* @HORIZ_TIM_CTRL, align 8
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 512, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @cx25821_i2c_write(i32* %54, i64 %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %63 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i64, i64* @VERT_TIM_CTRL, align 8
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 512, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = call i32 @cx25821_i2c_read(i32* %65, i64 %70, i32* %6)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 12585984
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, 673447974
  store i32 %75, i32* %5, align 4
  %76 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %77 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i64, i64* @VERT_TIM_CTRL, align 8
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 512, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @cx25821_i2c_write(i32* %79, i64 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %88 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i64, i64* @SC_STEP_SIZE, align 8
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 512, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = call i32 @cx25821_i2c_write(i32* %90, i64 %95, i32 1410458320)
  store i32 %96, i32* %3, align 4
  %97 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %98 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i64, i64* @OUT_CTRL_NS, align 8
  %102 = load i32, i32* %4, align 4
  %103 = mul nsw i32 512, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %101, %104
  %106 = call i32 @cx25821_i2c_read(i32* %100, i64 %105, i32* %6)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, -262145
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, 262144
  store i32 %110, i32* %5, align 4
  %111 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %112 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i64, i64* @OUT_CTRL_NS, align 8
  %116 = load i32, i32* %4, align 4
  %117 = mul nsw i32 512, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %115, %118
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @cx25821_i2c_write(i32* %114, i64 %119, i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %123 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i64, i64* @OUT_CTRL1, align 8
  %127 = load i32, i32* %4, align 4
  %128 = mul nsw i32 512, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %126, %129
  %131 = call i32 @cx25821_i2c_read(i32* %125, i64 %130, i32* %6)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, -262145
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, 262144
  store i32 %135, i32* %5, align 4
  %136 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %137 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i64, i64* @OUT_CTRL1, align 8
  %141 = load i32, i32* %4, align 4
  %142 = mul nsw i32 512, %141
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %140, %143
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @cx25821_i2c_write(i32* %139, i64 %144, i32 %145)
  store i32 %146, i32* %3, align 4
  %147 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %148 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i64, i64* @MISC_TIM_CTRL, align 8
  %152 = load i32, i32* %4, align 4
  %153 = mul nsw i32 512, %152
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = call i32 @cx25821_i2c_read(i32* %150, i64 %155, i32* %6)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @setBitAtPos(i32 %157, i32 14)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @clearBitAtPos(i32 %159, i32 15)
  store i32 %160, i32* %5, align 4
  %161 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %162 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i64, i64* @MISC_TIM_CTRL, align 8
  %166 = load i32, i32* %4, align 4
  %167 = mul nsw i32 512, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @cx25821_i2c_write(i32* %164, i64 %169, i32 %170)
  store i32 %171, i32* %3, align 4
  %172 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %173 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i64, i64* @DFE_CTRL1, align 8
  %177 = load i32, i32* %4, align 4
  %178 = mul nsw i32 512, %177
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %176, %179
  %181 = call i32 @cx25821_i2c_read(i32* %175, i64 %180, i32* %6)
  store i32 %181, i32* %5, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @clearBitAtPos(i32 %182, i32 29)
  store i32 %183, i32* %5, align 4
  %184 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %185 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i64, i64* @DFE_CTRL1, align 8
  %189 = load i32, i32* %4, align 4
  %190 = mul nsw i32 512, %189
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %188, %191
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @cx25821_i2c_write(i32* %187, i64 %192, i32 %193)
  store i32 %194, i32* %3, align 4
  %195 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @medusa_PALCombInit(%struct.cx25821_dev* %195, i32 %196)
  %198 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @medusa_enable_bluefield_output(%struct.cx25821_dev* %198, i32 %199, i32 1)
  br label %201

201:                                              ; preds = %11
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %7

204:                                              ; preds = %7
  store i32 0, i32* %4, align 4
  br label %205

205:                                              ; preds = %355, %204
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @MAX_ENCODERS, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %358

209:                                              ; preds = %205
  %210 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %211 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i64, i64* @DENC_A_REG_1, align 8
  %215 = load i32, i32* %4, align 4
  %216 = mul nsw i32 256, %215
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %214, %217
  %219 = call i32 @cx25821_i2c_read(i32* %213, i64 %218, i32* %6)
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = and i32 %220, -268370944
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = or i32 %222, 113246928
  store i32 %223, i32* %5, align 4
  %224 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %225 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i64, i64* @DENC_A_REG_1, align 8
  %229 = load i32, i32* %4, align 4
  %230 = mul nsw i32 256, %229
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %228, %231
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @cx25821_i2c_write(i32* %227, i64 %232, i32 %233)
  store i32 %234, i32* %3, align 4
  %235 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %236 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i64, i64* @DENC_A_REG_2, align 8
  %240 = load i32, i32* %4, align 4
  %241 = mul nsw i32 256, %240
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %239, %242
  %244 = call i32 @cx25821_i2c_read(i32* %238, i64 %243, i32* %6)
  store i32 %244, i32* %5, align 4
  %245 = load i32, i32* %5, align 4
  %246 = and i32 %245, -16777216
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, 8296276
  store i32 %248, i32* %5, align 4
  %249 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %250 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i64, i64* @DENC_A_REG_2, align 8
  %254 = load i32, i32* %4, align 4
  %255 = mul nsw i32 256, %254
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %253, %256
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @cx25821_i2c_write(i32* %252, i64 %257, i32 %258)
  store i32 %259, i32* %3, align 4
  %260 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %261 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i64, i64* @DENC_A_REG_3, align 8
  %265 = load i32, i32* %4, align 4
  %266 = mul nsw i32 256, %265
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %264, %267
  %269 = call i32 @cx25821_i2c_read(i32* %263, i64 %268, i32* %6)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* %5, align 4
  %271 = and i32 %270, -67043840
  store i32 %271, i32* %5, align 4
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, 16515360
  store i32 %273, i32* %5, align 4
  %274 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %275 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i64, i64* @DENC_A_REG_3, align 8
  %279 = load i32, i32* %4, align 4
  %280 = mul nsw i32 256, %279
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %278, %281
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @cx25821_i2c_write(i32* %277, i64 %282, i32 %283)
  store i32 %284, i32* %3, align 4
  %285 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %286 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i64, i64* @DENC_A_REG_4, align 8
  %290 = load i32, i32* %4, align 4
  %291 = mul nsw i32 256, %290
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %289, %292
  %294 = call i32 @cx25821_i2c_read(i32* %288, i64 %293, i32* %6)
  store i32 %294, i32* %5, align 4
  %295 = load i32, i32* %5, align 4
  %296 = and i32 %295, 16580607
  store i32 %296, i32* %5, align 4
  %297 = load i32, i32* %5, align 4
  %298 = or i32 %297, 335609856
  store i32 %298, i32* %5, align 4
  %299 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %300 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i64, i64* @DENC_A_REG_4, align 8
  %304 = load i32, i32* %4, align 4
  %305 = mul nsw i32 256, %304
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %303, %306
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @cx25821_i2c_write(i32* %302, i64 %307, i32 %308)
  store i32 %309, i32* %3, align 4
  %310 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %311 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i64, i64* @DENC_A_REG_5, align 8
  %315 = load i32, i32* %4, align 4
  %316 = mul nsw i32 256, %315
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %314, %317
  %319 = call i32 @cx25821_i2c_read(i32* %313, i64 %318, i32* %6)
  store i32 %319, i32* %5, align 4
  %320 = load i32, i32* %5, align 4
  %321 = and i32 %320, -65536
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = or i32 %322, 61560
  store i32 %323, i32* %5, align 4
  %324 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %325 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %324, i32 0, i32 0
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i64, i64* @DENC_A_REG_5, align 8
  %329 = load i32, i32* %4, align 4
  %330 = mul nsw i32 256, %329
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %328, %331
  %333 = load i32, i32* %5, align 4
  %334 = call i32 @cx25821_i2c_write(i32* %327, i64 %332, i32 %333)
  store i32 %334, i32* %3, align 4
  %335 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %336 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i64, i64* @DENC_A_REG_6, align 8
  %340 = load i32, i32* %4, align 4
  %341 = mul nsw i32 256, %340
  %342 = sext i32 %341 to i64
  %343 = add nsw i64 %339, %342
  %344 = call i32 @cx25821_i2c_write(i32* %338, i64 %343, i32 10785743)
  store i32 %344, i32* %3, align 4
  %345 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %346 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i64, i64* @DENC_A_REG_7, align 8
  %350 = load i32, i32* %4, align 4
  %351 = mul nsw i32 256, %350
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %349, %352
  %354 = call i32 @cx25821_i2c_write(i32* %348, i64 %353, i32 705268427)
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %209
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %205

358:                                              ; preds = %205
  %359 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %360 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i64, i64* @HSCALE_CTRL, align 8
  %364 = call i32 @cx25821_i2c_write(i32* %362, i64 %363, i32 0)
  store i32 %364, i32* %3, align 4
  %365 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %366 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i64, i64* @VSCALE_CTRL, align 8
  %370 = call i32 @cx25821_i2c_write(i32* %368, i64 %369, i32 0)
  store i32 %370, i32* %3, align 4
  %371 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %372 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = load i64, i64* @BYP_AB_CTRL, align 8
  %376 = call i32 @cx25821_i2c_read(i32* %374, i64 %375, i32* %6)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = and i32 %377, -524801
  store i32 %378, i32* %5, align 4
  %379 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %380 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i64, i64* @BYP_AB_CTRL, align 8
  %384 = load i32, i32* %5, align 4
  %385 = call i32 @cx25821_i2c_write(i32* %382, i64 %383, i32 %384)
  store i32 %385, i32* %3, align 4
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @clearBitAtPos(i32, i32) #1

declare dso_local i32 @medusa_PALCombInit(%struct.cx25821_dev*, i32) #1

declare dso_local i32 @medusa_enable_bluefield_output(%struct.cx25821_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
