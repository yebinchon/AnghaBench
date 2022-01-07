; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_do_interrupt_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_do_interrupt_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32*, i32, i32, i32*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@B43_IRQ_MAC_TXERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MAC transmission error\0A\00", align 1
@B43_IRQ_PHY_TXERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PHY transmission error\0A\00", align 1
@B43_PHY_TX_BADNESS_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Too many PHY TX errors, restarting the controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PHY TX errors\00", align 1
@B43_DMAIRQ_FATALMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"This device does not support DMA on your system. It will now be switched to PIO.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"DMA error\00", align 1
@B43_IRQ_UCODE_DEBUG = common dso_local global i32 0, align 4
@B43_IRQ_TBTT_INDI = common dso_local global i32 0, align 4
@B43_IRQ_ATIM_END = common dso_local global i32 0, align 4
@B43_IRQ_BEACON = common dso_local global i32 0, align 4
@B43_IRQ_PMQ = common dso_local global i32 0, align 4
@B43_IRQ_TXFIFO_FLUSH_OK = common dso_local global i32 0, align 4
@B43_IRQ_NOISESAMPLE_OK = common dso_local global i32 0, align 4
@B43_DMAIRQ_RDESC_UFLOW = common dso_local global i32 0, align 4
@B43_DEBUG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"RX descriptor underrun\0A\00", align 1
@B43_DMAIRQ_RX_DONE = common dso_local global i32 0, align 4
@B43_IRQ_TX_OK = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@B43_DBG_VERBOSESTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_do_interrupt_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_do_interrupt_thread(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %17 = call i64 @b43_status(%struct.b43_wldev* %16)
  %18 = load i64, i64* @B43_STAT_STARTED, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %263

24:                                               ; preds = %1
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %49, %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ARRAY_SIZE(i32* %15)
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %15, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %15, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @B43_IRQ_MAC_TXERR, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @b43err(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @B43_IRQ_PHY_TXERR, align 4
  %66 = and i32 %64, %65
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @b43err(i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 (...) @rmb()
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @atomic_dec_and_test(i32* %77)
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %69
  %82 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %83 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* @B43_PHY_TX_BADNESS_LIMIT, align 4
  %86 = call i32 @atomic_set(i32* %84, i32 %85)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %88 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, ...) @b43err(i32 %89, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %92 = call i32 @b43_controller_restart(%struct.b43_wldev* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %93

93:                                               ; preds = %81, %69
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @B43_DMAIRQ_FATALMASK, align 4
  %97 = and i32 %95, %96
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds i32, i32* %15, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = getelementptr inbounds i32, i32* %15, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds i32, i32* %15, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds i32, i32* %15, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds i32, i32* %15, i64 4
  %113 = load i32, i32* %112, align 16
  %114 = getelementptr inbounds i32, i32* %15, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @b43err(i32 %103, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %118 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @b43err(i32 %119, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %121, i32 0, i32 2
  store i32 1, i32* %122, align 4
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %124 = call i32 @b43_controller_restart(%struct.b43_wldev* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %263

125:                                              ; preds = %94
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @B43_IRQ_UCODE_DEBUG, align 4
  %128 = and i32 %126, %127
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %133 = call i32 @handle_irq_ucode_debug(%struct.b43_wldev* %132)
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @B43_IRQ_TBTT_INDI, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %141 = call i32 @handle_irq_tbtt_indication(%struct.b43_wldev* %140)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @B43_IRQ_ATIM_END, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = call i32 @handle_irq_atim_end(%struct.b43_wldev* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @B43_IRQ_BEACON, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = call i32 @handle_irq_beacon(%struct.b43_wldev* %156)
  br label %158

158:                                              ; preds = %155, %150
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* @B43_IRQ_PMQ, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %165 = call i32 @handle_irq_pmq(%struct.b43_wldev* %164)
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @B43_IRQ_TXFIFO_FLUSH_OK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %166
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @B43_IRQ_NOISESAMPLE_OK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %179 = call i32 @handle_irq_noise(%struct.b43_wldev* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = getelementptr inbounds i32, i32* %15, i64 0
  %182 = load i32, i32* %181, align 16
  %183 = load i32, i32* @B43_DMAIRQ_RDESC_UFLOW, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %180
  %187 = load i64, i64* @B43_DEBUG, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @b43warn(i32 %192, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %186
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @b43_dma_handle_rx_overflow(i32 %198)
  br label %200

200:                                              ; preds = %194, %180
  %201 = getelementptr inbounds i32, i32* %15, i64 0
  %202 = load i32, i32* %201, align 16
  %203 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %200
  %207 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %208 = call i64 @b43_using_pio_transfers(%struct.b43_wldev* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %212 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @b43_pio_rx(i32 %214)
  br label %222

216:                                              ; preds = %206
  %217 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %218 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @b43_dma_rx(i32 %220)
  br label %222

222:                                              ; preds = %216, %210
  br label %223

223:                                              ; preds = %222, %200
  %224 = getelementptr inbounds i32, i32* %15, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %227 = and i32 %225, %226
  %228 = call i32 @B43_WARN_ON(i32 %227)
  %229 = getelementptr inbounds i32, i32* %15, i64 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %232 = and i32 %230, %231
  %233 = call i32 @B43_WARN_ON(i32 %232)
  %234 = getelementptr inbounds i32, i32* %15, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @B43_WARN_ON(i32 %237)
  %239 = getelementptr inbounds i32, i32* %15, i64 4
  %240 = load i32, i32* %239, align 16
  %241 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %242 = and i32 %240, %241
  %243 = call i32 @B43_WARN_ON(i32 %242)
  %244 = getelementptr inbounds i32, i32* %15, i64 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @B43_DMAIRQ_RX_DONE, align 4
  %247 = and i32 %245, %246
  %248 = call i32 @B43_WARN_ON(i32 %247)
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* @B43_IRQ_TX_OK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %223
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = call i32 @handle_irq_transmit_status(%struct.b43_wldev* %254)
  br label %256

256:                                              ; preds = %253, %223
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %258 = load i32, i32* @B43_MMIO_GEN_IRQ_MASK, align 4
  %259 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %260 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @b43_write32(%struct.b43_wldev* %257, i32 %258, i32 %261)
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %256, %100, %23
  %264 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %264)
  %265 = load i32, i32* %8, align 4
  switch i32 %265, label %267 [
    i32 0, label %266
    i32 1, label %266
  ]

266:                                              ; preds = %263, %263
  ret void

267:                                              ; preds = %263
  unreachable
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43err(i32, i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @b43_controller_restart(%struct.b43_wldev*, i8*) #1

declare dso_local i32 @handle_irq_ucode_debug(%struct.b43_wldev*) #1

declare dso_local i32 @handle_irq_tbtt_indication(%struct.b43_wldev*) #1

declare dso_local i32 @handle_irq_atim_end(%struct.b43_wldev*) #1

declare dso_local i32 @handle_irq_beacon(%struct.b43_wldev*) #1

declare dso_local i32 @handle_irq_pmq(%struct.b43_wldev*) #1

declare dso_local i32 @handle_irq_noise(%struct.b43_wldev*) #1

declare dso_local i32 @b43warn(i32, i8*) #1

declare dso_local i32 @b43_dma_handle_rx_overflow(i32) #1

declare dso_local i64 @b43_using_pio_transfers(%struct.b43_wldev*) #1

declare dso_local i32 @b43_pio_rx(i32) #1

declare dso_local i32 @b43_dma_rx(i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @handle_irq_transmit_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
