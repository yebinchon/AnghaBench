; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_burst_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stm32-timers.c_stm32_timers_dma_burst_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_timers = type { %struct.stm32_timers_dma, %struct.regmap* }
%struct.stm32_timers_dma = type { i32, i32*, i32, i64, i32** }
%struct.regmap = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.stm32_timers_dma*, i32 }
%struct.dma_slave_config = type { i32, i64 }

@STM32_TIMERS_DMA_CH1 = common dso_local global i32 0, align 4
@STM32_TIMERS_MAX_DMAS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@STM32_TIMERS_MAX_REGISTERS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TIM_DMAR = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@stm32_timers_dma_done = common dso_local global i32 0, align 4
@TIM_DCR_DBL = common dso_local global i32 0, align 4
@TIM_DCR_DBA = common dso_local global i32 0, align 4
@TIM_DCR = common dso_local global i32 0, align 4
@TIM_SR = common dso_local global i32 0, align 4
@TIM_DIER = common dso_local global i32 0, align 4
@stm32_timers_dier_dmaen = common dso_local global i32* null, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stm32_timers_dma_burst_read(%struct.device* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.stm32_timers*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.regmap*, align 8
  %19 = alloca %struct.stm32_timers_dma*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.dma_async_tx_descriptor*, align 8
  %22 = alloca %struct.dma_slave_config, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call %struct.stm32_timers* @dev_get_drvdata(%struct.device* %29)
  store %struct.stm32_timers* %30, %struct.stm32_timers** %16, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i64 @msecs_to_jiffies(i64 %31)
  store i64 %32, i64* %17, align 8
  %33 = load %struct.stm32_timers*, %struct.stm32_timers** %16, align 8
  %34 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %33, i32 0, i32 1
  %35 = load %struct.regmap*, %struct.regmap** %34, align 8
  store %struct.regmap* %35, %struct.regmap** %18, align 8
  %36 = load %struct.stm32_timers*, %struct.stm32_timers** %16, align 8
  %37 = getelementptr inbounds %struct.stm32_timers, %struct.stm32_timers* %36, i32 0, i32 0
  store %struct.stm32_timers_dma* %37, %struct.stm32_timers_dma** %19, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = mul i64 %41, 4
  store i64 %42, i64* %20, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @STM32_TIMERS_DMA_CH1, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %7
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @STM32_TIMERS_MAX_DMAS, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %7
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %258

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @STM32_TIMERS_MAX_REGISTERS, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = add i64 %65, %68
  %70 = load i32, i32* @STM32_TIMERS_MAX_REGISTERS, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63, %59, %56, %53
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %258

76:                                               ; preds = %63
  %77 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %78 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %77, i32 0, i32 4
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %258

88:                                               ; preds = %76
  %89 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %90 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %89, i32 0, i32 0
  %91 = call i32 @mutex_lock(i32* %90)
  %92 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %93 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %92, i32 0, i32 4
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %100 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  %101 = load %struct.device*, %struct.device** %9, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i64, i64* %20, align 8
  %104 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %105 = call i64 @dma_map_single(%struct.device* %101, i32* %102, i64 %103, i32 %104)
  store i64 %105, i64* %24, align 8
  %106 = load %struct.device*, %struct.device** %9, align 8
  %107 = load i64, i64* %24, align 8
  %108 = call i64 @dma_mapping_error(%struct.device* %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %88
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %28, align 4
  br label %251

113:                                              ; preds = %88
  %114 = call i32 @memset(%struct.dma_slave_config* %22, i32 0, i32 16)
  %115 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %116 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TIM_DMAR, align 8
  %119 = add nsw i64 %117, %118
  %120 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %22, i32 0, i32 1
  store i64 %119, i64* %120, align 8
  %121 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %122 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %22, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %124 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @dmaengine_slave_config(i32* %125, %struct.dma_slave_config* %22)
  store i32 %126, i32* %28, align 4
  %127 = load i32, i32* %28, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %245

130:                                              ; preds = %113
  %131 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %132 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %137 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %138 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32* %133, i64 %134, i64 %135, i32 %136, i32 %137)
  store %struct.dma_async_tx_descriptor* %138, %struct.dma_async_tx_descriptor** %21, align 8
  %139 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %21, align 8
  %140 = icmp ne %struct.dma_async_tx_descriptor* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* @EBUSY, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %28, align 4
  br label %245

144:                                              ; preds = %130
  %145 = load i32, i32* @stm32_timers_dma_done, align 4
  %146 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %21, align 8
  %147 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %149 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %21, align 8
  %150 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %149, i32 0, i32 0
  store %struct.stm32_timers_dma* %148, %struct.stm32_timers_dma** %150, align 8
  %151 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %21, align 8
  %152 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %151)
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %23, align 4
  %154 = call i32 @dma_submit_error(i32 %153)
  store i32 %154, i32* %28, align 4
  %155 = load i32, i32* %28, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %240

158:                                              ; preds = %144
  %159 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %160 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %159, i32 0, i32 2
  %161 = call i32 @reinit_completion(i32* %160)
  %162 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %163 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @dma_async_issue_pending(i32* %164)
  %166 = load i32, i32* @TIM_DCR_DBL, align 4
  %167 = load i32, i32* %14, align 4
  %168 = sub i32 %167, 1
  %169 = call i32 @FIELD_PREP(i32 %166, i32 %168)
  store i32 %169, i32* %25, align 4
  %170 = load i32, i32* @TIM_DCR_DBA, align 4
  %171 = load i32, i32* %12, align 4
  %172 = lshr i32 %171, 2
  %173 = call i32 @FIELD_PREP(i32 %170, i32 %172)
  store i32 %173, i32* %26, align 4
  %174 = load %struct.regmap*, %struct.regmap** %18, align 8
  %175 = load i32, i32* @TIM_DCR, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %26, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @regmap_write(%struct.regmap* %174, i32 %175, i32 %178)
  store i32 %179, i32* %28, align 4
  %180 = load i32, i32* %28, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %158
  br label %240

183:                                              ; preds = %158
  %184 = load %struct.regmap*, %struct.regmap** %18, align 8
  %185 = load i32, i32* @TIM_SR, align 4
  %186 = call i32 @regmap_write(%struct.regmap* %184, i32 %185, i32 0)
  store i32 %186, i32* %28, align 4
  %187 = load i32, i32* %28, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %236

190:                                              ; preds = %183
  %191 = load %struct.regmap*, %struct.regmap** %18, align 8
  %192 = load i32, i32* @TIM_DIER, align 4
  %193 = load i32*, i32** @stm32_timers_dier_dmaen, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** @stm32_timers_dier_dmaen, align 8
  %199 = load i32, i32* %11, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @regmap_update_bits(%struct.regmap* %191, i32 %192, i32 %197, i32 %202)
  store i32 %203, i32* %28, align 4
  %204 = load i32, i32* %28, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %236

207:                                              ; preds = %190
  %208 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %209 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %208, i32 0, i32 2
  %210 = load i64, i64* %17, align 8
  %211 = call i64 @wait_for_completion_interruptible_timeout(i32* %209, i64 %210)
  store i64 %211, i64* %27, align 8
  %212 = load i64, i64* %27, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load i32, i32* @ETIMEDOUT, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %28, align 4
  br label %224

217:                                              ; preds = %207
  %218 = load i64, i64* %27, align 8
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i64, i64* %27, align 8
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %28, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223, %214
  %225 = load %struct.regmap*, %struct.regmap** %18, align 8
  %226 = load i32, i32* @TIM_DIER, align 4
  %227 = load i32*, i32** @stm32_timers_dier_dmaen, align 8
  %228 = load i32, i32* %11, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @regmap_update_bits(%struct.regmap* %225, i32 %226, i32 %231, i32 0)
  %233 = load %struct.regmap*, %struct.regmap** %18, align 8
  %234 = load i32, i32* @TIM_SR, align 4
  %235 = call i32 @regmap_write(%struct.regmap* %233, i32 %234, i32 0)
  br label %236

236:                                              ; preds = %224, %206, %189
  %237 = load %struct.regmap*, %struct.regmap** %18, align 8
  %238 = load i32, i32* @TIM_DCR, align 4
  %239 = call i32 @regmap_write(%struct.regmap* %237, i32 %238, i32 0)
  br label %240

240:                                              ; preds = %236, %182, %157
  %241 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %242 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @dmaengine_terminate_all(i32* %243)
  br label %245

245:                                              ; preds = %240, %141, %129
  %246 = load %struct.device*, %struct.device** %9, align 8
  %247 = load i64, i64* %24, align 8
  %248 = load i64, i64* %20, align 8
  %249 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %250 = call i32 @dma_unmap_single(%struct.device* %246, i64 %247, i64 %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %110
  %252 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %253 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %252, i32 0, i32 1
  store i32* null, i32** %253, align 8
  %254 = load %struct.stm32_timers_dma*, %struct.stm32_timers_dma** %19, align 8
  %255 = getelementptr inbounds %struct.stm32_timers_dma, %struct.stm32_timers_dma* %254, i32 0, i32 0
  %256 = call i32 @mutex_unlock(i32* %255)
  %257 = load i32, i32* %28, align 4
  store i32 %257, i32* %8, align 4
  br label %258

258:                                              ; preds = %251, %85, %73, %50
  %259 = load i32, i32* %8, align 4
  ret i32 %259
}

declare dso_local %struct.stm32_timers* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32*, %struct.dma_slave_config*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(i32*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @dmaengine_terminate_all(i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
