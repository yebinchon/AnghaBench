; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43legacy_IRQ_MAC_TXERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MAC transmission error\0A\00", align 1
@B43legacy_IRQ_PHY_TXERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PHY transmission error\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Too many PHY TX errors, restarting the controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PHY TX errors\00", align 1
@B43legacy_DMAIRQ_FATALMASK = common dso_local global i32 0, align 4
@B43legacy_DMAIRQ_NONFATALMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DMA error\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", align 1
@B43legacy_IRQ_UCODE_DEBUG = common dso_local global i32 0, align 4
@B43legacy_IRQ_TBTT_INDI = common dso_local global i32 0, align 4
@B43legacy_IRQ_ATIM_END = common dso_local global i32 0, align 4
@B43legacy_IRQ_BEACON = common dso_local global i32 0, align 4
@B43legacy_IRQ_PMQ = common dso_local global i32 0, align 4
@B43legacy_IRQ_TXFIFO_FLUSH_OK = common dso_local global i32 0, align 4
@B43legacy_IRQ_NOISESAMPLE_OK = common dso_local global i32 0, align 4
@B43legacy_DMAIRQ_RX_DONE = common dso_local global i32 0, align 4
@B43legacy_IRQ_TX_OK = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_interrupt_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_interrupt_tasklet(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %23)
  %25 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @B43legacy_WARN_ON(i32 %27)
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ARRAY_SIZE(i32* %16)
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %16, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @B43legacy_IRQ_MAC_TXERR, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @B43legacy_IRQ_PHY_TXERR, align 4
  %70 = and i32 %68, %69
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 (...) @rmb()
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @atomic_dec_and_test(i32* %81)
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = call i32 @b43legacy_controller_restart(%struct.b43legacy_wldev* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %85, %73
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @B43legacy_DMAIRQ_FATALMASK, align 4
  %96 = load i32, i32* @B43legacy_DMAIRQ_NONFATALMASK, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @B43legacy_DMAIRQ_FATALMASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %101
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds i32, i32* %16, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = getelementptr inbounds i32, i32* %16, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %16, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds i32, i32* %16, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds i32, i32* %16, i64 4
  %119 = load i32, i32* %118, align 16
  %120 = getelementptr inbounds i32, i32* %16, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %124 = call i32 @b43legacy_controller_restart(%struct.b43legacy_wldev* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %126 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  store i32 1, i32* %9, align 4
  br label %296

131:                                              ; preds = %101
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @B43legacy_DMAIRQ_NONFATALMASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  %137 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %138 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds i32, i32* %16, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds i32, i32* %16, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds i32, i32* %16, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds i32, i32* %16, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds i32, i32* %16, i64 4
  %149 = load i32, i32* %148, align 16
  %150 = getelementptr inbounds i32, i32* %16, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %143, i32 %145, i32 %147, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %136, %131
  br label %154

154:                                              ; preds = %153, %93
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @B43legacy_IRQ_UCODE_DEBUG, align 4
  %157 = and i32 %155, %156
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %162 = call i32 @handle_irq_ucode_debug(%struct.b43legacy_wldev* %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @B43legacy_IRQ_TBTT_INDI, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %170 = call i32 @handle_irq_tbtt_indication(%struct.b43legacy_wldev* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @B43legacy_IRQ_ATIM_END, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %178 = call i32 @handle_irq_atim_end(%struct.b43legacy_wldev* %177)
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* @B43legacy_IRQ_BEACON, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %186 = call i32 @handle_irq_beacon(%struct.b43legacy_wldev* %185)
  br label %187

187:                                              ; preds = %184, %179
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* @B43legacy_IRQ_PMQ, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %194 = call i32 @handle_irq_pmq(%struct.b43legacy_wldev* %193)
  br label %195

195:                                              ; preds = %192, %187
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* @B43legacy_IRQ_TXFIFO_FLUSH_OK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %195
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @B43legacy_IRQ_NOISESAMPLE_OK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %208 = call i32 @handle_irq_noise(%struct.b43legacy_wldev* %207)
  br label %209

209:                                              ; preds = %206, %201
  %210 = getelementptr inbounds i32, i32* %16, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %209
  %216 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %217 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %221 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @b43legacy_pio_rx(i32 %223)
  br label %231

225:                                              ; preds = %215
  %226 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %227 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @b43legacy_dma_rx(i32 %229)
  br label %231

231:                                              ; preds = %225, %219
  br label %232

232:                                              ; preds = %231, %209
  %233 = getelementptr inbounds i32, i32* %16, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %236 = and i32 %234, %235
  %237 = call i32 @B43legacy_WARN_ON(i32 %236)
  %238 = getelementptr inbounds i32, i32* %16, i64 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %241 = and i32 %239, %240
  %242 = call i32 @B43legacy_WARN_ON(i32 %241)
  %243 = getelementptr inbounds i32, i32* %16, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %265

248:                                              ; preds = %232
  %249 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %250 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %254 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @b43legacy_pio_rx(i32 %256)
  br label %264

258:                                              ; preds = %248
  %259 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %260 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @b43legacy_dma_rx(i32 %262)
  br label %264

264:                                              ; preds = %258, %252
  br label %265

265:                                              ; preds = %264, %232
  %266 = getelementptr inbounds i32, i32* %16, i64 4
  %267 = load i32, i32* %266, align 16
  %268 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %269 = and i32 %267, %268
  %270 = call i32 @B43legacy_WARN_ON(i32 %269)
  %271 = getelementptr inbounds i32, i32* %16, i64 5
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %274 = and i32 %272, %273
  %275 = call i32 @B43legacy_WARN_ON(i32 %274)
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* @B43legacy_IRQ_TX_OK, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %265
  %281 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %282 = call i32 @handle_irq_transmit_status(%struct.b43legacy_wldev* %281)
  br label %283

283:                                              ; preds = %280, %265
  %284 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %285 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %286 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %287 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %284, i32 %285, i32 %288)
  %290 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %291 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %290, i32 0, i32 2
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i64, i64* %8, align 8
  %295 = call i32 @spin_unlock_irqrestore(i32* %293, i64 %294)
  store i32 0, i32* %9, align 4
  br label %296

296:                                              ; preds = %283, %106
  %297 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %9, align 4
  switch i32 %298, label %300 [
    i32 0, label %299
    i32 1, label %299
  ]

299:                                              ; preds = %296, %296
  ret void

300:                                              ; preds = %296
  unreachable
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @b43legacy_controller_restart(%struct.b43legacy_wldev*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @handle_irq_ucode_debug(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_tbtt_indication(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_atim_end(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_beacon(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_pmq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_noise(%struct.b43legacy_wldev*) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_pio_rx(i32) #1

declare dso_local i32 @b43legacy_dma_rx(i32) #1

declare dso_local i32 @handle_irq_transmit_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
