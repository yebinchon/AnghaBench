; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_page_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_page_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32, i32, i32 }
%struct.tegra_nand_controller = type { i32, i32, i32, i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@CMD_REG1 = common dso_local global i64 0, align 8
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@CMD_REG2 = common dso_local global i64 0, align 8
@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@COMMAND_CLE = common dso_local global i32 0, align 4
@COMMAND_SEC_CMD = common dso_local global i32 0, align 4
@ADDR_REG1 = common dso_local global i64 0, align 8
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@ADDR_REG2 = common dso_local global i64 0, align 8
@COMMAND_ALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dma mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_CFG_A = common dso_local global i64 0, align 8
@DATA_PTR = common dso_local global i64 0, align 8
@DMA_CFG_B = common dso_local global i64 0, align 8
@TAG_PTR = common dso_local global i64 0, align 8
@DMA_MST_CTRL_GO = common dso_local global i32 0, align 4
@DMA_MST_CTRL_PERF_EN = common dso_local global i32 0, align 4
@DMA_MST_CTRL_IE_DONE = common dso_local global i32 0, align 4
@DMA_MST_CTRL_IS_DONE = common dso_local global i32 0, align 4
@DMA_MST_CTRL_BURST_16 = common dso_local global i32 0, align 4
@DMA_MST_CTRL_EN_A = common dso_local global i32 0, align 4
@DMA_MST_CTRL_EN_B = common dso_local global i32 0, align 4
@DMA_MST_CTRL_IN = common dso_local global i32 0, align 4
@DMA_MST_CTRL_REUSE = common dso_local global i32 0, align 4
@DMA_MST_CTRL_OUT = common dso_local global i32 0, align 4
@DMA_MST_CTRL = common dso_local global i64 0, align 8
@COMMAND_GO = common dso_local global i32 0, align 4
@COMMAND_RBSY_CHK = common dso_local global i32 0, align 4
@COMMAND_A_VALID = common dso_local global i32 0, align 4
@COMMAND_B_VALID = common dso_local global i32 0, align 4
@COMMAND_RX = common dso_local global i32 0, align 4
@COMMAND_TX = common dso_local global i32 0, align 4
@COMMAND_AFT_DAT = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"COMMAND timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"DMA timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i8*, i8*, i32, i32, i32)* @tegra_nand_page_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_page_xfer(%struct.mtd_info* %0, %struct.nand_chip* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tegra_nand_controller*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %9, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.tegra_nand_controller* @to_tegra_ctrl(i32 %26)
  store %struct.tegra_nand_controller* %27, %struct.tegra_nand_controller** %16, align 8
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tegra_nand_select_target(%struct.nand_chip* %36, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %34
  %44 = load i32, i32* @NAND_CMD_READ0, align 4
  %45 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %46 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CMD_REG1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 %44, i64 %49)
  %51 = load i32, i32* @NAND_CMD_READSTART, align 4
  %52 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %53 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CMD_REG2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i32 %51, i64 %56)
  br label %73

58:                                               ; preds = %34
  %59 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %60 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %61 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CMD_REG1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel_relaxed(i32 %59, i64 %64)
  %66 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %67 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %68 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CMD_REG2, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel_relaxed(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %58, %43
  %74 = load i32, i32* @COMMAND_CLE, align 4
  %75 = load i32, i32* @COMMAND_SEC_CMD, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 16
  store i32 %78, i32* %20, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %73
  %82 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %20, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %81, %73
  %88 = load i32, i32* %20, align 4
  %89 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %90 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ADDR_REG1, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 %88, i64 %93)
  %95 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %87
  %102 = load i32, i32* %14, align 4
  %103 = ashr i32 %102, 16
  %104 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %105 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ADDR_REG2, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel_relaxed(i32 %103, i64 %108)
  %110 = load i32, i32* @COMMAND_ALE, align 4
  %111 = call i32 @COMMAND_ALE_SIZE(i32 5)
  %112 = or i32 %110, %111
  %113 = load i32, i32* %21, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %21, align 4
  br label %121

115:                                              ; preds = %87
  %116 = load i32, i32* @COMMAND_ALE, align 4
  %117 = call i32 @COMMAND_ALE_SIZE(i32 4)
  %118 = or i32 %116, %117
  %119 = load i32, i32* %21, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %115, %101
  %122 = load i8*, i8** %11, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %166

124:                                              ; preds = %121
  %125 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %126 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @dma_map_single(i32 %127, i8* %128, i32 %131, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %135 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = call i32 @dma_mapping_error(i32 %136, i32 %137)
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %124
  %142 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %143 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @dev_err(i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %364

148:                                              ; preds = %124
  %149 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %150 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %154 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DMA_CFG_A, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel_relaxed(i32 %152, i64 %157)
  %159 = load i32, i32* %18, align 4
  %160 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %161 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DATA_PTR, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @writel_relaxed(i32 %159, i64 %164)
  br label %166

166:                                              ; preds = %148, %121
  %167 = load i8*, i8** %12, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %209

169:                                              ; preds = %166
  %170 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %171 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %175 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @dma_map_single(i32 %172, i8* %173, i32 %176, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %180 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @dma_mapping_error(i32 %181, i32 %182)
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %169
  %187 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %188 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @dev_err(i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %23, align 4
  br label %349

193:                                              ; preds = %169
  %194 = load i32, i32* %13, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %197 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DMA_CFG_B, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writel_relaxed(i32 %195, i64 %200)
  %202 = load i32, i32* %19, align 4
  %203 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %204 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TAG_PTR, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @writel_relaxed(i32 %202, i64 %207)
  br label %209

209:                                              ; preds = %193, %166
  %210 = load i32, i32* @DMA_MST_CTRL_GO, align 4
  %211 = load i32, i32* @DMA_MST_CTRL_PERF_EN, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @DMA_MST_CTRL_IE_DONE, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @DMA_MST_CTRL_IS_DONE, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @DMA_MST_CTRL_BURST_16, align 4
  %218 = or i32 %216, %217
  store i32 %218, i32* %22, align 4
  %219 = load i8*, i8** %11, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %209
  %222 = load i32, i32* @DMA_MST_CTRL_EN_A, align 4
  %223 = load i32, i32* %22, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %22, align 4
  br label %225

225:                                              ; preds = %221, %209
  %226 = load i8*, i8** %12, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load i32, i32* @DMA_MST_CTRL_EN_B, align 4
  %230 = load i32, i32* %22, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %22, align 4
  br label %232

232:                                              ; preds = %228, %225
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i32, i32* @DMA_MST_CTRL_IN, align 4
  %237 = load i32, i32* @DMA_MST_CTRL_REUSE, align 4
  %238 = or i32 %236, %237
  %239 = load i32, i32* %22, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %22, align 4
  br label %245

241:                                              ; preds = %232
  %242 = load i32, i32* @DMA_MST_CTRL_OUT, align 4
  %243 = load i32, i32* %22, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %22, align 4
  br label %245

245:                                              ; preds = %241, %235
  %246 = load i32, i32* %22, align 4
  %247 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %248 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DMA_MST_CTRL, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel_relaxed(i32 %246, i64 %251)
  %253 = load i32, i32* @COMMAND_GO, align 4
  %254 = load i32, i32* @COMMAND_RBSY_CHK, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @COMMAND_TRANS_SIZE(i32 9)
  %257 = or i32 %255, %256
  %258 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %259 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @COMMAND_CE(i32 %260)
  %262 = or i32 %257, %261
  %263 = load i32, i32* %21, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %21, align 4
  %265 = load i8*, i8** %11, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %245
  %268 = load i32, i32* @COMMAND_A_VALID, align 4
  %269 = load i32, i32* %21, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %21, align 4
  br label %271

271:                                              ; preds = %267, %245
  %272 = load i8*, i8** %12, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load i32, i32* @COMMAND_B_VALID, align 4
  %276 = load i32, i32* %21, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %21, align 4
  br label %278

278:                                              ; preds = %274, %271
  %279 = load i32, i32* %15, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load i32, i32* @COMMAND_RX, align 4
  %283 = load i32, i32* %21, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %21, align 4
  br label %291

285:                                              ; preds = %278
  %286 = load i32, i32* @COMMAND_TX, align 4
  %287 = load i32, i32* @COMMAND_AFT_DAT, align 4
  %288 = or i32 %286, %287
  %289 = load i32, i32* %21, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %21, align 4
  br label %291

291:                                              ; preds = %285, %281
  %292 = load i32, i32* %21, align 4
  %293 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %294 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @COMMAND, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writel_relaxed(i32 %292, i64 %297)
  %299 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %300 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %299, i32 0, i32 2
  %301 = call i32 @msecs_to_jiffies(i32 500)
  %302 = call i32 @wait_for_completion_timeout(i32* %300, i32 %301)
  store i32 %302, i32* %23, align 4
  %303 = load i32, i32* %23, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %316, label %305

305:                                              ; preds = %291
  %306 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %307 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @dev_err(i32 %308, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %310 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %311 = call i32 @tegra_nand_dump_reg(%struct.tegra_nand_controller* %310)
  %312 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %313 = call i32 @tegra_nand_controller_abort(%struct.tegra_nand_controller* %312)
  %314 = load i32, i32* @ETIMEDOUT, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %23, align 4
  br label %335

316:                                              ; preds = %291
  %317 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %318 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %317, i32 0, i32 1
  %319 = call i32 @msecs_to_jiffies(i32 500)
  %320 = call i32 @wait_for_completion_timeout(i32* %318, i32 %319)
  store i32 %320, i32* %23, align 4
  %321 = load i32, i32* %23, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %334, label %323

323:                                              ; preds = %316
  %324 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %325 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @dev_err(i32 %326, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %328 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %329 = call i32 @tegra_nand_dump_reg(%struct.tegra_nand_controller* %328)
  %330 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %331 = call i32 @tegra_nand_controller_abort(%struct.tegra_nand_controller* %330)
  %332 = load i32, i32* @ETIMEDOUT, align 4
  %333 = sub nsw i32 0, %332
  store i32 %333, i32* %23, align 4
  br label %335

334:                                              ; preds = %316
  store i32 0, i32* %23, align 4
  br label %335

335:                                              ; preds = %334, %323, %305
  %336 = load i8*, i8** %12, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %348

338:                                              ; preds = %335
  %339 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %340 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %19, align 4
  %343 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %344 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* %17, align 4
  %347 = call i32 @dma_unmap_single(i32 %341, i32 %342, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %338, %335
  br label %349

349:                                              ; preds = %348, %186
  %350 = load i8*, i8** %11, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %362

352:                                              ; preds = %349
  %353 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %16, align 8
  %354 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %358 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %17, align 4
  %361 = call i32 @dma_unmap_single(i32 %355, i32 %356, i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %352, %349
  %363 = load i32, i32* %23, align 4
  store i32 %363, i32* %8, align 4
  br label %364

364:                                              ; preds = %362, %141
  %365 = load i32, i32* %8, align 4
  ret i32 %365
}

declare dso_local %struct.tegra_nand_controller* @to_tegra_ctrl(i32) #1

declare dso_local i32 @tegra_nand_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @COMMAND_ALE_SIZE(i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @COMMAND_TRANS_SIZE(i32) #1

declare dso_local i32 @COMMAND_CE(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tegra_nand_dump_reg(%struct.tegra_nand_controller*) #1

declare dso_local i32 @tegra_nand_controller_abort(%struct.tegra_nand_controller*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
