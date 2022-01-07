; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_cpp_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_cpp_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@PTR_TO_MAP_VALUE = common dso_local global i64 0, align 8
@CMD_OVE_LEN = common dso_local global i32 0, align 4
@CMD_OV_LEN = common dso_local global i32 0, align 4
@CMD_TGT_READ32_SWAP = common dso_local global i32 0, align 4
@CMD_MODE_40b_BA = common dso_local global i32 0, align 4
@CMD_MODE_32b = common dso_local global i32 0, align 4
@CMD_CTX_SWAP = common dso_local global i32 0, align 4
@CMD_TGT_WRITE8_SWAP = common dso_local global i32 0, align 4
@CMD_TGT_WRITE32_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @nfp_cpp_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_cpp_memcpy(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca %struct.nfp_insn_meta*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %4, align 8
  %13 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %14 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %19 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @abs(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %24 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %28 = call i32 @imm_b(%struct.nfp_prog* %27)
  %29 = call i32 @re_load_imm_any(%struct.nfp_prog* %22, i32 %26, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PTR_TO_MAP_VALUE, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %38 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @reg_a(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @round_up(i32 %43, i32 4)
  %45 = sdiv i32 %44, 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %2
  %49 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %50 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %51 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 2
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @addr40_offset(%struct.nfp_prog* %49, i32 %54, i32 %55, i32* %7, i32* %8)
  br label %57

57:                                               ; preds = %48, %2
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 32
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %62 = call i32 (...) @reg_none()
  %63 = load i32, i32* @CMD_OVE_LEN, align 4
  %64 = load i32, i32* @CMD_OV_LEN, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @FIELD_PREP(i32 %64, i32 %66)
  %68 = or i32 %63, %67
  %69 = call i32 @wrp_immed(%struct.nfp_prog* %61, i32 %62, i32 %68)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %72 = load i32, i32* @CMD_TGT_READ32_SWAP, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @CMD_MODE_40b_BA, align 4
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @CMD_MODE_32b, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @CMD_CTX_SWAP, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 32
  %88 = zext i1 %87 to i32
  %89 = call i32 @emit_cmd_any(%struct.nfp_prog* %71, i32 %72, i32 %80, i32 0, i32 %81, i32 %82, i32 %84, i32 %85, i32 %88)
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %101, %79
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @reg_xfer(i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @reg_xfer(i32 %98)
  %100 = call i32 @wrp_mov(%struct.nfp_prog* %95, i32 %97, i32 %99)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %90

104:                                              ; preds = %90
  %105 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %106 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %107 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %106, i32 0, i32 2
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %112 = call i32 @imm_b(%struct.nfp_prog* %111)
  %113 = call i32 @re_load_imm_any(%struct.nfp_prog* %105, i32 %110, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp sle i32 %114, 8
  br i1 %115, label %116, label %132

116:                                              ; preds = %104
  %117 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %118 = load i32, i32* @CMD_TGT_WRITE8_SWAP, align 4
  %119 = load i32, i32* @CMD_MODE_32b, align 4
  %120 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %121 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 2
  %126 = call i32 @reg_a(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @CMD_CTX_SWAP, align 4
  %131 = call i32 @emit_cmd(%struct.nfp_prog* %117, i32 %118, i32 %119, i32 0, i32 %126, i32 %127, i32 %129, i32 %130)
  br label %315

132:                                              ; preds = %104
  %133 = load i32, i32* %6, align 4
  %134 = icmp sle i32 %133, 32
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @IS_ALIGNED(i32 %136, i32 4)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %141 = load i32, i32* @CMD_TGT_WRITE32_SWAP, align 4
  %142 = load i32, i32* @CMD_MODE_32b, align 4
  %143 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %144 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 2
  %149 = call i32 @reg_a(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* @CMD_CTX_SWAP, align 4
  %154 = call i32 @emit_cmd(%struct.nfp_prog* %140, i32 %141, i32 %142, i32 0, i32 %149, i32 %150, i32 %152, i32 %153)
  br label %314

155:                                              ; preds = %135, %132
  %156 = load i32, i32* %6, align 4
  %157 = icmp sle i32 %156, 32
  br i1 %157, label %158, label %183

158:                                              ; preds = %155
  %159 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %160 = call i32 (...) @reg_none()
  %161 = load i32, i32* @CMD_OVE_LEN, align 4
  %162 = load i32, i32* @CMD_OV_LEN, align 4
  %163 = load i32, i32* %6, align 4
  %164 = sub nsw i32 %163, 1
  %165 = call i32 @FIELD_PREP(i32 %162, i32 %164)
  %166 = or i32 %161, %165
  %167 = call i32 @wrp_immed(%struct.nfp_prog* %159, i32 %160, i32 %166)
  %168 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %169 = load i32, i32* @CMD_TGT_WRITE8_SWAP, align 4
  %170 = load i32, i32* @CMD_MODE_32b, align 4
  %171 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %172 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %171, i32 0, i32 2
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 2
  %177 = call i32 @reg_a(i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* @CMD_CTX_SWAP, align 4
  %182 = call i32 @emit_cmd_indir(%struct.nfp_prog* %168, i32 %169, i32 %170, i32 0, i32 %177, i32 %178, i32 %180, i32 %181)
  br label %313

183:                                              ; preds = %155
  %184 = load i32, i32* %6, align 4
  %185 = call i64 @IS_ALIGNED(i32 %184, i32 4)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %183
  %188 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %189 = call i32 (...) @reg_none()
  %190 = load i32, i32* @CMD_OVE_LEN, align 4
  %191 = load i32, i32* @CMD_OV_LEN, align 4
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @FIELD_PREP(i32 %191, i32 %193)
  %195 = or i32 %190, %194
  %196 = call i32 @wrp_immed(%struct.nfp_prog* %188, i32 %189, i32 %195)
  %197 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %198 = load i32, i32* @CMD_TGT_WRITE32_SWAP, align 4
  %199 = load i32, i32* @CMD_MODE_32b, align 4
  %200 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %201 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %200, i32 0, i32 2
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 2
  %206 = call i32 @reg_a(i32 %205)
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %11, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load i32, i32* @CMD_CTX_SWAP, align 4
  %211 = call i32 @emit_cmd_indir(%struct.nfp_prog* %197, i32 %198, i32 %199, i32 0, i32 %206, i32 %207, i32 %209, i32 %210)
  br label %312

212:                                              ; preds = %183
  %213 = load i32, i32* %6, align 4
  %214 = icmp sle i32 %213, 40
  br i1 %214, label %215, label %254

215:                                              ; preds = %212
  %216 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %217 = load i32, i32* @CMD_TGT_WRITE32_SWAP, align 4
  %218 = load i32, i32* @CMD_MODE_32b, align 4
  %219 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %220 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %219, i32 0, i32 2
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %223, 2
  %225 = call i32 @reg_a(i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @CMD_CTX_SWAP, align 4
  %228 = call i32 @emit_cmd(%struct.nfp_prog* %216, i32 %217, i32 %218, i32 0, i32 %225, i32 %226, i32 7, i32 %227)
  %229 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %230 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %231 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %230, i32 0, i32 2
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 32
  %236 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %237 = call i32 @imm_b(%struct.nfp_prog* %236)
  %238 = call i32 @re_load_imm_any(%struct.nfp_prog* %229, i32 %235, i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %240 = load i32, i32* @CMD_TGT_WRITE8_SWAP, align 4
  %241 = load i32, i32* @CMD_MODE_32b, align 4
  %242 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %243 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %242, i32 0, i32 2
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 2
  %248 = call i32 @reg_a(i32 %247)
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %6, align 4
  %251 = sub nsw i32 %250, 33
  %252 = load i32, i32* @CMD_CTX_SWAP, align 4
  %253 = call i32 @emit_cmd(%struct.nfp_prog* %239, i32 %240, i32 %241, i32 8, i32 %248, i32 %249, i32 %251, i32 %252)
  br label %311

254:                                              ; preds = %212
  %255 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %256 = call i32 (...) @reg_none()
  %257 = load i32, i32* @CMD_OVE_LEN, align 4
  %258 = load i32, i32* @CMD_OV_LEN, align 4
  %259 = load i32, i32* %11, align 4
  %260 = sub nsw i32 %259, 2
  %261 = call i32 @FIELD_PREP(i32 %258, i32 %260)
  %262 = or i32 %257, %261
  %263 = call i32 @wrp_immed(%struct.nfp_prog* %255, i32 %256, i32 %262)
  %264 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %265 = load i32, i32* @CMD_TGT_WRITE32_SWAP, align 4
  %266 = load i32, i32* @CMD_MODE_32b, align 4
  %267 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %268 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %267, i32 0, i32 2
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %271, 2
  %273 = call i32 @reg_a(i32 %272)
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %11, align 4
  %276 = sub nsw i32 %275, 2
  %277 = load i32, i32* @CMD_CTX_SWAP, align 4
  %278 = call i32 @emit_cmd_indir(%struct.nfp_prog* %264, i32 %265, i32 %266, i32 0, i32 %273, i32 %274, i32 %276, i32 %277)
  %279 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %280 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %279, i32 0, i32 2
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %11, align 4
  %285 = sub nsw i32 %284, 1
  %286 = mul nsw i32 %285, 4
  %287 = add nsw i32 %283, %286
  store i32 %287, i32* %12, align 4
  %288 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %289 = load i32, i32* %12, align 4
  %290 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %291 = call i32 @imm_b(%struct.nfp_prog* %290)
  %292 = call i32 @re_load_imm_any(%struct.nfp_prog* %288, i32 %289, i32 %291)
  store i32 %292, i32* %8, align 4
  %293 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %294 = load i32, i32* @CMD_TGT_WRITE8_SWAP, align 4
  %295 = load i32, i32* @CMD_MODE_32b, align 4
  %296 = load i32, i32* %11, align 4
  %297 = sub nsw i32 %296, 1
  %298 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %299 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %298, i32 0, i32 2
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %302, 2
  %304 = call i32 @reg_a(i32 %303)
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* %6, align 4
  %307 = and i32 %306, 3
  %308 = sub nsw i32 %307, 1
  %309 = load i32, i32* @CMD_CTX_SWAP, align 4
  %310 = call i32 @emit_cmd(%struct.nfp_prog* %293, i32 %294, i32 %295, i32 %297, i32 %304, i32 %305, i32 %308, i32 %309)
  br label %311

311:                                              ; preds = %254, %215
  br label %312

312:                                              ; preds = %311, %187
  br label %313

313:                                              ; preds = %312, %158
  br label %314

314:                                              ; preds = %313, %139
  br label %315

315:                                              ; preds = %314, %116
  %316 = load i32, i32* %5, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 0, i32* %11, align 4
  br label %333

319:                                              ; preds = %315
  %320 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %321 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @BPF_SIZE(i32 %323)
  %325 = icmp ne i32 %324, 130
  br i1 %325, label %326, label %329

326:                                              ; preds = %319
  %327 = load i32, i32* %11, align 4
  %328 = sub nsw i32 %327, 1
  store i32 %328, i32* %11, align 4
  br label %332

329:                                              ; preds = %319
  %330 = load i32, i32* %11, align 4
  %331 = sub nsw i32 %330, 2
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %318
  %334 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %335 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @BPF_SIZE(i32 %337)
  switch i32 %338, label %407 [
    i32 131, label %339
    i32 129, label %360
    i32 128, label %374
    i32 130, label %384
  ]

339:                                              ; preds = %333
  %340 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %341 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %342 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = mul nsw i32 %344, 2
  %346 = call i32 @reg_both(i32 %345)
  %347 = load i32, i32* %11, align 4
  %348 = call i32 @reg_xfer(i32 %347)
  %349 = load i32, i32* %6, align 4
  %350 = call i64 @IS_ALIGNED(i32 %349, i32 4)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %339
  br label %357

353:                                              ; preds = %339
  %354 = load i32, i32* %6, align 4
  %355 = and i32 %354, 3
  %356 = sub nsw i32 %355, 1
  br label %357

357:                                              ; preds = %353, %352
  %358 = phi i32 [ 3, %352 ], [ %356, %353 ]
  %359 = call i32 @wrp_reg_subpart(%struct.nfp_prog* %340, i32 %346, i32 %348, i32 1, i32 %358)
  br label %407

360:                                              ; preds = %333
  %361 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %362 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %363 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = mul nsw i32 %365, 2
  %367 = call i32 @reg_both(i32 %366)
  %368 = load i32, i32* %11, align 4
  %369 = call i32 @reg_xfer(i32 %368)
  %370 = load i32, i32* %6, align 4
  %371 = and i32 %370, 3
  %372 = xor i32 %371, 2
  %373 = call i32 @wrp_reg_subpart(%struct.nfp_prog* %361, i32 %367, i32 %369, i32 2, i32 %372)
  br label %407

374:                                              ; preds = %333
  %375 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %376 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %377 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = mul nsw i32 %379, 2
  %381 = call i32 @reg_both(i32 %380)
  %382 = call i32 @reg_xfer(i32 0)
  %383 = call i32 @wrp_mov(%struct.nfp_prog* %375, i32 %381, i32 %382)
  br label %407

384:                                              ; preds = %333
  %385 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %386 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %387 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = mul nsw i32 %389, 2
  %391 = call i32 @reg_both(i32 %390)
  %392 = load i32, i32* %11, align 4
  %393 = call i32 @reg_xfer(i32 %392)
  %394 = call i32 @wrp_mov(%struct.nfp_prog* %385, i32 %391, i32 %393)
  %395 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %396 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %397 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = mul nsw i32 %399, 2
  %401 = add nsw i32 %400, 1
  %402 = call i32 @reg_both(i32 %401)
  %403 = load i32, i32* %11, align 4
  %404 = add nsw i32 %403, 1
  %405 = call i32 @reg_xfer(i32 %404)
  %406 = call i32 @wrp_mov(%struct.nfp_prog* %395, i32 %402, i32 %405)
  br label %407

407:                                              ; preds = %333, %384, %374, %360, %357
  %408 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %409 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @BPF_SIZE(i32 %411)
  %413 = icmp ne i32 %412, 130
  br i1 %413, label %414, label %424

414:                                              ; preds = %407
  %415 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %416 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %4, align 8
  %417 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = mul nsw i32 %419, 2
  %421 = add nsw i32 %420, 1
  %422 = call i32 @reg_both(i32 %421)
  %423 = call i32 @wrp_immed(%struct.nfp_prog* %415, i32 %422, i32 0)
  br label %424

424:                                              ; preds = %414, %407
  ret i32 0
}

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @re_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @addr40_offset(%struct.nfp_prog*, i32, i32, i32*, i32*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @emit_cmd_any(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_xfer(i32) #1

declare dso_local i32 @emit_cmd(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @emit_cmd_indir(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BPF_SIZE(i32) #1

declare dso_local i32 @wrp_reg_subpart(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
