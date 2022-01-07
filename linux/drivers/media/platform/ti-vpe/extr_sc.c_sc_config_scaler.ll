; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_config_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_sc.c_sc_config_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CFG_SELFGEN_FID = common dso_local global i32 0, align 4
@CFG_TRIM = common dso_local global i32 0, align 4
@CFG_ENABLE_SIN2_VER_INTP = common dso_local global i32 0, align 4
@CFG_INTERLACE_I = common dso_local global i32 0, align 4
@CFG_DCM_4X = common dso_local global i32 0, align 4
@CFG_DCM_2X = common dso_local global i32 0, align 4
@CFG_AUTO_HS = common dso_local global i32 0, align 4
@CFG_ENABLE_EV = common dso_local global i32 0, align 4
@CFG_USE_RAV = common dso_local global i32 0, align 4
@CFG_INVT_FID = common dso_local global i32 0, align 4
@CFG_SC_BYPASS = common dso_local global i32 0, align 4
@CFG_INTERLACE_O = common dso_local global i32 0, align 4
@CFG_Y_PK_EN = common dso_local global i32 0, align 4
@CFG_HP_BYPASS = common dso_local global i32 0, align 4
@CFG_LINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"hs config: src_w = %d, dst_w = %d, decimation = %s, lin_acc_inc = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"4x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"2x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"vs config(RAV): src_h = %d, dst_h = %d, factor = %d, acc_init = %08x, acc_init_b = %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"vs config(POLY): src_h = %d, dst_h = %d,row_acc_inc = %08x\0A\00", align 1
@CFG_LIN_ACC_INC_U_MASK = common dso_local global i32 0, align 4
@CFG_LIN_ACC_INC_U_SHIFT = common dso_local global i32 0, align 4
@CFG_TAR_W_SHIFT = common dso_local global i32 0, align 4
@CFG_TAR_H_SHIFT = common dso_local global i32 0, align 4
@CFG_SRC_W_SHIFT = common dso_local global i32 0, align 4
@CFG_SRC_H_SHIFT = common dso_local global i32 0, align 4
@CFG_ROW_ACC_INIT_RAV_B_SHIFT = common dso_local global i32 0, align 4
@CFG_ROW_ACC_INIT_RAV_SHIFT = common dso_local global i32 0, align 4
@CFG_COL_ACC_OFFSET_SHIFT = common dso_local global i32 0, align 4
@CFG_ORG_W_SHIFT = common dso_local global i32 0, align 4
@CFG_ORG_H_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc_config_scaler(%struct.sc_data* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sc_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  store %struct.sc_data* %0, %struct.sc_data** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %36 = load %struct.sc_data*, %struct.sc_data** %9, align 8
  %37 = getelementptr inbounds %struct.sc_data, %struct.sc_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.device* %39, %struct.device** %17, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %32, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %33, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32* %45, i32** %34, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  store i32* %47, i32** %35, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* @CFG_SELFGEN_FID, align 4
  %52 = load i32, i32* @CFG_TRIM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CFG_ENABLE_SIN2_VER_INTP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CFG_INTERLACE_I, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CFG_DCM_4X, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CFG_DCM_2X, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CFG_AUTO_HS, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @CFG_ENABLE_EV, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CFG_USE_RAV, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CFG_INVT_FID, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CFG_SC_BYPASS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CFG_INTERLACE_O, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CFG_Y_PK_EN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @CFG_HP_BYPASS, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CFG_LINEAR, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %18, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @CFG_SC_BYPASS, align 4
  %92 = load i32, i32* %18, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %94, i32* %96, align 4
  br label %269

97:                                               ; preds = %86, %8
  %98 = load i32, i32* @CFG_LINEAR, align 4
  %99 = load i32, i32* %18, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = udiv i32 %101, %102
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp sgt i32 %104, 4
  br i1 %105, label %106, label %110

106:                                              ; preds = %97
  %107 = load i32, i32* @CFG_DCM_4X, align 4
  %108 = load i32, i32* %18, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %18, align 4
  store i32 2, i32* %20, align 4
  br label %119

110:                                              ; preds = %97
  %111 = load i32, i32* %19, align 4
  %112 = icmp sgt i32 %111, 2
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @CFG_DCM_2X, align 4
  %115 = load i32, i32* %18, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %18, align 4
  store i32 1, i32* %20, align 4
  br label %118

117:                                              ; preds = %110
  store i32 0, i32* %20, align 4
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %118, %106
  %120 = load i32, i32* %15, align 4
  %121 = sub i32 %120, 1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %22, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %20, align 4
  %125 = lshr i32 %123, %124
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 24
  %128 = load i64, i64* %22, align 8
  %129 = call i32 @div64_u64(i32 %127, i64 %128)
  store i32 %129, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %130 = load %struct.device*, %struct.device** %17, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %119
  br label %141

136:                                              ; preds = %119
  %137 = load i32, i32* %20, align 4
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %141

141:                                              ; preds = %136, %135
  %142 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %135 ], [ %140, %136 ]
  %143 = load i32, i32* %23, align 4
  %144 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %130, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %132, i8* %142, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %14, align 4
  %147 = lshr i32 %146, 2
  %148 = icmp ult i32 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  store i32 1, i32* %21, align 4
  %150 = load i32, i32* @CFG_USE_RAV, align 4
  %151 = load i32, i32* %18, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %18, align 4
  br label %154

153:                                              ; preds = %141
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %153, %149
  %155 = load i32, i32* %21, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %154
  %158 = load i32, i32* %16, align 4
  %159 = shl i32 %158, 10
  %160 = load i32, i32* %14, align 4
  %161 = udiv i32 %159, %160
  store i32 %161, i32* %26, align 4
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %26, align 4
  %164 = add nsw i32 1, %163
  %165 = ashr i32 %164, 1
  %166 = add nsw i32 %162, %165
  store i32 %166, i32* %27, align 4
  %167 = load i32, i32* %27, align 4
  %168 = icmp sge i32 %167, 1024
  br i1 %168, label %169, label %172

169:                                              ; preds = %157
  %170 = load i32, i32* %27, align 4
  %171 = sub nsw i32 %170, 1024
  store i32 %171, i32* %27, align 4
  br label %172

172:                                              ; preds = %169, %157
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %27, align 4
  %175 = ashr i32 %174, 1
  %176 = add nsw i32 1, %175
  %177 = add nsw i32 %173, %176
  %178 = sub nsw i32 %177, 512
  store i32 %178, i32* %28, align 4
  %179 = load i32, i32* %28, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %172
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %28, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %28, align 4
  %185 = load i32, i32* %27, align 4
  %186 = mul nsw i32 %185, 2
  store i32 %186, i32* %27, align 4
  br label %187

187:                                              ; preds = %181, %172
  %188 = load %struct.device*, %struct.device** %17, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %26, align 4
  %192 = load i32, i32* %27, align 4
  %193 = load i32, i32* %28, align 4
  %194 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %188, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  br label %207

195:                                              ; preds = %154
  %196 = load i32, i32* %14, align 4
  %197 = sub i32 %196, 1
  %198 = shl i32 %197, 16
  %199 = load i32, i32* %16, align 4
  %200 = sub i32 %199, 1
  %201 = udiv i32 %198, %200
  store i32 %201, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %202 = load %struct.device*, %struct.device** %17, align 8
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %29, align 4
  %206 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %202, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %195, %187
  %208 = load i32, i32* %18, align 4
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %29, align 4
  %212 = load i32*, i32** %10, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  store i32 %211, i32* %213, align 4
  %214 = load i32, i32* %30, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32*, i32** %10, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 3
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %24, align 4
  %221 = load i32, i32* @CFG_LIN_ACC_INC_U_MASK, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @CFG_LIN_ACC_INC_U_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @CFG_TAR_W_SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = or i32 %224, %227
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* @CFG_TAR_H_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = or i32 %228, %231
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* @CFG_SRC_W_SHIFT, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @CFG_SRC_H_SHIFT, align 4
  %240 = shl i32 %238, %239
  %241 = or i32 %237, %240
  %242 = load i32*, i32** %10, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 5
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %28, align 4
  %245 = load i32, i32* @CFG_ROW_ACC_INIT_RAV_B_SHIFT, align 4
  %246 = shl i32 %244, %245
  %247 = load i32, i32* %27, align 4
  %248 = load i32, i32* @CFG_ROW_ACC_INIT_RAV_SHIFT, align 4
  %249 = shl i32 %247, %248
  %250 = or i32 %246, %249
  %251 = load i32*, i32** %10, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 6
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %23, align 4
  %254 = load i32*, i32** %32, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* %25, align 4
  %256 = load i32, i32* @CFG_COL_ACC_OFFSET_SHIFT, align 4
  %257 = shl i32 %255, %256
  %258 = load i32*, i32** %33, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i32, i32* %26, align 4
  %260 = load i32*, i32** %34, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* @CFG_ORG_W_SHIFT, align 4
  %263 = shl i32 %261, %262
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @CFG_ORG_H_SHIFT, align 4
  %266 = shl i32 %264, %265
  %267 = or i32 %263, %266
  %268 = load i32*, i32** %35, align 8
  store i32 %267, i32* %268, align 4
  br label %269

269:                                              ; preds = %207, %90
  ret void
}

declare dso_local i32 @div64_u64(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
