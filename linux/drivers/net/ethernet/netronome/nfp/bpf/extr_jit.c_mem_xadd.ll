; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_xadd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_mem_xadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@ALU_OP_SUB = common dso_local global i32 0, align 4
@ALU_OP_SUB_C = common dso_local global i32 0, align 4
@BR_BLO = common dso_local global i32 0, align 4
@ALU_OP_ADD = common dso_local global i32 0, align 4
@ALU_OP_ADD_C = common dso_local global i32 0, align 4
@CMD_OVE_DATA = common dso_local global i32 0, align 4
@CMD_OVE_LEN = common dso_local global i32 0, align 4
@CMD_OV_LEN = common dso_local global i32 0, align 4
@CMD_TGT_ADD_IMM = common dso_local global i32 0, align 4
@CMD_MODE_40b_BA = common dso_local global i32 0, align 4
@CMD_CTX_NO_SWAP = common dso_local global i32 0, align 4
@BR_UNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_TGT_ADD = common dso_local global i32 0, align 4
@CMD_CTX_SWAP_DEFER2 = common dso_local global i32 0, align 4
@CMD_CTX_SWAP_DEFER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @mem_xadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_xadd(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca %struct.nfp_insn_meta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %23 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %28 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %33 = call i32 @imm_b(%struct.nfp_prog* %32)
  %34 = call i32 @ur_load_imm_any(%struct.nfp_prog* %27, i64 %31, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %36 = call i32 @nfp_prog_current_offset(%struct.nfp_prog* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %38 = call i32 @nfp_prog_current_offset(%struct.nfp_prog* %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %40 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %3
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 2
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 2
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %3
  %50 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %51 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 3
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 3
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %61 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 2, %65
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %71 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %76 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 5
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add i32 %82, 5
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %79, %74, %69
  %85 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %86 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %84
  %90 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %91 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %89
  %95 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %96 = call i32 @imm_a(%struct.nfp_prog* %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @wrp_immed(%struct.nfp_prog* %97, i32 %98, i32 65535)
  %100 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %101 = call i32 (...) @reg_none()
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @ALU_OP_SUB, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @reg_b(i32 %104)
  %106 = call i32 @emit_alu(%struct.nfp_prog* %100, i32 %101, i32 %102, i32 %103, i32 %105)
  %107 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %108 = call i32 (...) @reg_none()
  %109 = call i32 @reg_imm(i32 0)
  %110 = load i32, i32* @ALU_OP_SUB_C, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @reg_b(i32 %112)
  %114 = call i32 @emit_alu(%struct.nfp_prog* %107, i32 %108, i32 %109, i32 %110, i32 %113)
  %115 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %116 = load i32, i32* @BR_BLO, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %119 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 2, i32 0
  %125 = call i32 @emit_br(%struct.nfp_prog* %115, i32 %116, i32 %117, i32 %124)
  br label %126

126:                                              ; preds = %94, %89, %84
  %127 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %128 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @reg_a(i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  %137 = call i32 @reg_b(i32 %136)
  store i32 %137, i32* %13, align 4
  br label %160

138:                                              ; preds = %126
  %139 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %140 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %141 = call i32 @imma_a(%struct.nfp_prog* %140)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @reg_a(i32 %142)
  %144 = load i32, i32* @ALU_OP_ADD, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @emit_alu(%struct.nfp_prog* %139, i32 %141, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %148 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %149 = call i32 @imma_b(%struct.nfp_prog* %148)
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @reg_a(i32 %151)
  %153 = load i32, i32* @ALU_OP_ADD_C, align 4
  %154 = call i32 @reg_imm(i32 0)
  %155 = call i32 @emit_alu(%struct.nfp_prog* %147, i32 %149, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %157 = call i32 @imma_a(%struct.nfp_prog* %156)
  store i32 %157, i32* %12, align 4
  %158 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %159 = call i32 @imma_b(%struct.nfp_prog* %158)
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %138, %132
  %161 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %162 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %160
  %166 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %167 = call i32 @imm_a(%struct.nfp_prog* %166)
  store i32 %167, i32* %16, align 4
  %168 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @CMD_OVE_DATA, align 4
  %171 = call i32 @FIELD_PREP(i32 %170, i32 2)
  %172 = load i32, i32* @CMD_OVE_LEN, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @CMD_OV_LEN, align 4
  %175 = load i32, i32* %7, align 4
  %176 = shl i32 %175, 2
  %177 = or i32 8, %176
  %178 = call i32 @FIELD_PREP(i32 %174, i32 %177)
  %179 = or i32 %173, %178
  %180 = call i32 @wrp_immed(%struct.nfp_prog* %168, i32 %169, i32 %179)
  %181 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @reg_b(i32 %183)
  %185 = call i32 @wrp_reg_or_subpart(%struct.nfp_prog* %181, i32 %182, i32 %184, i32 2, i32 2)
  %186 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %187 = load i32, i32* @CMD_TGT_ADD_IMM, align 4
  %188 = load i32, i32* @CMD_MODE_40b_BA, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @CMD_CTX_NO_SWAP, align 4
  %192 = call i32 @emit_cmd_indir(%struct.nfp_prog* %186, i32 %187, i32 %188, i32 0, i32 %189, i32 %190, i32 0, i32 %191)
  %193 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %194 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %165
  %198 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %199 = load i32, i32* @BR_UNC, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @emit_br(%struct.nfp_prog* %198, i32 %199, i32 %200, i32 0)
  br label %202

202:                                              ; preds = %197, %165
  br label %203

203:                                              ; preds = %202, %160
  %204 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %204, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %257

211:                                              ; preds = %203
  %212 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %6, align 8
  %213 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %248

216:                                              ; preds = %211
  %217 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %218 = load i32, i32* @CMD_TGT_ADD, align 4
  %219 = load i32, i32* @CMD_MODE_40b_BA, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %7, align 4
  %223 = shl i32 %222, 2
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = load i32, i32* @CMD_CTX_SWAP_DEFER2, align 4
  br label %230

228:                                              ; preds = %216
  %229 = load i32, i32* @CMD_CTX_SWAP_DEFER1, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = call i32 @emit_cmd(%struct.nfp_prog* %217, i32 %218, i32 %219, i32 0, i32 %220, i32 %221, i32 %223, i32 %231)
  %233 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %234 = call i32 @reg_xfer(i32 0)
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @reg_a(i32 %235)
  %237 = call i32 @wrp_mov(%struct.nfp_prog* %233, i32 %234, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %230
  %241 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %242 = call i32 @reg_xfer(i32 1)
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  %245 = call i32 @reg_a(i32 %244)
  %246 = call i32 @wrp_mov(%struct.nfp_prog* %241, i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %240, %230
  br label %248

248:                                              ; preds = %247, %211
  %249 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog* %249, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %248
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  br label %257

256:                                              ; preds = %248
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %256, %253, %208
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i64, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @nfp_prog_current_offset(%struct.nfp_prog*) #1

declare dso_local i32 @imm_a(%struct.nfp_prog*) #1

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @reg_imm(i32) #1

declare dso_local i32 @emit_br(%struct.nfp_prog*, i32, i32, i32) #1

declare dso_local i32 @reg_a(i32) #1

declare dso_local i32 @imma_a(%struct.nfp_prog*) #1

declare dso_local i32 @imma_b(%struct.nfp_prog*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @wrp_reg_or_subpart(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @emit_cmd_indir(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfp_prog_confirm_current_offset(%struct.nfp_prog*, i32) #1

declare dso_local i32 @emit_cmd(%struct.nfp_prog*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wrp_mov(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_xfer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
