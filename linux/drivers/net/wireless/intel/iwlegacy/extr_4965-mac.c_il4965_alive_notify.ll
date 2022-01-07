; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alive_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_alive_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, i32*, i64, i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IL49_SCD_SRAM_BASE_ADDR = common dso_local global i32 0, align 4
@IL49_SCD_CONTEXT_DATA_OFFSET = common dso_local global i64 0, align 8
@IL49_SCD_TX_STTS_BITMAP_OFFSET = common dso_local global i64 0, align 8
@IL49_SCD_TRANSLATE_TBL_OFFSET = common dso_local global i64 0, align 8
@IL49_SCD_DRAM_BASE_ADDR = common dso_local global i32 0, align 4
@FH49_TCSR_CHNL_NUM = common dso_local global i32 0, align 4
@FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE = common dso_local global i32 0, align 4
@FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE = common dso_local global i32 0, align 4
@FH49_TX_CHICKEN_BITS_REG = common dso_local global i32 0, align 4
@FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN = common dso_local global i64 0, align 8
@IL49_SCD_QUEUECHAIN_SEL = common dso_local global i32 0, align 4
@HBUS_TARG_WRPTR = common dso_local global i32 0, align 4
@SCD_WIN_SIZE = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK = common dso_local global i32 0, align 4
@SCD_FRAME_LIMIT = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS = common dso_local global i32 0, align 4
@IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK = common dso_local global i32 0, align 4
@IL49_SCD_INTERRUPT_MASK = common dso_local global i32 0, align 4
@IL_DEFAULT_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@default_queue_to_tx_fifo = common dso_local global i32* null, align 8
@IL_TX_FIFO_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_alive_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_alive_notify(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %14 = load i32, i32* @IL49_SCD_SRAM_BASE_ADDR, align 4
  %15 = call i64 @il_rd_prph(%struct.il_priv* %13, i32 %14)
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IL49_SCD_CONTEXT_DATA_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %35, %1
  %24 = load i64, i64* %3, align 8
  %25 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IL49_SCD_TX_STTS_BITMAP_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @il_write_targ_mem(%struct.il_priv* %32, i64 %33, i32 0)
  br label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 4
  store i64 %37, i64* %3, align 8
  br label %23

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IL49_SCD_TRANSLATE_TBL_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @il_write_targ_mem(%struct.il_priv* %48, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, 4
  store i64 %53, i64* %3, align 8
  br label %39

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %71, %54
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE(i32 %63)
  %65 = add nsw i64 %59, %64
  %66 = icmp slt i64 %56, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @il_write_targ_mem(%struct.il_priv* %68, i64 %69, i32 0)
  br label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 4
  store i64 %73, i64* %3, align 8
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %76 = load i32, i32* @IL49_SCD_DRAM_BASE_ADDR, align 4
  %77 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 10
  %82 = call i32 @il_wr_prph(%struct.il_priv* %75, i32 %76, i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %95, %74
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @FH49_TCSR_CHNL_NUM, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @FH49_TCSR_CHNL_TX_CONFIG_REG(i32 %89)
  %91 = load i32, i32* @FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE, align 4
  %92 = load i32, i32* @FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @il_wr(%struct.il_priv* %88, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %83

98:                                               ; preds = %83
  %99 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %100 = load i32, i32* @FH49_TX_CHICKEN_BITS_REG, align 4
  %101 = call i64 @il_rd(%struct.il_priv* %99, i32 %100)
  store i64 %101, i64* %7, align 8
  %102 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %103 = load i32, i32* @FH49_TX_CHICKEN_BITS_REG, align 4
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN, align 8
  %106 = or i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @il_wr(%struct.il_priv* %102, i32 %103, i32 %107)
  %109 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %110 = load i32, i32* @IL49_SCD_QUEUECHAIN_SEL, align 4
  %111 = call i32 @il_wr_prph(%struct.il_priv* %109, i32 %110, i32 0)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %157, %98
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %115 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %160

119:                                              ; preds = %112
  %120 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @IL49_SCD_QUEUE_RDPTR(i32 %121)
  %123 = call i32 @il_wr_prph(%struct.il_priv* %120, i32 %122, i32 0)
  %124 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %125 = load i32, i32* @HBUS_TARG_WRPTR, align 4
  %126 = load i32, i32* %5, align 4
  %127 = shl i32 %126, 8
  %128 = or i32 0, %127
  %129 = call i32 @il_wr(%struct.il_priv* %124, i32 %125, i32 %128)
  %130 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %131 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %132 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32 %134)
  %136 = add nsw i64 %133, %135
  %137 = load i32, i32* @SCD_WIN_SIZE, align 4
  %138 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK, align 4
  %141 = and i32 %139, %140
  %142 = call i32 @il_write_targ_mem(%struct.il_priv* %130, i64 %136, i32 %141)
  %143 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %144 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %145 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32 %147)
  %149 = add nsw i64 %146, %148
  %150 = add i64 %149, 8
  %151 = load i32, i32* @SCD_FRAME_LIMIT, align 4
  %152 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* @IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK, align 4
  %155 = and i32 %153, %154
  %156 = call i32 @il_write_targ_mem(%struct.il_priv* %143, i64 %150, i32 %155)
  br label %157

157:                                              ; preds = %119
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %112

160:                                              ; preds = %112
  %161 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %162 = load i32, i32* @IL49_SCD_INTERRUPT_MASK, align 4
  %163 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %164 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = shl i32 1, %166
  %168 = sub nsw i32 %167, 1
  %169 = call i32 @il_wr_prph(%struct.il_priv* %161, i32 %162, i32 %168)
  %170 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %171 = call i32 @IL_MASK(i32 0, i32 6)
  %172 = call i32 @il4965_txq_set_sched(%struct.il_priv* %170, i32 %171)
  %173 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %174 = load i32, i32* @IL_DEFAULT_CMD_QUEUE_NUM, align 4
  %175 = call i32 @il4965_set_wr_ptrs(%struct.il_priv* %173, i32 %174, i32 0)
  %176 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %177 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = call i32 @memset(i32* %179, i32 0, i32 8)
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %192, %160
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %182, 4
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  %185 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %186 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = call i32 @atomic_set(i32* %190, i32 0)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %181

195:                                              ; preds = %181
  %196 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %197 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  %198 = load i32*, i32** @default_queue_to_tx_fifo, align 8
  %199 = call i32 @ARRAY_SIZE(i32* %198)
  %200 = icmp ne i32 %199, 7
  %201 = zext i1 %200 to i32
  %202 = call i32 @BUILD_BUG_ON(i32 %201)
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %231, %195
  %204 = load i32, i32* %5, align 4
  %205 = load i32*, i32** @default_queue_to_tx_fifo, align 8
  %206 = call i32 @ARRAY_SIZE(i32* %205)
  %207 = icmp slt i32 %204, %206
  br i1 %207, label %208, label %234

208:                                              ; preds = %203
  %209 = load i32*, i32** @default_queue_to_tx_fifo, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %8, align 4
  %214 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @il_txq_ctx_activate(%struct.il_priv* %214, i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @IL_TX_FIFO_UNUSED, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  br label %231

221:                                              ; preds = %208
  %222 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %223 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %224 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @il4965_tx_queue_set_status(%struct.il_priv* %222, i32* %228, i32 %229, i32 0)
  br label %231

231:                                              ; preds = %221, %220
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %203

234:                                              ; preds = %203
  %235 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %236 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %235, i32 0, i32 1
  %237 = load i64, i64* %4, align 8
  %238 = call i32 @spin_unlock_irqrestore(i32* %236, i64 %237)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @il_rd_prph(%struct.il_priv*, i32) #1

declare dso_local i32 @il_write_targ_mem(%struct.il_priv*, i64, i32) #1

declare dso_local i64 @IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE(i32) #1

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @FH49_TCSR_CHNL_TX_CONFIG_REG(i32) #1

declare dso_local i64 @il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @IL49_SCD_QUEUE_RDPTR(i32) #1

declare dso_local i64 @IL49_SCD_CONTEXT_QUEUE_OFFSET(i32) #1

declare dso_local i32 @il4965_txq_set_sched(%struct.il_priv*, i32) #1

declare dso_local i32 @IL_MASK(i32, i32) #1

declare dso_local i32 @il4965_set_wr_ptrs(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @il_txq_ctx_activate(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_tx_queue_set_status(%struct.il_priv*, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
