; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw2815_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw2815_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32 }

@__const.tw2815_setup.tbl_ntsc_tw2815_common = private unnamed_addr constant [15 x i32] [i32 0, i32 200, i32 32, i32 208, i32 6, i32 240, i32 8, i32 128, i32 128, i32 128, i32 128, i32 2, i32 6, i32 0, i32 17], align 16
@__const.tw2815_setup.tbl_pal_tw2815_common = private unnamed_addr constant [15 x i32] [i32 0, i32 136, i32 32, i32 208, i32 5, i32 32, i32 40, i32 128, i32 128, i32 128, i32 128, i32 130, i32 6, i32 0, i32 17], align 16
@__const.tw2815_setup.tbl_tw2815_sfr = private unnamed_addr constant [54 x i32] [i32 0, i32 0, i32 0, i32 192, i32 69, i32 160, i32 208, i32 47, i32 100, i32 128, i32 128, i32 130, i32 130, i32 0, i32 0, i32 0, i32 0, i32 15, i32 5, i32 0, i32 0, i32 128, i32 6, i32 0, i32 0, i32 0, i32 0, i32 255, i32 143, i32 0, i32 0, i32 0, i32 136, i32 136, i32 192, i32 0, i32 32, i32 100, i32 168, i32 236, i32 49, i32 117, i32 185, i32 253, i32 0, i32 0, i32 136, i32 136, i32 136, i32 17, i32 0, i32 136, i32 136, i32 0], align 16
@DEFAULT_HDELAY_NTSC = common dso_local global i32 0, align 4
@DEFAULT_HACTIVE_NTSC = common dso_local global i32 0, align 4
@DEFAULT_VDELAY_NTSC = common dso_local global i32 0, align 4
@DEFAULT_VACTIVE_NTSC = common dso_local global i32 0, align 4
@DEFAULT_HDELAY_PAL = common dso_local global i32 0, align 4
@DEFAULT_HACTIVE_PAL = common dso_local global i32 0, align 4
@DEFAULT_VDELAY_PAL = common dso_local global i32 0, align 4
@DEFAULT_VACTIVE_PAL = common dso_local global i32 0, align 4
@SOLO_VO_FMT_TYPE_NTSC = common dso_local global i64 0, align 8
@SOLO_I2C_TW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i32)* @tw2815_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2815_setup(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [15 x i32], align 16
  %6 = alloca [15 x i32], align 16
  %7 = alloca [54 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = bitcast [15 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([15 x i32]* @__const.tw2815_setup.tbl_ntsc_tw2815_common to i8*), i64 60, i1 false)
  %12 = bitcast [15 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([15 x i32]* @__const.tw2815_setup.tbl_pal_tw2815_common to i8*), i64 60, i1 false)
  %13 = bitcast [54 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([54 x i32]* @__const.tw2815_setup.tbl_tw2815_sfr to i8*), i64 216, i1 false)
  %14 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 6
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* @DEFAULT_HDELAY_NTSC, align 4
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @DEFAULT_HDELAY_NTSC, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 3, %19
  %21 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 6
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @DEFAULT_HACTIVE_NTSC, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @DEFAULT_HACTIVE_NTSC, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 3, %28
  %30 = shl i32 %29, 2
  %31 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 6
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @DEFAULT_VDELAY_NTSC, align 4
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* @DEFAULT_VDELAY_NTSC, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 1, %38
  %40 = shl i32 %39, 4
  %41 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 6
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @DEFAULT_VACTIVE_NTSC, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 5
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @DEFAULT_VACTIVE_NTSC, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 1, %48
  %50 = shl i32 %49, 5
  %51 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 6
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 8
  %54 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 6
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* @DEFAULT_HDELAY_PAL, align 4
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32, i32* @DEFAULT_HDELAY_PAL, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 3, %59
  %61 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 6
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @DEFAULT_HACTIVE_PAL, align 4
  %65 = and i32 %64, 255
  %66 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @DEFAULT_HACTIVE_PAL, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 3, %68
  %70 = shl i32 %69, 2
  %71 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 6
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @DEFAULT_VDELAY_PAL, align 4
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 4
  store i32 %75, i32* %76, align 16
  %77 = load i32, i32* @DEFAULT_VDELAY_PAL, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 1, %78
  %80 = shl i32 %79, 4
  %81 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 6
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @DEFAULT_VACTIVE_PAL, align 4
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 5
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @DEFAULT_VACTIVE_PAL, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 1, %88
  %90 = shl i32 %89, 5
  %91 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 6
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  %94 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %95 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SOLO_VO_FMT_TYPE_NTSC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %2
  %100 = getelementptr inbounds [15 x i32], [15 x i32]* %5, i64 0, i64 0
  br label %103

101:                                              ; preds = %2
  %102 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 0
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32* [ %100, %99 ], [ %102, %101 ]
  store i32* %104, i32** %8, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 13
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 4
  store i32 %108, i32* %106, align 4
  %109 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, -193
  store i32 %111, i32* %109, align 8
  %112 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %113 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %123

116:                                              ; preds = %103
  %117 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 35
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, 192
  store i32 %122, i32* %120, align 8
  br label %193

123:                                              ; preds = %103
  %124 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %125 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %149

128:                                              ; preds = %123
  %129 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 35
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, 2
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @TW_CHIP_OFFSET_ADDR(i32 0)
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, 64
  store i32 %138, i32* %136, align 8
  br label %148

139:                                              ; preds = %128
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @TW_CHIP_OFFSET_ADDR(i32 1)
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, 128
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %135
  br label %192

149:                                              ; preds = %123
  %150 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %151 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 16
  br i1 %153, label %154, label %191

154:                                              ; preds = %149
  %155 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 35
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, 3
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @TW_CHIP_OFFSET_ADDR(i32 0)
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, 64
  store i32 %164, i32* %162, align 8
  br label %190

165:                                              ; preds = %154
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @TW_CHIP_OFFSET_ADDR(i32 1)
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %170, align 8
  br label %189

172:                                              ; preds = %165
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @TW_CHIP_OFFSET_ADDR(i32 2)
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %177, align 8
  br label %188

179:                                              ; preds = %172
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @TW_CHIP_OFFSET_ADDR(i32 3)
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, 128
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %176
  br label %189

189:                                              ; preds = %188, %169
  br label %190

190:                                              ; preds = %189, %161
  br label %191

191:                                              ; preds = %190, %149
  br label %192

192:                                              ; preds = %191, %148
  br label %193

193:                                              ; preds = %192, %116
  %194 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 34
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %194, align 8
  %196 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 44
  %197 = load i32, i32* %196, align 16
  store i32 %197, i32* %196, align 16
  %198 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 44
  %199 = load i32, i32* %198, align 16
  %200 = or i32 %199, 32
  store i32 %200, i32* %198, align 16
  %201 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 28
  %202 = load i32, i32* %201, align 16
  %203 = or i32 %202, 32
  store i32 %203, i32* %201, align 16
  %204 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 48
  %205 = load i32, i32* %204, align 16
  %206 = or i32 %205, 255
  store i32 %206, i32* %204, align 16
  %207 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 49
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, 16
  store i32 %209, i32* %207, align 4
  %210 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 45
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, 15
  store i32 %212, i32* %210, align 4
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %268, %193
  %214 = load i32, i32* %10, align 4
  %215 = icmp slt i32 %214, 4
  br i1 %215, label %216, label %271

216:                                              ; preds = %213
  %217 = load i32*, i32** %8, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 13
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, -4
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %10, align 4
  switch i32 %221, label %242 [
    i32 0, label %222
    i32 1, label %227
    i32 2, label %232
    i32 3, label %237
  ]

222:                                              ; preds = %216
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 13
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, 33
  store i32 %226, i32* %224, align 4
  br label %242

227:                                              ; preds = %216
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 13
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, 32
  store i32 %231, i32* %229, align 4
  br label %242

232:                                              ; preds = %216
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 13
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, 35
  store i32 %236, i32* %234, align 4
  br label %242

237:                                              ; preds = %216
  %238 = load i32*, i32** %8, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 13
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, 34
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %216, %237, %232, %227, %222
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %264, %242
  %244 = load i32, i32* %9, align 4
  %245 = icmp slt i32 %244, 15
  br i1 %245, label %246, label %267

246:                                              ; preds = %243
  %247 = load i32, i32* %9, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %264

250:                                              ; preds = %246
  %251 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %252 = load i32, i32* @SOLO_I2C_TW, align 4
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %10, align 4
  %255 = mul nsw i32 %254, 16
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32*, i32** %8, align 8
  %259 = load i32, i32* %9, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @solo_i2c_writebyte(%struct.solo_dev* %251, i32 %252, i32 %253, i32 %257, i32 %262)
  br label %264

264:                                              ; preds = %250, %249
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %9, align 4
  br label %243

267:                                              ; preds = %243
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %213

271:                                              ; preds = %213
  store i32 64, i32* %9, align 4
  br label %272

272:                                              ; preds = %305, %271
  %273 = load i32, i32* %9, align 4
  %274 = icmp slt i32 %273, 118
  br i1 %274, label %275, label %308

275:                                              ; preds = %272
  %276 = load i32, i32* %9, align 4
  %277 = icmp eq i32 %276, 64
  br i1 %277, label %293, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %9, align 4
  %280 = icmp eq i32 %279, 89
  br i1 %280, label %293, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %9, align 4
  %283 = icmp eq i32 %282, 90
  br i1 %283, label %293, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %9, align 4
  %286 = icmp eq i32 %285, 93
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %9, align 4
  %289 = icmp eq i32 %288, 94
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %9, align 4
  %292 = icmp eq i32 %291, 95
  br i1 %292, label %293, label %294

293:                                              ; preds = %290, %287, %284, %281, %278, %275
  br label %305

294:                                              ; preds = %290
  %295 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %296 = load i32, i32* @SOLO_I2C_TW, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = sub nsw i32 %299, 64
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [54 x i32], [54 x i32]* %7, i64 0, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @solo_i2c_writebyte(%struct.solo_dev* %295, i32 %296, i32 %297, i32 %298, i32 %303)
  br label %305

305:                                              ; preds = %294, %293
  %306 = load i32, i32* %9, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %9, align 4
  br label %272

308:                                              ; preds = %272
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TW_CHIP_OFFSET_ADDR(i32) #2

declare dso_local i32 @solo_i2c_writebyte(%struct.solo_dev*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
