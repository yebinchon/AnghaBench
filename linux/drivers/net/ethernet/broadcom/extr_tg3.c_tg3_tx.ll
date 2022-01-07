; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, %struct.tg3_tx_ring_info*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.tg3* }
%struct.tg3_tx_ring_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.tg3 = type { i32, i32, %struct.tg3_napi* }
%struct.netdev_queue = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }

@ENABLE_TSS = common dso_local global i32 0, align 4
@TXD_FLAG_HWTSTAMP = common dso_local global i32 0, align 4
@TG3_TX_TSTAMP_LSB = common dso_local global i32 0, align 4
@TG3_TX_TSTAMP_MSB = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_napi*)* @tg3_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_tx(%struct.tg3_napi* %0) #0 {
  %2 = alloca %struct.tg3_napi*, align 8
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tg3_tx_ring_info*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.skb_shared_hwtstamps, align 4
  %15 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %2, align 8
  %16 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %17 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %16, i32 0, i32 4
  %18 = load %struct.tg3*, %struct.tg3** %17, align 8
  store %struct.tg3* %18, %struct.tg3** %3, align 8
  %19 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %20 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %28 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %31 = load %struct.tg3*, %struct.tg3** %3, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 2
  %33 = load %struct.tg3_napi*, %struct.tg3_napi** %32, align 8
  %34 = ptrtoint %struct.tg3_napi* %30 to i64
  %35 = ptrtoint %struct.tg3_napi* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 40
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = load i32, i32* @ENABLE_TSS, align 4
  %41 = call i64 @tg3_flag(%struct.tg3* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %49, i32 %50)
  store %struct.netdev_queue* %51, %struct.netdev_queue** %6, align 8
  br label %52

52:                                               ; preds = %211, %46
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %212

56:                                               ; preds = %52
  %57 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %58 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %57, i32 0, i32 1
  %59 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %59, i64 %60
  store %struct.tg3_tx_ring_info* %61, %struct.tg3_tx_ring_info** %10, align 8
  %62 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %63 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %62, i32 0, i32 1
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  store %struct.sk_buff* %64, %struct.sk_buff** %11, align 8
  store i32 0, i32* %13, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = icmp eq %struct.sk_buff* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.tg3*, %struct.tg3** %3, align 8
  %72 = call i32 @tg3_tx_recover(%struct.tg3* %71)
  br label %254

73:                                               ; preds = %56
  %74 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %75 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TXD_FLAG_HWTSTAMP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %73
  %85 = load i32, i32* @TG3_TX_TSTAMP_LSB, align 4
  %86 = call i32 @tr32(i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* @TG3_TX_TSTAMP_MSB, align 4
  %88 = call i32 @tr32(i32 %87)
  %89 = shl i32 %88, 32
  %90 = load i32, i32* %15, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %15, align 4
  %92 = load %struct.tg3*, %struct.tg3** %3, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @tg3_hwclock_to_timestamp(%struct.tg3* %92, i32 %93, %struct.skb_shared_hwtstamps* %14)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i32 @skb_tstamp_tx(%struct.sk_buff* %95, %struct.skb_shared_hwtstamps* %14)
  br label %97

97:                                               ; preds = %84, %73
  %98 = load %struct.tg3*, %struct.tg3** %3, align 8
  %99 = getelementptr inbounds %struct.tg3, %struct.tg3* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %102 = load i32, i32* @mapping, align 4
  %103 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %101, i32 %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %105 = call i32 @skb_headlen(%struct.sk_buff* %104)
  %106 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %107 = call i32 @pci_unmap_single(i32 %100, i32 %103, i32 %105, i32 %106)
  %108 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %109 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %108, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %109, align 8
  br label %110

110:                                              ; preds = %115, %97
  %111 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %112 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %117 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i64 @NEXT_TX(i64 %118)
  store i64 %119, i64* %5, align 8
  %120 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %121 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %120, i32 0, i32 1
  %122 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %122, i64 %123
  store %struct.tg3_tx_ring_info* %124, %struct.tg3_tx_ring_info** %10, align 8
  br label %110

125:                                              ; preds = %110
  %126 = load i64, i64* %5, align 8
  %127 = call i64 @NEXT_TX(i64 %126)
  store i64 %127, i64* %5, align 8
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %190, %125
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %128
  %136 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %137 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %136, i32 0, i32 1
  %138 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %138, i64 %139
  store %struct.tg3_tx_ring_info* %140, %struct.tg3_tx_ring_info** %10, align 8
  %141 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %142 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %141, i32 0, i32 1
  %143 = load %struct.sk_buff*, %struct.sk_buff** %142, align 8
  %144 = icmp ne %struct.sk_buff* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* %4, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %145, %135
  %150 = phi i1 [ true, %135 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 1, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %149
  %156 = load %struct.tg3*, %struct.tg3** %3, align 8
  %157 = getelementptr inbounds %struct.tg3, %struct.tg3* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %160 = load i32, i32* @mapping, align 4
  %161 = call i32 @dma_unmap_addr(%struct.tg3_tx_ring_info* %159, i32 %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %162)
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i32 @skb_frag_size(i32* %168)
  %170 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %171 = call i32 @pci_unmap_page(i32 %158, i32 %161, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %177, %155
  %173 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %174 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %172
  %178 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %10, align 8
  %179 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @NEXT_TX(i64 %180)
  store i64 %181, i64* %5, align 8
  %182 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %183 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %182, i32 0, i32 1
  %184 = load %struct.tg3_tx_ring_info*, %struct.tg3_tx_ring_info** %183, align 8
  %185 = load i64, i64* %5, align 8
  %186 = getelementptr inbounds %struct.tg3_tx_ring_info, %struct.tg3_tx_ring_info* %184, i64 %185
  store %struct.tg3_tx_ring_info* %186, %struct.tg3_tx_ring_info** %10, align 8
  br label %172

187:                                              ; preds = %172
  %188 = load i64, i64* %5, align 8
  %189 = call i64 @NEXT_TX(i64 %188)
  store i64 %189, i64* %5, align 8
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %128

193:                                              ; preds = %128
  %194 = load i32, i32* %8, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %8, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = zext i32 %199 to i64
  %201 = add nsw i64 %200, %198
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %9, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %204 = call i32 @dev_consume_skb_any(%struct.sk_buff* %203)
  %205 = load i32, i32* %13, align 4
  %206 = call i64 @unlikely(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load %struct.tg3*, %struct.tg3** %3, align 8
  %210 = call i32 @tg3_tx_recover(%struct.tg3* %209)
  br label %254

211:                                              ; preds = %193
  br label %52

212:                                              ; preds = %52
  %213 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %9, align 4
  %216 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %213, i32 %214, i32 %215)
  %217 = load i64, i64* %5, align 8
  %218 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %219 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  %220 = call i32 (...) @smp_mb()
  %221 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %222 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %212
  %225 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %226 = call i64 @tg3_tx_avail(%struct.tg3_napi* %225)
  %227 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %228 = call i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi* %227)
  %229 = icmp sgt i64 %226, %228
  br label %230

230:                                              ; preds = %224, %212
  %231 = phi i1 [ false, %212 ], [ %229, %224 ]
  %232 = zext i1 %231 to i32
  %233 = call i64 @unlikely(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %230
  %236 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %237 = call i32 (...) @smp_processor_id()
  %238 = call i32 @__netif_tx_lock(%struct.netdev_queue* %236, i32 %237)
  %239 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %240 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %235
  %243 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %244 = call i64 @tg3_tx_avail(%struct.tg3_napi* %243)
  %245 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %246 = call i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi* %245)
  %247 = icmp sgt i64 %244, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %250 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %249)
  br label %251

251:                                              ; preds = %248, %242, %235
  %252 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %253 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %252)
  br label %254

254:                                              ; preds = %70, %208, %251, %230
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tg3_tx_recover(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_hwclock_to_timestamp(%struct.tg3*, i32, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.tg3_tx_ring_info*, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @NEXT_TX(i64) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i64 @tg3_tx_avail(%struct.tg3_napi*) #1

declare dso_local i64 @TG3_TX_WAKEUP_THRESH(%struct.tg3_napi*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
