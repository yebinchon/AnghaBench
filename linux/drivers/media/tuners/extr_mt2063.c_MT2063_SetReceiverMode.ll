; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_SetReceiverMode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2063.c_MT2063_SetReceiverMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt2063_state = type { i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MT2063_NUM_RCVR_MODES = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MT2063_REG_PD1_TGT = common dso_local global i64 0, align 8
@RFAGCEN = common dso_local global i64* null, align 8
@MT2063_REG_CTRL_2C = common dso_local global i64 0, align 8
@LNARIN = common dso_local global i32* null, align 8
@MT2063_REG_FIFF_CTRL2 = common dso_local global i64 0, align 8
@FIFFQEN = common dso_local global i32* null, align 8
@FIFFQ = common dso_local global i32* null, align 8
@MT2063_REG_FIFF_CTRL = common dso_local global i64 0, align 8
@MT2063_REG_LNA_OV = common dso_local global i64 0, align 8
@ACLNAMAX = common dso_local global i32* null, align 8
@MT2063_REG_LNA_TGT = common dso_local global i64 0, align 8
@LNATGT = common dso_local global i32* null, align 8
@MT2063_REG_RF_OV = common dso_local global i64 0, align 8
@ACRFMAX = common dso_local global i32* null, align 8
@PD1TGT = common dso_local global i32* null, align 8
@ACFIFMAX = common dso_local global i32* null, align 8
@MT2063_REG_PART_REV = common dso_local global i64 0, align 8
@MT2063_B3 = common dso_local global i32 0, align 4
@MT2063_REG_FIF_OV = common dso_local global i64 0, align 8
@MT2063_REG_PD2_TGT = common dso_local global i64 0, align 8
@PD2TGT = common dso_local global i32* null, align 8
@RFOVDIS = common dso_local global i64* null, align 8
@FIFOVDIS = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"mt2063 mode changed to %s\0A\00", align 1
@mt2063_mode_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt2063_state*, i32)* @MT2063_SetReceiverMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2063_SetReceiverMode(%struct.mt2063_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mt2063_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt2063_state* %0, %struct.mt2063_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MT2063_NUM_RCVR_MODES, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %27 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, -65
  %33 = load i64*, i64** @RFAGCEN, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 64, i32 0
  %41 = or i32 %32, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %43 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %25
  %51 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %52 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mt2063_setreg(%struct.mt2063_state* %51, i64 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %25
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* %5, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  %62 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %63 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @MT2063_REG_CTRL_2C, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -4
  %69 = load i32*, i32** @LNARIN, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 3
  %75 = or i32 %68, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %77 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @MT2063_REG_CTRL_2C, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %61
  %85 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %86 = load i64, i64* @MT2063_REG_CTRL_2C, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @mt2063_setreg(%struct.mt2063_state* %85, i64 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %61
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i32, i32* %5, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %159

95:                                               ; preds = %92
  %96 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %97 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @MT2063_REG_FIFF_CTRL2, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -241
  %103 = load i32*, i32** @FIFFQEN, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 7
  %109 = or i32 %102, %108
  %110 = load i32*, i32** @FIFFQ, align 8
  %111 = load i32, i32* %4, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 4
  %116 = or i32 %109, %115
  store i32 %116, i32* %6, align 4
  %117 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %118 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @MT2063_REG_FIFF_CTRL2, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %158

125:                                              ; preds = %95
  %126 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %127 = load i64, i64* @MT2063_REG_FIFF_CTRL2, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @mt2063_setreg(%struct.mt2063_state* %126, i64 %127, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %133 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @MT2063_REG_FIFF_CTRL, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, 1
  store i32 %138, i32* %6, align 4
  %139 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %140 = load i64, i64* @MT2063_REG_FIFF_CTRL, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @mt2063_setreg(%struct.mt2063_state* %139, i64 %140, i32 %141)
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  %145 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %146 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @MT2063_REG_FIFF_CTRL, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, -2
  store i32 %151, i32* %6, align 4
  %152 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %153 = load i64, i64* @MT2063_REG_FIFF_CTRL, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @mt2063_setreg(%struct.mt2063_state* %152, i64 %153, i32 %154)
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %125, %95
  br label %159

159:                                              ; preds = %158, %92
  %160 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %161 = call i32 @mt2063_get_dnc_output_enable(%struct.mt2063_state* %160, i32* %7)
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @mt2063_set_dnc_output_enable(%struct.mt2063_state* %164, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %159
  %172 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %173 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @MT2063_REG_LNA_OV, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, -32
  %179 = load i32*, i32** @ACLNAMAX, align 8
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 31
  %185 = or i32 %178, %184
  store i32 %185, i32* %9, align 4
  %186 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %187 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @MT2063_REG_LNA_OV, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %171
  %195 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %196 = load i64, i64* @MT2063_REG_LNA_OV, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @mt2063_setreg(%struct.mt2063_state* %195, i64 %196, i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %194, %171
  br label %202

202:                                              ; preds = %201, %159
  %203 = load i32, i32* %5, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %202
  %206 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %207 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, -64
  %213 = load i32*, i32** @LNATGT, align 8
  %214 = load i32, i32* %4, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 63
  %219 = or i32 %212, %218
  store i32 %219, i32* %10, align 4
  %220 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %221 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %205
  %229 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %230 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @mt2063_setreg(%struct.mt2063_state* %229, i64 %230, i32 %231)
  %233 = load i32, i32* %5, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %228, %205
  br label %236

236:                                              ; preds = %235, %202
  %237 = load i32, i32* %5, align 4
  %238 = icmp sge i32 %237, 0
  br i1 %238, label %239, label %270

239:                                              ; preds = %236
  %240 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %241 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* @MT2063_REG_RF_OV, align 8
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %245, -32
  %247 = load i32*, i32** @ACRFMAX, align 8
  %248 = load i32, i32* %4, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 31
  %253 = or i32 %246, %252
  store i32 %253, i32* %11, align 4
  %254 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %255 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @MT2063_REG_RF_OV, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %239
  %263 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %264 = load i64, i64* @MT2063_REG_RF_OV, align 8
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @mt2063_setreg(%struct.mt2063_state* %263, i64 %264, i32 %265)
  %267 = load i32, i32* %5, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %5, align 4
  br label %269

269:                                              ; preds = %262, %239
  br label %270

270:                                              ; preds = %269, %236
  %271 = load i32, i32* %5, align 4
  %272 = icmp sge i32 %271, 0
  br i1 %272, label %273, label %304

273:                                              ; preds = %270
  %274 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %275 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, -64
  %281 = load i32*, i32** @PD1TGT, align 8
  %282 = load i32, i32* %4, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 63
  %287 = or i32 %280, %286
  store i32 %287, i32* %12, align 4
  %288 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %289 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %273
  %297 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %298 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %299 = load i32, i32* %12, align 4
  %300 = call i32 @mt2063_setreg(%struct.mt2063_state* %297, i64 %298, i32 %299)
  %301 = load i32, i32* %5, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %5, align 4
  br label %303

303:                                              ; preds = %296, %273
  br label %304

304:                                              ; preds = %303, %270
  %305 = load i32, i32* %5, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %352

307:                                              ; preds = %304
  %308 = load i32*, i32** @ACFIFMAX, align 8
  %309 = load i32, i32* %4, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %13, align 4
  %313 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %314 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* @MT2063_REG_PART_REV, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @MT2063_B3, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %307
  %322 = load i32, i32* %13, align 4
  %323 = icmp sgt i32 %322, 5
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  store i32 5, i32* %13, align 4
  br label %325

325:                                              ; preds = %324, %321, %307
  %326 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %327 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @MT2063_REG_FIF_OV, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, -32
  %333 = load i32, i32* %13, align 4
  %334 = and i32 %333, 31
  %335 = or i32 %332, %334
  store i32 %335, i32* %13, align 4
  %336 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %337 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @MT2063_REG_FIF_OV, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %13, align 4
  %343 = icmp ne i32 %341, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %325
  %345 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %346 = load i64, i64* @MT2063_REG_FIF_OV, align 8
  %347 = load i32, i32* %13, align 4
  %348 = call i32 @mt2063_setreg(%struct.mt2063_state* %345, i64 %346, i32 %347)
  %349 = load i32, i32* %5, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %5, align 4
  br label %351

351:                                              ; preds = %344, %325
  br label %352

352:                                              ; preds = %351, %304
  %353 = load i32, i32* %5, align 4
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %355, label %386

355:                                              ; preds = %352
  %356 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %357 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @MT2063_REG_PD2_TGT, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, -64
  %363 = load i32*, i32** @PD2TGT, align 8
  %364 = load i32, i32* %4, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = and i32 %367, 63
  %369 = or i32 %362, %368
  store i32 %369, i32* %14, align 4
  %370 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %371 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = load i64, i64* @MT2063_REG_PD2_TGT, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %14, align 4
  %377 = icmp ne i32 %375, %376
  br i1 %377, label %378, label %385

378:                                              ; preds = %355
  %379 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %380 = load i64, i64* @MT2063_REG_PD2_TGT, align 8
  %381 = load i32, i32* %14, align 4
  %382 = call i32 @mt2063_setreg(%struct.mt2063_state* %379, i64 %380, i32 %381)
  %383 = load i32, i32* %5, align 4
  %384 = or i32 %383, %382
  store i32 %384, i32* %5, align 4
  br label %385

385:                                              ; preds = %378, %355
  br label %386

386:                                              ; preds = %385, %352
  %387 = load i32, i32* %5, align 4
  %388 = icmp sge i32 %387, 0
  br i1 %388, label %389, label %422

389:                                              ; preds = %386
  %390 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %391 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = and i32 %395, -129
  %397 = load i64*, i64** @RFOVDIS, align 8
  %398 = load i32, i32* %4, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 128, i32 0
  %405 = or i32 %396, %404
  store i32 %405, i32* %6, align 4
  %406 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %407 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp ne i32 %411, %412
  br i1 %413, label %414, label %421

414:                                              ; preds = %389
  %415 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %416 = load i64, i64* @MT2063_REG_LNA_TGT, align 8
  %417 = load i32, i32* %6, align 4
  %418 = call i32 @mt2063_setreg(%struct.mt2063_state* %415, i64 %416, i32 %417)
  %419 = load i32, i32* %5, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %5, align 4
  br label %421

421:                                              ; preds = %414, %389
  br label %422

422:                                              ; preds = %421, %386
  %423 = load i32, i32* %5, align 4
  %424 = icmp sge i32 %423, 0
  br i1 %424, label %425, label %458

425:                                              ; preds = %422
  %426 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %427 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %430 = getelementptr inbounds i32, i32* %428, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, -129
  %433 = load i64*, i64** @FIFOVDIS, align 8
  %434 = load i32, i32* %4, align 4
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i64, i64* %433, i64 %435
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 128, i32 0
  %441 = or i32 %432, %440
  store i32 %441, i32* %6, align 4
  %442 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %443 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %442, i32 0, i32 0
  %444 = load i32*, i32** %443, align 8
  %445 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %446 = getelementptr inbounds i32, i32* %444, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %6, align 4
  %449 = icmp ne i32 %447, %448
  br i1 %449, label %450, label %457

450:                                              ; preds = %425
  %451 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %452 = load i64, i64* @MT2063_REG_PD1_TGT, align 8
  %453 = load i32, i32* %6, align 4
  %454 = call i32 @mt2063_setreg(%struct.mt2063_state* %451, i64 %452, i32 %453)
  %455 = load i32, i32* %5, align 4
  %456 = or i32 %455, %454
  store i32 %456, i32* %5, align 4
  br label %457

457:                                              ; preds = %450, %425
  br label %458

458:                                              ; preds = %457, %422
  %459 = load i32, i32* %5, align 4
  %460 = icmp sge i32 %459, 0
  br i1 %460, label %461, label %473

461:                                              ; preds = %458
  %462 = load i32, i32* %4, align 4
  %463 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %464 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %463, i32 0, i32 1
  store i32 %462, i32* %464, align 8
  %465 = load i32*, i32** @mt2063_mode_name, align 8
  %466 = load %struct.mt2063_state*, %struct.mt2063_state** %3, align 8
  %467 = getelementptr inbounds %struct.mt2063_state, %struct.mt2063_state* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %465, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %471)
  br label %473

473:                                              ; preds = %461, %458
  %474 = load i32, i32* %5, align 4
  ret i32 %474
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @mt2063_setreg(%struct.mt2063_state*, i64, i32) #1

declare dso_local i32 @mt2063_get_dnc_output_enable(%struct.mt2063_state*, i32*) #1

declare dso_local i32 @mt2063_set_dnc_output_enable(%struct.mt2063_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
