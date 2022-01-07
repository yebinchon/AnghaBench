; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_ntsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-medusa-video.c_medusa_initialize_ntsc.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx25821_dev*)* @medusa_initialize_ntsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @medusa_initialize_ntsc(%struct.cx25821_dev* %0) #0 {
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

7:                                                ; preds = %198, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_DECODERS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %201

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
  %25 = or i32 %24, 65537
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
  %50 = or i32 %49, 1630339188
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
  %75 = or i32 %74, 471728154
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
  %96 = call i32 @cx25821_i2c_write(i32* %90, i64 %95, i32 1138753536)
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
  %197 = call i32 @medusa_enable_bluefield_output(%struct.cx25821_dev* %195, i32 %196, i32 1)
  br label %198

198:                                              ; preds = %11
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %7

201:                                              ; preds = %7
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %352, %201
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @MAX_ENCODERS, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %355

206:                                              ; preds = %202
  %207 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %208 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i64, i64* @DENC_A_REG_1, align 8
  %212 = load i32, i32* %4, align 4
  %213 = mul nsw i32 256, %212
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %211, %214
  %216 = call i32 @cx25821_i2c_read(i32* %210, i64 %215, i32* %6)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = and i32 %217, -268370944
  store i32 %218, i32* %5, align 4
  %219 = load i32, i32* %5, align 4
  %220 = or i32 %219, 112460496
  store i32 %220, i32* %5, align 4
  %221 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %222 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 0
  %225 = load i64, i64* @DENC_A_REG_1, align 8
  %226 = load i32, i32* %4, align 4
  %227 = mul nsw i32 256, %226
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %225, %228
  %230 = load i32, i32* %5, align 4
  %231 = call i32 @cx25821_i2c_write(i32* %224, i64 %229, i32 %230)
  store i32 %231, i32* %3, align 4
  %232 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %233 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i64, i64* @DENC_A_REG_2, align 8
  %237 = load i32, i32* %4, align 4
  %238 = mul nsw i32 256, %237
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %236, %239
  %241 = call i32 @cx25821_i2c_read(i32* %235, i64 %240, i32* %6)
  store i32 %241, i32* %5, align 4
  %242 = load i32, i32* %5, align 4
  %243 = and i32 %242, -16777216
  store i32 %243, i32* %5, align 4
  %244 = load i32, i32* %5, align 4
  %245 = or i32 %244, 8294484
  store i32 %245, i32* %5, align 4
  %246 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %247 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i64, i64* @DENC_A_REG_2, align 8
  %251 = load i32, i32* %4, align 4
  %252 = mul nsw i32 256, %251
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %250, %253
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @cx25821_i2c_write(i32* %249, i64 %254, i32 %255)
  store i32 %256, i32* %3, align 4
  %257 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %258 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i64, i64* @DENC_A_REG_3, align 8
  %262 = load i32, i32* %4, align 4
  %263 = mul nsw i32 256, %262
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %261, %264
  %266 = call i32 @cx25821_i2c_read(i32* %260, i64 %265, i32* %6)
  store i32 %266, i32* %5, align 4
  %267 = load i32, i32* %5, align 4
  %268 = and i32 %267, -67043840
  store i32 %268, i32* %5, align 4
  %269 = load i32, i32* %5, align 4
  %270 = or i32 %269, 15466736
  store i32 %270, i32* %5, align 4
  %271 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %272 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i64, i64* @DENC_A_REG_3, align 8
  %276 = load i32, i32* %4, align 4
  %277 = mul nsw i32 256, %276
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %275, %278
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @cx25821_i2c_write(i32* %274, i64 %279, i32 %280)
  store i32 %281, i32* %3, align 4
  %282 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %283 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i64, i64* @DENC_A_REG_4, align 8
  %287 = load i32, i32* %4, align 4
  %288 = mul nsw i32 256, %287
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %286, %289
  %291 = call i32 @cx25821_i2c_read(i32* %285, i64 %290, i32* %6)
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %5, align 4
  %293 = and i32 %292, 16580607
  store i32 %293, i32* %5, align 4
  %294 = load i32, i32* %5, align 4
  %295 = or i32 %294, 318898176
  store i32 %295, i32* %5, align 4
  %296 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %297 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i64, i64* @DENC_A_REG_4, align 8
  %301 = load i32, i32* %4, align 4
  %302 = mul nsw i32 256, %301
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %300, %303
  %305 = load i32, i32* %5, align 4
  %306 = call i32 @cx25821_i2c_write(i32* %299, i64 %304, i32 %305)
  store i32 %306, i32* %3, align 4
  %307 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %308 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i64, i64* @DENC_A_REG_5, align 8
  %312 = load i32, i32* %4, align 4
  %313 = mul nsw i32 256, %312
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %311, %314
  %316 = call i32 @cx25821_i2c_read(i32* %310, i64 %315, i32* %6)
  store i32 %316, i32* %5, align 4
  %317 = load i32, i32* %5, align 4
  %318 = and i32 %317, -65536
  store i32 %318, i32* %5, align 4
  %319 = load i32, i32* %5, align 4
  %320 = or i32 %319, 58741
  store i32 %320, i32* %5, align 4
  %321 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %322 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i64, i64* @DENC_A_REG_5, align 8
  %326 = load i32, i32* %4, align 4
  %327 = mul nsw i32 256, %326
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %325, %328
  %330 = load i32, i32* %5, align 4
  %331 = call i32 @cx25821_i2c_write(i32* %324, i64 %329, i32 %330)
  store i32 %331, i32* %3, align 4
  %332 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %333 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i64, i64* @DENC_A_REG_6, align 8
  %337 = load i32, i32* %4, align 4
  %338 = mul nsw i32 256, %337
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %336, %339
  %341 = call i32 @cx25821_i2c_write(i32* %335, i64 %340, i32 10127809)
  store i32 %341, i32* %3, align 4
  %342 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %343 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i64, i64* @DENC_A_REG_7, align 8
  %347 = load i32, i32* %4, align 4
  %348 = mul nsw i32 256, %347
  %349 = sext i32 %348 to i64
  %350 = add nsw i64 %346, %349
  %351 = call i32 @cx25821_i2c_write(i32* %345, i64 %350, i32 569408543)
  store i32 %351, i32* %3, align 4
  br label %352

352:                                              ; preds = %206
  %353 = load i32, i32* %4, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %4, align 4
  br label %202

355:                                              ; preds = %202
  %356 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %357 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i64, i64* @HSCALE_CTRL, align 8
  %361 = call i32 @cx25821_i2c_write(i32* %359, i64 %360, i32 0)
  store i32 %361, i32* %3, align 4
  %362 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %363 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i64, i64* @VSCALE_CTRL, align 8
  %367 = call i32 @cx25821_i2c_write(i32* %365, i64 %366, i32 0)
  store i32 %367, i32* %3, align 4
  %368 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %369 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  %372 = load i64, i64* @BYP_AB_CTRL, align 8
  %373 = call i32 @cx25821_i2c_read(i32* %371, i64 %372, i32* %6)
  store i32 %373, i32* %5, align 4
  %374 = load i32, i32* %5, align 4
  %375 = or i32 %374, 524800
  store i32 %375, i32* %5, align 4
  %376 = load %struct.cx25821_dev*, %struct.cx25821_dev** %2, align 8
  %377 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i64, i64* @BYP_AB_CTRL, align 8
  %381 = load i32, i32* %5, align 4
  %382 = call i32 @cx25821_i2c_write(i32* %379, i64 %380, i32 %381)
  store i32 %382, i32* %3, align 4
  %383 = load i32, i32* %3, align 4
  ret i32 %383
}

declare dso_local i32 @cx25821_i2c_read(i32*, i64, i32*) #1

declare dso_local i32 @cx25821_i2c_write(i32*, i64, i32) #1

declare dso_local i32 @setBitAtPos(i32, i32) #1

declare dso_local i32 @clearBitAtPos(i32, i32) #1

declare dso_local i32 @medusa_enable_bluefield_output(%struct.cx25821_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
