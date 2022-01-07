; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_poll_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.mtk_eth = type { i32, i32, %struct.TYPE_4__*, i32, i32, %struct.net_device** }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_rx_ring = type { i32, i32, i32**, i32, %struct.mtk_rx_dma*, i32 }
%struct.mtk_rx_dma = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }

@RX_DMA_DONE = common dso_local global i32 0, align 4
@MTK_SOC_MT7628 = common dso_local global i32 0, align 4
@RX_DMA_FPORT_SHIFT = common dso_local global i32 0, align 4
@RX_DMA_FPORT_MASK = common dso_local global i32 0, align 4
@MTK_MAC_COUNT = common dso_local global i32 0, align 4
@MTK_RESETTING = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@RX_DMA_LSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32, %struct.mtk_eth*)* @mtk_poll_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_poll_rx(%struct.napi_struct* %0, i32 %1, %struct.mtk_eth* %2) #0 {
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_eth*, align 8
  %7 = alloca %struct.mtk_rx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtk_rx_dma*, align 8
  %13 = alloca %struct.mtk_rx_dma, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_eth* %2, %struct.mtk_eth** %6, align 8
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %290, %3
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %296

23:                                               ; preds = %19
  %24 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %25 = call %struct.mtk_rx_ring* @mtk_get_rx_ring(%struct.mtk_eth* %24)
  store %struct.mtk_rx_ring* %25, %struct.mtk_rx_ring** %7, align 8
  %26 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %27 = icmp ne %struct.mtk_rx_ring* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %297

33:                                               ; preds = %23
  %34 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @NEXT_DESP_IDX(i32 %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %42 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %41, i32 0, i32 4
  %43 = load %struct.mtk_rx_dma*, %struct.mtk_rx_dma** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %43, i64 %45
  store %struct.mtk_rx_dma* %46, %struct.mtk_rx_dma** %12, align 8
  %47 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %48 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %10, align 8
  %54 = load %struct.mtk_rx_dma*, %struct.mtk_rx_dma** %12, align 8
  %55 = call i32 @mtk_rx_get_desc(%struct.mtk_rx_dma* %13, %struct.mtk_rx_dma* %54)
  %56 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @RX_DMA_DONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %33
  br label %296

62:                                               ; preds = %33
  %63 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %64 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MTK_SOC_MT7628, align 4
  %69 = call i64 @MTK_HAS_CAPS(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %81

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RX_DMA_FPORT_SHIFT, align 4
  %76 = ashr i32 %74, %75
  %77 = load i32, i32* @RX_DMA_FPORT_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %72, %71
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @MTK_MAC_COUNT, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %90 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %89, i32 0, i32 5
  %91 = load %struct.net_device**, %struct.net_device*** %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.net_device*, %struct.net_device** %91, i64 %93
  %95 = load %struct.net_device*, %struct.net_device** %94, align 8
  %96 = icmp ne %struct.net_device* %95, null
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %88, %84, %81
  %99 = phi i1 [ true, %84 ], [ true, %81 ], [ %97, %88 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %270

104:                                              ; preds = %98
  %105 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %106 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %105, i32 0, i32 5
  %107 = load %struct.net_device**, %struct.net_device*** %106, align 8
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.net_device*, %struct.net_device** %107, i64 %109
  %111 = load %struct.net_device*, %struct.net_device** %110, align 8
  store %struct.net_device* %111, %struct.net_device** %15, align 8
  %112 = load i32, i32* @MTK_RESETTING, align 4
  %113 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %114 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %113, i32 0, i32 4
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %270

119:                                              ; preds = %104
  %120 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %121 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32* @napi_alloc_frag(i32 %122)
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = icmp ne i32* %124, null
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = load %struct.net_device*, %struct.net_device** %15, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %270

136:                                              ; preds = %119
  %137 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %138 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* @NET_SKB_PAD, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %145 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %150 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %153 = call i64 @dma_map_single(i32 %139, i32* %148, i32 %151, i32 %152)
  store i64 %153, i64* %17, align 8
  %154 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %155 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = call i32 @dma_mapping_error(i32 %156, i64 %157)
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %136
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @skb_free_frag(i32* %162)
  %164 = load %struct.net_device*, %struct.net_device** %15, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %270

169:                                              ; preds = %136
  %170 = load i32*, i32** %10, align 8
  %171 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %172 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call %struct.sk_buff* @build_skb(i32* %170, i32 %173)
  store %struct.sk_buff* %174, %struct.sk_buff** %9, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %176 = icmp ne %struct.sk_buff* %175, null
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %169
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @skb_free_frag(i32* %182)
  %184 = load %struct.net_device*, %struct.net_device** %15, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %270

189:                                              ; preds = %169
  %190 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %191 = load i32, i32* @NET_SKB_PAD, align 4
  %192 = load i32, i32* @NET_IP_ALIGN, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 @skb_reserve(%struct.sk_buff* %190, i32 %193)
  %195 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %196 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %201 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %204 = call i32 @dma_unmap_single(i32 %197, i32 %199, i32 %202, i32 %203)
  %205 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @RX_DMA_GET_PLEN0(i32 %206)
  store i32 %207, i32* %16, align 4
  %208 = load %struct.net_device*, %struct.net_device** %15, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 2
  store %struct.net_device* %208, %struct.net_device** %210, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @skb_put(%struct.sk_buff* %211, i32 %212)
  %214 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %217 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %215, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %189
  %222 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %228

225:                                              ; preds = %189
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %226)
  br label %228

228:                                              ; preds = %225, %221
  %229 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %230 = load %struct.net_device*, %struct.net_device** %15, align 8
  %231 = call i32 @eth_type_trans(%struct.sk_buff* %229, %struct.net_device* %230)
  %232 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.net_device*, %struct.net_device** %15, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %228
  %241 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @RX_DMA_VID(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %247 = load i32, i32* @ETH_P_8021Q, align 4
  %248 = call i32 @htons(i32 %247)
  %249 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %13, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @RX_DMA_VID(i32 %250)
  %252 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %246, i32 %248, i64 %251)
  br label %253

253:                                              ; preds = %245, %240, %228
  %254 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %255 = call i32 @skb_record_rx_queue(%struct.sk_buff* %254, i32 0)
  %256 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %258 = call i32 @napi_gro_receive(%struct.napi_struct* %256, %struct.sk_buff* %257)
  %259 = load i32*, i32** %11, align 8
  %260 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %261 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %260, i32 0, i32 2
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  store i32* %259, i32** %265, align 8
  %266 = load i64, i64* %17, align 8
  %267 = trunc i64 %266 to i32
  %268 = load %struct.mtk_rx_dma*, %struct.mtk_rx_dma** %12, align 8
  %269 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %253, %181, %161, %130, %118, %103
  %271 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %272 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %271, i32 0, i32 2
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @MTK_SOC_MT7628, align 4
  %277 = call i64 @MTK_HAS_CAPS(i32 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %270
  %280 = load i32, i32* @RX_DMA_LSO, align 4
  %281 = load %struct.mtk_rx_dma*, %struct.mtk_rx_dma** %12, align 8
  %282 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 4
  br label %290

283:                                              ; preds = %270
  %284 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %285 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @RX_DMA_PLEN0(i32 %286)
  %288 = load %struct.mtk_rx_dma*, %struct.mtk_rx_dma** %12, align 8
  %289 = getelementptr inbounds %struct.mtk_rx_dma, %struct.mtk_rx_dma* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  br label %290

290:                                              ; preds = %283, %279
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %7, align 8
  %293 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %19

296:                                              ; preds = %61, %19
  br label %297

297:                                              ; preds = %296, %32
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = call i32 (...) @wmb()
  %302 = load %struct.mtk_eth*, %struct.mtk_eth** %6, align 8
  %303 = call i32 @mtk_update_rx_cpu_idx(%struct.mtk_eth* %302)
  br label %304

304:                                              ; preds = %300, %297
  %305 = load i32, i32* %14, align 4
  ret i32 %305
}

declare dso_local %struct.mtk_rx_ring* @mtk_get_rx_ring(%struct.mtk_eth*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NEXT_DESP_IDX(i32, i32) #1

declare dso_local i32 @mtk_rx_get_desc(%struct.mtk_rx_dma*, %struct.mtk_rx_dma*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32* @napi_alloc_frag(i32) #1

declare dso_local i64 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @skb_free_frag(i32*) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @RX_DMA_GET_PLEN0(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @RX_DMA_VID(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @RX_DMA_PLEN0(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mtk_update_rx_cpu_idx(%struct.mtk_eth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
