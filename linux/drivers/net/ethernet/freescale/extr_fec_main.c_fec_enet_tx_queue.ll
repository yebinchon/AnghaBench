; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fec_enet_private = type { i64, %struct.TYPE_6__*, %struct.fec_enet_priv_tx_q** }
%struct.TYPE_6__ = type { i32 }
%struct.fec_enet_priv_tx_q = type { i32, %struct.TYPE_9__, %struct.bufdesc*, %struct.sk_buff** }
%struct.TYPE_9__ = type { i32, %struct.bufdesc* }
%struct.bufdesc = type { i32, %struct.bufdesc*, %struct.bufdesc* }
%struct.sk_buff = type { i64 }
%struct.netdev_queue = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.bufdesc_ex = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BD_ENET_TX_READY = common dso_local global i16 0, align 2
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BD_ENET_TX_HB = common dso_local global i16 0, align 2
@BD_ENET_TX_LC = common dso_local global i16 0, align 2
@BD_ENET_TX_RL = common dso_local global i16 0, align 2
@BD_ENET_TX_UN = common dso_local global i16 0, align 2
@BD_ENET_TX_CSL = common dso_local global i16 0, align 2
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@BD_ENET_TX_DEF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @fec_enet_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_tx_queue(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fec_enet_private*, align 8
  %6 = alloca %struct.bufdesc*, align 8
  %7 = alloca i16, align 2
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.skb_shared_hwtstamps, align 4
  %14 = alloca %struct.bufdesc_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %15)
  store %struct.fec_enet_private* %16, %struct.fec_enet_private** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @FEC_ENET_GET_QUQUE(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %20 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %19, i32 0, i32 2
  %21 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %21, i64 %22
  %24 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %23, align 8
  store %struct.fec_enet_priv_tx_q* %24, %struct.fec_enet_priv_tx_q** %9, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %25, i64 %26)
  store %struct.netdev_queue* %27, %struct.netdev_queue** %10, align 8
  %28 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %29 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %28, i32 0, i32 2
  %30 = load %struct.bufdesc*, %struct.bufdesc** %29, align 8
  store %struct.bufdesc* %30, %struct.bufdesc** %6, align 8
  %31 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %32 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %33 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %32, i32 0, i32 1
  %34 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %31, %struct.TYPE_9__* %33)
  store %struct.bufdesc* %34, %struct.bufdesc** %6, align 8
  br label %35

35:                                               ; preds = %275, %2
  %36 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %37 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %38 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.bufdesc*, %struct.bufdesc** %39, align 8
  %41 = call %struct.bufdesc* @READ_ONCE(%struct.bufdesc* %40)
  %42 = icmp ne %struct.bufdesc* %36, %41
  br i1 %42, label %43, label %276

43:                                               ; preds = %35
  %44 = call i32 (...) @rmb()
  %45 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %46 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %45, i32 0, i32 2
  %47 = load %struct.bufdesc*, %struct.bufdesc** %46, align 8
  %48 = call %struct.bufdesc* @READ_ONCE(%struct.bufdesc* %47)
  %49 = call zeroext i16 @fec16_to_cpu(%struct.bufdesc* %48)
  store i16 %49, i16* %7, align 2
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @BD_ENET_TX_READY, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %276

57:                                               ; preds = %43
  %58 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %59 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %60 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %59, i32 0, i32 1
  %61 = call i32 @fec_enet_get_bd_index(%struct.bufdesc* %58, %struct.TYPE_9__* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %63 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %62, i32 0, i32 3
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %64, i64 %66
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %8, align 8
  %69 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %70 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %69, i32 0, i32 3
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %71, i64 %73
  store %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %76 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %77 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @fec32_to_cpu(i32 %78)
  %80 = call i32 @IS_TSO_HEADER(%struct.fec_enet_priv_tx_q* %75, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %57
  %83 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %84 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %88 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @fec32_to_cpu(i32 %89)
  %91 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %92 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %91, i32 0, i32 1
  %93 = load %struct.bufdesc*, %struct.bufdesc** %92, align 8
  %94 = call zeroext i16 @fec16_to_cpu(%struct.bufdesc* %93)
  %95 = load i32, i32* @DMA_TO_DEVICE, align 4
  %96 = call i32 @dma_unmap_single(i32* %86, i32 %90, i16 zeroext %94, i32 %95)
  br label %97

97:                                               ; preds = %82, %57
  %98 = call i32 @cpu_to_fec32(i32 0)
  %99 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %100 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = icmp ne %struct.sk_buff* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  br label %251

104:                                              ; preds = %97
  %105 = load i16, i16* %7, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @BD_ENET_TX_HB, align 2
  %108 = zext i16 %107 to i32
  %109 = load i16, i16* @BD_ENET_TX_LC, align 2
  %110 = zext i16 %109 to i32
  %111 = or i32 %108, %110
  %112 = load i16, i16* @BD_ENET_TX_RL, align 2
  %113 = zext i16 %112 to i32
  %114 = or i32 %111, %113
  %115 = load i16, i16* @BD_ENET_TX_UN, align 2
  %116 = zext i16 %115 to i32
  %117 = or i32 %114, %116
  %118 = load i16, i16* @BD_ENET_TX_CSL, align 2
  %119 = zext i16 %118 to i32
  %120 = or i32 %117, %119
  %121 = and i32 %106, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %194

123:                                              ; preds = %104
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load i16, i16* %7, align 2
  %130 = zext i16 %129 to i32
  %131 = load i16, i16* @BD_ENET_TX_HB, align 2
  %132 = zext i16 %131 to i32
  %133 = and i32 %130, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %123
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %123
  %142 = load i16, i16* %7, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16, i16* @BD_ENET_TX_LC, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.net_device*, %struct.net_device** %3, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %141
  %155 = load i16, i16* %7, align 2
  %156 = zext i16 %155 to i32
  %157 = load i16, i16* @BD_ENET_TX_RL, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %154
  %168 = load i16, i16* %7, align 2
  %169 = zext i16 %168 to i32
  %170 = load i16, i16* @BD_ENET_TX_UN, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.net_device*, %struct.net_device** %3, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %167
  %181 = load i16, i16* %7, align 2
  %182 = zext i16 %181 to i32
  %183 = load i16, i16* @BD_ENET_TX_CSL, align 2
  %184 = zext i16 %183 to i32
  %185 = and i32 %182, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %180
  br label %210

194:                                              ; preds = %104
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.net_device*, %struct.net_device** %3, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %202
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  br label %210

210:                                              ; preds = %194, %193
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %211)
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %216 = and i32 %214, %215
  %217 = call i64 @unlikely(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %210
  %220 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %221 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %219
  %225 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %226 = bitcast %struct.bufdesc* %225 to %struct.bufdesc_ex*
  store %struct.bufdesc_ex* %226, %struct.bufdesc_ex** %14, align 8
  %227 = load %struct.fec_enet_private*, %struct.fec_enet_private** %5, align 8
  %228 = load %struct.bufdesc_ex*, %struct.bufdesc_ex** %14, align 8
  %229 = getelementptr inbounds %struct.bufdesc_ex, %struct.bufdesc_ex* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @fec32_to_cpu(i32 %230)
  %232 = call i32 @fec_enet_hwtstamp(%struct.fec_enet_private* %227, i32 %231, %struct.skb_shared_hwtstamps* %13)
  %233 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %234 = call i32 @skb_tstamp_tx(%struct.sk_buff* %233, %struct.skb_shared_hwtstamps* %13)
  br label %235

235:                                              ; preds = %224, %219, %210
  %236 = load i16, i16* %7, align 2
  %237 = zext i16 %236 to i32
  %238 = load i16, i16* @BD_ENET_TX_DEF, align 2
  %239 = zext i16 %238 to i32
  %240 = and i32 %237, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load %struct.net_device*, %struct.net_device** %3, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %242, %235
  %249 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %250 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %249)
  br label %251

251:                                              ; preds = %248, %103
  %252 = call i32 (...) @wmb()
  %253 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %254 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %255 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %254, i32 0, i32 2
  store %struct.bufdesc* %253, %struct.bufdesc** %255, align 8
  %256 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %257 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %258 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %257, i32 0, i32 1
  %259 = call %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc* %256, %struct.TYPE_9__* %258)
  store %struct.bufdesc* %259, %struct.bufdesc** %6, align 8
  %260 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %261 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %275

263:                                              ; preds = %251
  %264 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %265 = call i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q* %264)
  store i32 %265, i32* %12, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %268 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp sge i32 %266, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %263
  %272 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %273 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %272)
  br label %274

274:                                              ; preds = %271, %263
  br label %275

275:                                              ; preds = %274, %251
  br label %35

276:                                              ; preds = %56, %35
  %277 = load %struct.bufdesc*, %struct.bufdesc** %6, align 8
  %278 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %279 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load %struct.bufdesc*, %struct.bufdesc** %280, align 8
  %282 = icmp ne %struct.bufdesc* %277, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %276
  %284 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %285 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i64 @readl(i32 %287)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %283
  %291 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %292 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @writel(i32 0, i32 %294)
  br label %296

296:                                              ; preds = %290, %283, %276
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @FEC_ENET_GET_QUQUE(i64) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local %struct.bufdesc* @fec_enet_get_nextdesc(%struct.bufdesc*, %struct.TYPE_9__*) #1

declare dso_local %struct.bufdesc* @READ_ONCE(%struct.bufdesc*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local zeroext i16 @fec16_to_cpu(%struct.bufdesc*) #1

declare dso_local i32 @fec_enet_get_bd_index(%struct.bufdesc*, %struct.TYPE_9__*) #1

declare dso_local i32 @IS_TSO_HEADER(%struct.fec_enet_priv_tx_q*, i32) #1

declare dso_local i32 @fec32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i16 zeroext, i32) #1

declare dso_local i32 @cpu_to_fec32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @fec_enet_hwtstamp(%struct.fec_enet_private*, i32, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
