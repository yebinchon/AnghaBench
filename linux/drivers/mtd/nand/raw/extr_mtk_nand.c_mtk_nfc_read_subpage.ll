; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_subpage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_read_subpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_nfc = type { i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.mtk_nfc_nand_chip = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 (%struct.mtd_info.0*, i32*, i32)* }
%struct.mtd_info.0 = type opaque

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dma mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFI_CNFG = common dso_local global i32 0, align 4
@CNFG_READ_EN = common dso_local global i32 0, align 4
@CNFG_DMA_BURST_EN = common dso_local global i32 0, align 4
@CNFG_AHB = common dso_local global i32 0, align 4
@CNFG_AUTO_FMT_EN = common dso_local global i32 0, align 4
@CNFG_HW_ECC_EN = common dso_local global i32 0, align 4
@ECC_NFI_MODE = common dso_local global i32 0, align 4
@ECC_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ecc enable\0A\00", align 1
@CON_SEC_SHIFT = common dso_local global i32 0, align 4
@NFI_CON = common dso_local global i32 0, align 4
@INTR_AHB_DONE_EN = common dso_local global i32 0, align 4
@NFI_INTR_EN = common dso_local global i32 0, align 4
@NFI_STRADDR = common dso_local global i32 0, align 4
@CON_BRD = common dso_local global i32 0, align 4
@STAR_EN = common dso_local global i32 0, align 4
@NFI_STRDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"read ahb/dma done timeout\0A\00", align 1
@NFI_BYTELEN = common dso_local global i64 0, align 8
@MTK_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"subpage done timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32, i32, i32*, i32, i32)* @mtk_nfc_read_subpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nfc_read_subpage(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtk_nfc*, align 8
  %17 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %9, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %30 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %29)
  store %struct.mtk_nfc* %30, %struct.mtk_nfc** %16, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %32 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %31)
  store %struct.mtk_nfc_nand_chip* %32, %struct.mtk_nfc_nand_chip** %17, align 8
  %33 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %17, align 8
  %34 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %18, align 4
  store i32 0, i32* %25, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %36, %40
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %44, i32 %48)
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %21, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %57, %58
  %60 = mul nsw i32 %53, %59
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %61, %65
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %7
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %18, align 4
  %72 = mul nsw i32 %70, %71
  br label %74

73:                                               ; preds = %7
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ 0, %73 ]
  %76 = add nsw i32 %66, %75
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %26, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %21, align 4
  %80 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %78, i64 %85
  store i32* %86, i32** %27, align 8
  %87 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @nand_read_page_op(%struct.nand_chip* %87, i32 %88, i32 %89, i32* null, i32 0)
  %91 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %92 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %27, align 8
  %95 = load i64, i64* %26, align 8
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i32 @dma_map_single(i32 %93, i32* %94, i64 %95, i32 %96)
  store i32 %97, i32* %24, align 4
  %98 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %99 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %24, align 4
  %102 = call i32 @dma_mapping_error(i32 %100, i32 %101)
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %28, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %74
  %106 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %107 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %327

112:                                              ; preds = %74
  %113 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %114 = load i32, i32* @NFI_CNFG, align 4
  %115 = call i32 @nfi_readw(%struct.mtk_nfc* %113, i32 %114)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* @CNFG_READ_EN, align 4
  %117 = load i32, i32* @CNFG_DMA_BURST_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @CNFG_AHB, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %23, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %185, label %125

125:                                              ; preds = %112
  %126 = load i32, i32* @CNFG_AUTO_FMT_EN, align 4
  %127 = load i32, i32* @CNFG_HW_ECC_EN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* %23, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %23, align 4
  %131 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %132 = load i32, i32* %23, align 4
  %133 = load i32, i32* @NFI_CNFG, align 4
  %134 = call i32 @nfi_writew(%struct.mtk_nfc* %131, i32 %132, i32 %133)
  %135 = load i32, i32* @ECC_NFI_MODE, align 4
  %136 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %137 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %141 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @ECC_DECODE, align 4
  %144 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %145 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 4
  %147 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %148 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %151 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %150, i32 0, i32 4
  %152 = call i32 @mtk_ecc_enable(i32 %149, %struct.TYPE_6__* %151)
  store i32 %152, i32* %28, align 4
  %153 = load i32, i32* %28, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %125
  %156 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %157 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @CNFG_DMA_BURST_EN, align 4
  %161 = load i32, i32* @CNFG_AHB, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @CNFG_READ_EN, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @CNFG_AUTO_FMT_EN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CNFG_HW_ECC_EN, align 4
  %168 = or i32 %166, %167
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %23, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %23, align 4
  %172 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* @NFI_CNFG, align 4
  %175 = call i32 @nfi_writew(%struct.mtk_nfc* %172, i32 %173, i32 %174)
  %176 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %177 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %24, align 4
  %180 = load i64, i64* %26, align 8
  %181 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %182 = call i32 @dma_unmap_single(i32 %178, i32 %179, i64 %180, i32 %181)
  %183 = load i32, i32* %28, align 4
  store i32 %183, i32* %8, align 4
  br label %327

184:                                              ; preds = %125
  br label %190

185:                                              ; preds = %112
  %186 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* @NFI_CNFG, align 4
  %189 = call i32 @nfi_writew(%struct.mtk_nfc* %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %184
  %191 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* @CON_SEC_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* @NFI_CON, align 4
  %196 = call i32 @nfi_writel(%struct.mtk_nfc* %191, i32 %194, i32 %195)
  %197 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %198 = load i32, i32* @INTR_AHB_DONE_EN, align 4
  %199 = load i32, i32* @NFI_INTR_EN, align 4
  %200 = call i32 @nfi_writew(%struct.mtk_nfc* %197, i32 %198, i32 %199)
  %201 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %202 = load i32, i32* %24, align 4
  %203 = call i32 @lower_32_bits(i32 %202)
  %204 = load i32, i32* @NFI_STRADDR, align 4
  %205 = call i32 @nfi_writel(%struct.mtk_nfc* %201, i32 %203, i32 %204)
  %206 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %207 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %206, i32 0, i32 3
  %208 = call i32 @init_completion(i32* %207)
  %209 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %210 = load i32, i32* @NFI_CON, align 4
  %211 = call i32 @nfi_readl(%struct.mtk_nfc* %209, i32 %210)
  %212 = load i32, i32* @CON_BRD, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %23, align 4
  %214 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* @NFI_CON, align 4
  %217 = call i32 @nfi_writel(%struct.mtk_nfc* %214, i32 %215, i32 %216)
  %218 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %219 = load i32, i32* @STAR_EN, align 4
  %220 = load i32, i32* @NFI_STRDATA, align 4
  %221 = call i32 @nfi_writew(%struct.mtk_nfc* %218, i32 %219, i32 %220)
  %222 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %223 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %222, i32 0, i32 3
  %224 = call i32 @msecs_to_jiffies(i32 500)
  %225 = call i32 @wait_for_completion_timeout(i32* %223, i32 %224)
  store i32 %225, i32* %28, align 4
  %226 = load i32, i32* %28, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %190
  %229 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %230 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @dev_warn(i32 %231, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %233

233:                                              ; preds = %228, %190
  %234 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %235 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @NFI_BYTELEN, align 8
  %238 = add nsw i64 %236, %237
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %23, align 4
  %241 = call i32 @ADDRCNTR_SEC(i32 %240)
  %242 = load i32, i32* %20, align 4
  %243 = icmp sge i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i32, i32* @MTK_TIMEOUT, align 4
  %246 = call i32 @readl_poll_timeout_atomic(i64 %238, i32 %239, i32 %244, i32 10, i32 %245)
  store i32 %246, i32* %28, align 4
  %247 = load i32, i32* %28, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %233
  %250 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %251 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @dev_err(i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %254 = load i32, i32* @EIO, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %25, align 4
  br label %283

256:                                              ; preds = %233
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %282, label %259

259:                                              ; preds = %256
  %260 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %261 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @ECC_DECODE, align 4
  %264 = call i32 @mtk_ecc_wait_done(i32 %262, i32 %263)
  store i32 %264, i32* %28, align 4
  %265 = load i32, i32* %28, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load i32, i32* @ETIMEDOUT, align 4
  %269 = sub nsw i32 0, %268
  br label %276

270:                                              ; preds = %259
  %271 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %272 = load i32*, i32** %27, align 8
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %20, align 4
  %275 = call i32 @mtk_nfc_update_ecc_stats(%struct.mtd_info* %271, i32* %272, i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %270, %267
  %277 = phi i32 [ %269, %267 ], [ %275, %270 ]
  store i32 %277, i32* %25, align 4
  %278 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %279 = load i32, i32* %21, align 4
  %280 = load i32, i32* %20, align 4
  %281 = call i32 @mtk_nfc_read_fdm(%struct.nand_chip* %278, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %276, %256
  br label %283

283:                                              ; preds = %282, %249
  %284 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %285 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %24, align 4
  %288 = load i64, i64* %26, align 8
  %289 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %290 = call i32 @dma_unmap_single(i32 %286, i32 %287, i64 %288, i32 %289)
  %291 = load i32, i32* %15, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %283
  br label %322

294:                                              ; preds = %283
  %295 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %296 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @mtk_ecc_disable(i32 %297)
  %299 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %17, align 8
  %300 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i32, i32* %21, align 4
  %304 = load i32, i32* %22, align 4
  %305 = call i64 @clamp(i64 %302, i32 %303, i32 %304)
  %306 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %17, align 8
  %307 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %305, %309
  br i1 %310, label %311, label %321

311:                                              ; preds = %294
  %312 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %17, align 8
  %313 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 1
  %315 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %314, align 8
  %316 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %317 = bitcast %struct.mtd_info* %316 to %struct.mtd_info.0*
  %318 = load i32*, i32** %13, align 8
  %319 = load i32, i32* %15, align 4
  %320 = call i32 %315(%struct.mtd_info.0* %317, i32* %318, i32 %319)
  br label %321

321:                                              ; preds = %311, %294
  br label %322

322:                                              ; preds = %321, %293
  %323 = load %struct.mtk_nfc*, %struct.mtk_nfc** %16, align 8
  %324 = load i32, i32* @NFI_CON, align 4
  %325 = call i32 @nfi_writel(%struct.mtk_nfc* %323, i32 0, i32 %324)
  %326 = load i32, i32* %25, align 4
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %322, %155, %105
  %328 = load i32, i32* %8, align 4
  ret i32 %328
}

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @nfi_readw(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @nfi_writew(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @mtk_ecc_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @nfi_writel(%struct.mtk_nfc*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @nfi_readl(%struct.mtk_nfc*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @ADDRCNTR_SEC(i32) #1

declare dso_local i32 @mtk_ecc_wait_done(i32, i32) #1

declare dso_local i32 @mtk_nfc_update_ecc_stats(%struct.mtd_info*, i32*, i32, i32) #1

declare dso_local i32 @mtk_nfc_read_fdm(%struct.nand_chip*, i32, i32) #1

declare dso_local i32 @mtk_ecc_disable(i32) #1

declare dso_local i64 @clamp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
