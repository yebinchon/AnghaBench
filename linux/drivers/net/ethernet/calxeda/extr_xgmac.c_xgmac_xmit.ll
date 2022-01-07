; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.xgmac_priv = type { i32, i32, i32, %struct.sk_buff**, %struct.xgmac_dma_desc*, i64 }
%struct.xgmac_dma_desc = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TX_RING_SZ = common dso_local global i32 0, align 4
@TXDESC_INTERRUPT = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TXDESC_CSUM_ALL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TXDESC_LAST_SEG = common dso_local global i32 0, align 4
@TXDESC_FIRST_SEG = common dso_local global i32 0, align 4
@XGMAC_DMA_TX_POLL = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xgmac_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xgmac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xgmac_dma_desc*, align 8
  %12 = alloca %struct.xgmac_dma_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.xgmac_priv* %18, %struct.xgmac_priv** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %24 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %28 = sdiv i32 %27, 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %26, %29
  %31 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %34 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @TXDESC_INTERRUPT, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @TXDESC_CSUM_ALL, align 4
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %13, align 4
  %52 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %53 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %56 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %55, i32 0, i32 4
  %57 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %57, i64 %59
  store %struct.xgmac_dma_desc* %60, %struct.xgmac_dma_desc** %11, align 8
  %61 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  store %struct.xgmac_dma_desc* %61, %struct.xgmac_dma_desc** %12, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @skb_headlen(%struct.sk_buff* %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %65 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_map_single(i32 %66, i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %74 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @dma_mapping_error(i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %50
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  %82 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %268

83:                                               ; preds = %50
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %86 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %85, i32 0, i32 3
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %87, i64 %89
  store %struct.sk_buff* %84, %struct.sk_buff** %90, align 8
  %91 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @desc_set_buf_addr_and_size(%struct.xgmac_dma_desc* %91, i32 %92, i32 %93)
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %154, %83
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %95
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %16, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @skb_frag_size(i32* %107)
  store i32 %108, i32* %14, align 4
  %109 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %110 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @DMA_TO_DEVICE, align 4
  %115 = call i32 @skb_frag_dma_map(i32 %111, i32* %112, i32 0, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %117 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i64 @dma_mapping_error(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %99
  br label %216

123:                                              ; preds = %99
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %126 = call i8* @dma_ring_incr(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %129 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %128, i32 0, i32 4
  %130 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %130, i64 %132
  store %struct.xgmac_dma_desc* %133, %struct.xgmac_dma_desc** %11, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %136 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %135, i32 0, i32 3
  %137 = load %struct.sk_buff**, %struct.sk_buff*** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %137, i64 %139
  store %struct.sk_buff* %134, %struct.sk_buff** %140, align 8
  %141 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @desc_set_buf_addr_and_size(%struct.xgmac_dma_desc* %141, i32 %142, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %10, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %123
  %150 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @desc_set_tx_owner(%struct.xgmac_dma_desc* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %123
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %95

157:                                              ; preds = %95
  %158 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %159 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %12, align 8
  %160 = icmp ne %struct.xgmac_dma_desc* %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @TXDESC_LAST_SEG, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %9, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @desc_set_tx_owner(%struct.xgmac_dma_desc* %162, i32 %167)
  br label %175

169:                                              ; preds = %157
  %170 = load i32, i32* @TXDESC_LAST_SEG, align 4
  %171 = load i32, i32* %9, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %13, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %13, align 4
  br label %175

175:                                              ; preds = %169, %161
  %176 = call i32 (...) @wmb()
  %177 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @TXDESC_FIRST_SEG, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @desc_set_tx_owner(%struct.xgmac_dma_desc* %177, i32 %180)
  %182 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %183 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @XGMAC_DMA_TX_POLL, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 1, i64 %186)
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %190 = call i8* @dma_ring_incr(i32 %188, i32 %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %193 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = call i32 (...) @smp_mb()
  %195 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %196 = call i64 @tx_dma_ring_space(%struct.xgmac_priv* %195)
  %197 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %198 = icmp sle i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %175
  %203 = load %struct.net_device*, %struct.net_device** %5, align 8
  %204 = call i32 @netif_stop_queue(%struct.net_device* %203)
  %205 = call i32 (...) @smp_mb()
  %206 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %207 = call i64 @tx_dma_ring_space(%struct.xgmac_priv* %206)
  %208 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %209 = icmp sgt i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %202
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = call i32 @netif_start_queue(%struct.net_device* %211)
  br label %213

213:                                              ; preds = %210, %202
  br label %214

214:                                              ; preds = %213, %175
  %215 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %215, i32* %3, align 4
  br label %268

216:                                              ; preds = %122
  %217 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %218 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %251, %216
  %221 = load i32, i32* %8, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %254

223:                                              ; preds = %220
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @DMA_TX_RING_SZ, align 4
  %226 = call i8* @dma_ring_incr(i32 %224, i32 %225)
  %227 = ptrtoint i8* %226 to i32
  store i32 %227, i32* %7, align 4
  %228 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %229 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %228, i32 0, i32 4
  %230 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %230, i64 %232
  store %struct.xgmac_dma_desc* %233, %struct.xgmac_dma_desc** %11, align 8
  %234 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %235 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %234, i32 0, i32 3
  %236 = load %struct.sk_buff**, %struct.sk_buff*** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %236, i64 %238
  store %struct.sk_buff* null, %struct.sk_buff** %239, align 8
  %240 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %241 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %244 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %243)
  %245 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %246 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %245)
  %247 = load i32, i32* @DMA_TO_DEVICE, align 4
  %248 = call i32 @dma_unmap_page(i32 %242, i32 %244, i32 %246, i32 %247)
  %249 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %250 = call i32 @desc_clear_tx_owner(%struct.xgmac_dma_desc* %249)
  br label %251

251:                                              ; preds = %223
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %8, align 4
  br label %220

254:                                              ; preds = %220
  %255 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %12, align 8
  store %struct.xgmac_dma_desc* %255, %struct.xgmac_dma_desc** %11, align 8
  %256 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %257 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %260 = call i32 @desc_get_buf_addr(%struct.xgmac_dma_desc* %259)
  %261 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %11, align 8
  %262 = call i32 @desc_get_buf_len(%struct.xgmac_dma_desc* %261)
  %263 = load i32, i32* @DMA_TO_DEVICE, align 4
  %264 = call i32 @dma_unmap_single(i32 %258, i32 %260, i32 %262, i32 %263)
  %265 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %266 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %265)
  %267 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %267, i32* %3, align 4
  br label %268

268:                                              ; preds = %254, %214, %79
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @desc_set_buf_addr_and_size(%struct.xgmac_dma_desc*, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i8* @dma_ring_incr(i32, i32) #1

declare dso_local i32 @desc_set_tx_owner(%struct.xgmac_dma_desc*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tx_dma_ring_space(%struct.xgmac_priv*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @desc_get_buf_addr(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @desc_get_buf_len(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @desc_clear_tx_owner(%struct.xgmac_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
