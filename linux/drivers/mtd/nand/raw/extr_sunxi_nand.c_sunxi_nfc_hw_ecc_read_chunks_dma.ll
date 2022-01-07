; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_chunks_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nfc_hw_ecc_read_chunks_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32*, %struct.nand_ecc_ctrl, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32 }
%struct.sunxi_nfc = type { i64, i32 }
%struct.mtd_info = type { i32 }
%struct.scatterlist = type { i32 }

@NAND_NEED_SCRAMBLING = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@NAND_CMD_RNDOUT = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NFC_REG_RCMD_SET = common dso_local global i64 0, align 8
@NFC_PAGE_OP = common dso_local global i32 0, align 4
@NFC_DATA_SWAP_METHOD = common dso_local global i32 0, align 4
@NFC_DATA_TRANS = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NFC_CMD_INT_FLAG = common dso_local global i32 0, align 4
@NFC_REG_ECC_ST = common dso_local global i64 0, align 8
@NFC_ECC_ERR_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32, i32)* @sunxi_nfc_hw_ecc_read_chunks_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nfc_hw_ecc_read_chunks_dma(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sunxi_nfc*, align 8
  %14 = alloca %struct.mtd_info*, align 8
  %15 = alloca %struct.nand_ecc_ctrl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.scatterlist, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NAND_NEED_SCRAMBLING, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.sunxi_nfc* @to_sunxi_nfc(i32 %38)
  store %struct.sunxi_nfc* %39, %struct.sunxi_nfc** %13, align 8
  %40 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %41 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %40)
  store %struct.mtd_info* %41, %struct.mtd_info** %14, align 8
  %42 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 2
  store %struct.nand_ecc_ctrl* %43, %struct.nand_ecc_ctrl** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %44 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %45 = call i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %5
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %6, align 4
  br label %316

50:                                               ; preds = %5
  %51 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %54 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @sunxi_nfc_dma_op_prepare(%struct.sunxi_nfc* %51, i32* %52, i32 %55, i32 %56, i32 %57, %struct.scatterlist* %20)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %17, align 4
  store i32 %62, i32* %6, align 4
  br label %316

63:                                               ; preds = %50
  %64 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %65 = call i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip* %64)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @sunxi_nfc_randomizer_config(%struct.nand_chip* %66, i32 %67, i32 0)
  %69 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %70 = call i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip* %69)
  %71 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* @NAND_CMD_RNDOUT, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  %76 = load i32, i32* @NAND_CMD_READSTART, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %79 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NFC_REG_RCMD_SET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  %84 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %85 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_async_issue_pending(i32 %86)
  %88 = load i32, i32* @NFC_PAGE_OP, align 4
  %89 = load i32, i32* @NFC_DATA_SWAP_METHOD, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @NFC_DATA_TRANS, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %94 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NFC_REG_CMD, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %100 = load i32, i32* @NFC_CMD_INT_FLAG, align 4
  %101 = call i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc* %99, i32 %100, i32 0, i32 0)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %63
  %105 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %106 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dmaengine_terminate_all(i32 %107)
  br label %109

109:                                              ; preds = %104, %63
  %110 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %111 = call i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip* %110)
  %112 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %113 = call i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip* %112)
  %114 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @sunxi_nfc_dma_op_cleanup(%struct.sunxi_nfc* %114, i32 %115, %struct.scatterlist* %20)
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %6, align 4
  br label %316

121:                                              ; preds = %109
  %122 = load %struct.sunxi_nfc*, %struct.sunxi_nfc** %13, align 8
  %123 = getelementptr inbounds %struct.sunxi_nfc, %struct.sunxi_nfc* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NFC_REG_ECC_ST, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %128

128:                                              ; preds = %211, %121
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %214

132:                                              ; preds = %128
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %135 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  store i32 %137, i32* %22, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %140 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 4
  %143 = mul nsw i32 %138, %142
  store i32 %143, i32* %23, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32* %147, i32** %24, align 8
  %148 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %149 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %25, align 8
  %154 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %132
  %158 = load i32*, i32** %24, align 8
  br label %160

159:                                              ; preds = %132
  br label %160

160:                                              ; preds = %159, %157
  %161 = phi i32* [ %158, %157 ], [ null, %159 ]
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32*, i32** %25, align 8
  br label %167

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32* [ %165, %164 ], [ null, %166 ]
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %21, align 4
  %171 = call i32 @sunxi_nfc_hw_ecc_correct(%struct.nand_chip* %154, i32* %161, i32* %168, i32 %169, i32 %170, i32* %26)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %211

175:                                              ; preds = %167
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %203

178:                                              ; preds = %175
  %179 = load i32, i32* %26, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %203, label %181

181:                                              ; preds = %178
  %182 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %183 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %184 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32*, i32** %25, align 8
  %189 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %190 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 4
  %193 = call i32 @nand_change_read_column_op(%struct.nand_chip* %182, i32 %187, i32* %188, i32 %192, i32 0)
  %194 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %195 = load i32*, i32** %25, align 8
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %18, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @sunxi_nfc_hw_ecc_get_prot_oob_bytes(%struct.nand_chip* %194, i32* %195, i32 %196, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %181, %178, %175
  %204 = load i32, i32* %26, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 1, i32* %19, align 4
  br label %207

207:                                              ; preds = %206, %203
  %208 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @sunxi_nfc_hw_ecc_update_stats(%struct.nand_chip* %208, i32* %16, i32 %209)
  br label %211

211:                                              ; preds = %207, %174
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %128

214:                                              ; preds = %128
  %215 = load i32, i32* %21, align 4
  %216 = load i32, i32* @NFC_ECC_ERR_MSK, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %300

219:                                              ; preds = %214
  store i32 0, i32* %18, align 4
  br label %220

220:                                              ; preds = %296, %219
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %299

224:                                              ; preds = %220
  %225 = load i32, i32* %18, align 4
  %226 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %227 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %225, %228
  store i32 %229, i32* %27, align 4
  %230 = load i32, i32* %18, align 4
  %231 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %232 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 4
  %235 = mul nsw i32 %230, %234
  store i32 %235, i32* %28, align 4
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %27, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32* %239, i32** %29, align 8
  %240 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %241 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %28, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32* %245, i32** %30, align 8
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @NFC_ECC_ERR(i32 %247)
  %249 = and i32 %246, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %224
  br label %296

252:                                              ; preds = %224
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %252
  %256 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %257 = load i32, i32* %27, align 4
  %258 = load i32*, i32** %29, align 8
  %259 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %260 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @nand_change_read_column_op(%struct.nand_chip* %256, i32 %257, i32* %258, i32 %261, i32 0)
  br label %263

263:                                              ; preds = %255, %252
  %264 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %265 = load %struct.mtd_info*, %struct.mtd_info** %14, align 8
  %266 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %28, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32*, i32** %30, align 8
  %271 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %272 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 4
  %275 = call i32 @nand_change_read_column_op(%struct.nand_chip* %264, i32 %269, i32* %270, i32 %274, i32 0)
  %276 = load i32*, i32** %29, align 8
  %277 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %278 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %30, align 8
  %281 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %282 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 4
  %285 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %15, align 8
  %286 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @nand_check_erased_ecc_chunk(i32* %276, i32 %279, i32* %280, i32 %284, i32* null, i32 0, i32 %287)
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %17, align 4
  %290 = icmp sge i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %263
  store i32 1, i32* %19, align 4
  br label %292

292:                                              ; preds = %291, %263
  %293 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %294 = load i32, i32* %17, align 4
  %295 = call i32 @sunxi_nfc_hw_ecc_update_stats(%struct.nand_chip* %293, i32* %16, i32 %294)
  br label %296

296:                                              ; preds = %292, %251
  %297 = load i32, i32* %18, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %18, align 4
  br label %220

299:                                              ; preds = %220
  br label %300

300:                                              ; preds = %299, %214
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %300
  %304 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %305 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %306 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %19, align 4
  %309 = icmp ne i32 %308, 0
  %310 = xor i1 %309, true
  %311 = zext i1 %310 to i32
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @sunxi_nfc_hw_ecc_read_extra_oob(%struct.nand_chip* %304, i32* %307, i32* null, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %303, %300
  %315 = load i32, i32* %16, align 4
  store i32 %315, i32* %6, align 4
  br label %316

316:                                              ; preds = %314, %119, %61, %48
  %317 = load i32, i32* %6, align 4
  ret i32 %317
}

declare dso_local %struct.sunxi_nfc* @to_sunxi_nfc(i32) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_wait_cmd_fifo_empty(%struct.sunxi_nfc*) #1

declare dso_local i32 @sunxi_nfc_dma_op_prepare(%struct.sunxi_nfc*, i32*, i32, i32, i32, %struct.scatterlist*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_enable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_randomizer_config(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_enable(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @sunxi_nfc_wait_events(%struct.sunxi_nfc*, i32, i32, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @sunxi_nfc_randomizer_disable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_disable(%struct.nand_chip*) #1

declare dso_local i32 @sunxi_nfc_dma_op_cleanup(%struct.sunxi_nfc*, i32, %struct.scatterlist*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_correct(%struct.nand_chip*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_get_prot_oob_bytes(%struct.nand_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_update_stats(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @NFC_ECC_ERR(i32) #1

declare dso_local i32 @nand_check_erased_ecc_chunk(i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @sunxi_nfc_hw_ecc_read_extra_oob(%struct.nand_chip*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
