; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c___wil_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c___wil_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.TYPE_10__, i64, i32, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.TYPE_10__ = type { i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)*, i32 (%union.wil_tx_desc*, i32, i32, i32)* }
%struct.device = type opaque
%union.wil_tx_desc = type { i32 }
%struct.wil_ctx = type { i32, i32, i32 }
%struct.wil_ring_tx_data = type { i64, i32, i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil_ring = type { i64, i64, %struct.TYPE_9__*, %struct.wil_ctx*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.vring_tx_desc }
%struct.vring_tx_desc = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.sk_buff = type { i32, i8*, %struct.wil_ctx* }
%struct.device.0 = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }

@.str = private unnamed_addr constant [43 x i8] c"tx_ring: %d bytes to ring %d, nr_frags %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Tx ring[%2d] full. No space for %d fragments\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Tx[%2d] skb %d bytes 0x%p -> %pad\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Tx \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@wil_mapped_as_single = common dso_local global i32 0, align 4
@MAC_CFG_DESC_TX_0_MCS_EN_POS = common dso_local global i32 0, align 4
@WIL_BCAST_MCS0_LIMIT = common dso_local global i64 0, align 8
@MAC_CFG_DESC_TX_0_MCS_INDEX_POS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Tx[%2d] Failed to set cksum, drop packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Tx[%2d] desc[%4d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TxD \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Tx[%2d] failed to map fragment\0A\00", align 1
@wil_mapped_as_page = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_CMD_EOP_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS = common dso_local global i32 0, align 4
@DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Ring[%2d] not idle %d -> %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Tx[%2d] swhead %d -> %d\0A\00", align 1
@TX_DMA_STATUS_DU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, %struct.sk_buff*)* @__wil_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wil_tx_ring(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.wil_ring* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil6210_vif*, align 8
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.device.0*, align 8
  %11 = alloca %struct.vring_tx_desc, align 8
  %12 = alloca %struct.vring_tx_desc*, align 8
  %13 = alloca %struct.vring_tx_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.wil_ring_tx_data*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.wil_ctx*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %7, align 8
  store %struct.wil_ring* %2, %struct.wil_ring** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %28 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %29 = call %struct.device.0* @wil_to_dev(%struct.wil6210_priv* %28)
  store %struct.device.0* %29, %struct.device.0** %10, align 8
  store %struct.vring_tx_desc* %11, %struct.vring_tx_desc** %12, align 8
  %30 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %31 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %14, align 8
  %33 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %34 = call i32 @wil_ring_avail_tx(%struct.wil_ring* %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %39 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %41 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %40, i32 0, i32 4
  %42 = load %struct.wil_ring*, %struct.wil_ring** %41, align 8
  %43 = ptrtoint %struct.wil_ring* %39 to i64
  %44 = ptrtoint %struct.wil_ring* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 40
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %18, align 4
  %48 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %49 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %48, i32 0, i32 3
  %50 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %50, i64 %52
  store %struct.wil_ring_tx_data* %53, %struct.wil_ring_tx_data** %19, align 8
  %54 = load i64, i64* %14, align 8
  store i64 %54, i64* %20, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.wil6210_vif*, %struct.wil6210_vif** %7, align 8
  %57 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %23, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @skb_headlen(%struct.sk_buff* %61)
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %24, align 8
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %16, align 4
  %71 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %69, i32 %70)
  %72 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %19, align 8
  %73 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %4
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %465

83:                                               ; preds = %4
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 1, %85
  %87 = icmp slt i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 1, %94
  %96 = call i32 @wil_err_ratelimited(%struct.wil6210_priv* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %465

99:                                               ; preds = %83
  %100 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %101 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i64, i64* %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store %struct.vring_tx_desc* %106, %struct.vring_tx_desc** %13, align 8
  %107 = load %struct.device.0*, %struct.device.0** %10, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call i32 @skb_headlen(%struct.sk_buff* %111)
  %113 = load i32, i32* @DMA_TO_DEVICE, align 4
  %114 = call i32 @dma_map_single(%struct.device.0* %107, i8* %110, i32 %112, i32 %113)
  store i32 %114, i32* %21, align 4
  %115 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call i32 @skb_headlen(%struct.sk_buff* %117)
  %119 = sext i32 %118 to i64
  %120 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %116, i64 %119, i8* %122, i32* %21)
  %124 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = call i32 @skb_headlen(%struct.sk_buff* %128)
  %130 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 16, i32 1, i8* %127, i32 %129, i32 0)
  %131 = load %struct.device.0*, %struct.device.0** %10, align 8
  %132 = load i32, i32* %21, align 4
  %133 = call i32 @dma_mapping_error(%struct.device.0* %131, i32 %132)
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %99
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %465

139:                                              ; preds = %99
  %140 = load i32, i32* @wil_mapped_as_single, align 4
  %141 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %142 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %141, i32 0, i32 3
  %143 = load %struct.wil_ctx*, %struct.wil_ctx** %142, align 8
  %144 = load i64, i64* %20, align 8
  %145 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %143, i64 %144
  %146 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %145, i32 0, i32 2
  store i32 %140, i32* %146, align 4
  %147 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %148 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32 (%union.wil_tx_desc*, i32, i32, i32)*, i32 (%union.wil_tx_desc*, i32, i32, i32)** %149, align 8
  %151 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %152 = bitcast %struct.vring_tx_desc* %151 to %union.wil_tx_desc*
  %153 = load i32, i32* %21, align 4
  %154 = load i64, i64* %24, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %18, align 4
  %157 = call i32 %150(%union.wil_tx_desc* %152, i32 %153, i32 %155, i32 %156)
  %158 = load i32, i32* %23, align 4
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %139
  %162 = load i32, i32* @MAC_CFG_DESC_TX_0_MCS_EN_POS, align 4
  %163 = call i32 @BIT(i32 %162)
  %164 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %165 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %163
  store i32 %170, i32* %168, align 4
  %171 = load i64, i64* %24, align 8
  %172 = load i64, i64* @WIL_BCAST_MCS0_LIMIT, align 8
  %173 = icmp ugt i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %161
  %178 = load i32, i32* @MAC_CFG_DESC_TX_0_MCS_INDEX_POS, align 4
  %179 = shl i32 1, %178
  %180 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %181 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %179
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %177, %161
  br label %188

188:                                              ; preds = %187, %139
  %189 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %191 = call i32 @wil_tx_desc_offload_setup(%struct.vring_tx_desc* %189, %struct.sk_buff* %190)
  %192 = call i64 @unlikely(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @wil_err(%struct.wil6210_priv* %195, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  br label %410

198:                                              ; preds = %188
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %201 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %200, i32 0, i32 3
  %202 = load %struct.wil_ctx*, %struct.wil_ctx** %201, align 8
  %203 = load i64, i64* %20, align 8
  %204 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %202, i64 %203
  %205 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %204, i32 0, i32 0
  store i32 %199, i32* %205, align 4
  %206 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @wil_tx_desc_set_nr_frags(%struct.vring_tx_desc* %206, i32 %208)
  br label %210

210:                                              ; preds = %287, %198
  %211 = load i64, i64* %17, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp ult i64 %211, %213
  br i1 %214, label %215, label %290

215:                                              ; preds = %210
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %216)
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %17, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %25, align 8
  %222 = load i32*, i32** %25, align 8
  %223 = call i32 @skb_frag_size(i32* %222)
  store i32 %223, i32* %26, align 4
  %224 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %225 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %226 = bitcast %struct.vring_tx_desc* %224 to i8*
  %227 = bitcast %struct.vring_tx_desc* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 16, i1 true)
  %228 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %229 = load i32, i32* %18, align 4
  %230 = load i64, i64* %20, align 8
  %231 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %228, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %229, i64 %230)
  %232 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %233 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %234 = bitcast %struct.vring_tx_desc* %233 to i8*
  %235 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %232, i32 32, i32 4, i8* %234, i32 16, i32 0)
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* %17, align 8
  %238 = add i64 %236, %237
  %239 = add i64 %238, 1
  %240 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %241 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = urem i64 %239, %242
  store i64 %243, i64* %20, align 8
  %244 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %245 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %244, i32 0, i32 2
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = load i64, i64* %20, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  store %struct.vring_tx_desc* %250, %struct.vring_tx_desc** %13, align 8
  %251 = load %struct.device.0*, %struct.device.0** %10, align 8
  %252 = load i32*, i32** %25, align 8
  %253 = load i32*, i32** %25, align 8
  %254 = call i32 @skb_frag_size(i32* %253)
  %255 = load i32, i32* @DMA_TO_DEVICE, align 4
  %256 = call i32 @skb_frag_dma_map(%struct.device.0* %251, i32* %252, i32 0, i32 %254, i32 %255)
  store i32 %256, i32* %21, align 4
  %257 = load %struct.device.0*, %struct.device.0** %10, align 8
  %258 = load i32, i32* %21, align 4
  %259 = call i32 @dma_mapping_error(%struct.device.0* %257, i32 %258)
  %260 = call i64 @unlikely(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %215
  %263 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %264 = load i32, i32* %18, align 4
  %265 = call i32 @wil_err(%struct.wil6210_priv* %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %264)
  br label %410

266:                                              ; preds = %215
  %267 = load i32, i32* @wil_mapped_as_page, align 4
  %268 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %269 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %268, i32 0, i32 3
  %270 = load %struct.wil_ctx*, %struct.wil_ctx** %269, align 8
  %271 = load i64, i64* %20, align 8
  %272 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %270, i64 %271
  %273 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %272, i32 0, i32 2
  store i32 %267, i32* %273, align 4
  %274 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %275 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32 (%union.wil_tx_desc*, i32, i32, i32)*, i32 (%union.wil_tx_desc*, i32, i32, i32)** %276, align 8
  %278 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %279 = bitcast %struct.vring_tx_desc* %278 to %union.wil_tx_desc*
  %280 = load i32, i32* %21, align 4
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %18, align 4
  %283 = call i32 %277(%union.wil_tx_desc* %279, i32 %280, i32 %281, i32 %282)
  %284 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %285 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %286 = call i32 @wil_tx_desc_offload_setup(%struct.vring_tx_desc* %284, %struct.sk_buff* %285)
  br label %287

287:                                              ; preds = %266
  %288 = load i64, i64* %17, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %17, align 8
  br label %210

290:                                              ; preds = %210
  %291 = load i32, i32* @DMA_CFG_DESC_TX_0_CMD_EOP_POS, align 4
  %292 = call i32 @BIT(i32 %291)
  %293 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %294 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %292
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* @DMA_CFG_DESC_TX_0_CMD_MARK_WB_POS, align 4
  %299 = call i32 @BIT(i32 %298)
  %300 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %301 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = or i32 %303, %299
  store i32 %304, i32* %302, align 8
  %305 = load i32, i32* @DMA_CFG_DESC_TX_0_CMD_DMA_IT_POS, align 4
  %306 = call i32 @BIT(i32 %305)
  %307 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %308 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %306
  store i32 %311, i32* %309, align 8
  %312 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %313 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %314 = bitcast %struct.vring_tx_desc* %312 to i8*
  %315 = bitcast %struct.vring_tx_desc* %313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %314, i8* align 8 %315, i64 16, i1 true)
  %316 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %317 = load i32, i32* %18, align 4
  %318 = load i64, i64* %20, align 8
  %319 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %316, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %317, i64 %318)
  %320 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %321 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %322 = bitcast %struct.vring_tx_desc* %321 to i8*
  %323 = call i32 @wil_hex_dump_txrx(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %320, i32 32, i32 4, i8* %322, i32 16, i32 0)
  %324 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %325 = call i32 @skb_get(%struct.sk_buff* %324)
  %326 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %327 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %326, i32 0, i32 3
  %328 = load %struct.wil_ctx*, %struct.wil_ctx** %327, align 8
  %329 = load i64, i64* %20, align 8
  %330 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %328, i64 %329
  %331 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %330, i32 0, i32 1
  store i32 %325, i32* %331, align 4
  %332 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %333 = call i32 @wil_ring_used_tx(%struct.wil_ring* %332)
  store i32 %333, i32* %22, align 4
  %334 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %335 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* %22, align 4
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %338, %339
  %341 = add nsw i32 %340, 1
  %342 = call i64 @wil_val_in_range(i32 %336, i32 %337, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %365

344:                                              ; preds = %290
  %345 = call i64 (...) @get_cycles()
  %346 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %19, align 8
  %347 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = sub nsw i64 %345, %348
  %350 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %19, align 8
  %351 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, %349
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %351, align 8
  %356 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %357 = load i32, i32* %18, align 4
  %358 = load i32, i32* %22, align 4
  %359 = sext i32 %358 to i64
  %360 = load i32, i32* %22, align 4
  %361 = load i32, i32* %16, align 4
  %362 = add nsw i32 %360, %361
  %363 = add nsw i32 %362, 1
  %364 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %357, i64 %359, i32 %363)
  br label %365

365:                                              ; preds = %344, %290
  %366 = call i32 (...) @wmb()
  %367 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %368 = load i32, i32* %16, align 4
  %369 = add nsw i32 %368, 1
  %370 = call i32 @wil_ring_advance_head(%struct.wil_ring* %367, i32 %369)
  %371 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %372 = load i32, i32* %18, align 4
  %373 = load i64, i64* %14, align 8
  %374 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %375 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = call i32 (%struct.wil6210_priv*, i8*, i32, i64, ...) @wil_dbg_txrx(%struct.wil6210_priv* %371, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %372, i64 %373, i64 %376)
  %378 = load i32, i32* %18, align 4
  %379 = load i64, i64* %14, align 8
  %380 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %381 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %16, align 4
  %384 = call i32 @trace_wil6210_tx(i32 %378, i64 %379, i32 %382, i32 %383)
  %385 = call i32 (...) @wmb()
  %386 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %387 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %395

390:                                              ; preds = %365
  %391 = call i32 (...) @ktime_get()
  %392 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %393 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %392, i32 0, i32 2
  %394 = bitcast %struct.wil_ctx** %393 to i32*
  store i32 %391, i32* %394, align 8
  br label %400

395:                                              ; preds = %365
  %396 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %397 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %396, i32 0, i32 2
  %398 = load %struct.wil_ctx*, %struct.wil_ctx** %397, align 8
  %399 = call i32 @memset(%struct.wil_ctx* %398, i32 0, i32 4)
  br label %400

400:                                              ; preds = %395, %390
  %401 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %402 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %403 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %406 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = trunc i64 %407 to i32
  %409 = call i32 @wil_w(%struct.wil6210_priv* %401, i32 %404, i32 %408)
  store i32 0, i32* %5, align 4
  br label %465

410:                                              ; preds = %262, %194
  %411 = load i64, i64* %17, align 8
  %412 = add i64 %411, 1
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %414

414:                                              ; preds = %459, %410
  %415 = load i64, i64* %17, align 8
  %416 = load i32, i32* %16, align 4
  %417 = sext i32 %416 to i64
  %418 = icmp ult i64 %415, %417
  br i1 %418, label %419, label %462

419:                                              ; preds = %414
  %420 = load i64, i64* %14, align 8
  %421 = load i64, i64* %17, align 8
  %422 = add i64 %420, %421
  %423 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %424 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = urem i64 %422, %425
  store i64 %426, i64* %20, align 8
  %427 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %428 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %427, i32 0, i32 3
  %429 = load %struct.wil_ctx*, %struct.wil_ctx** %428, align 8
  %430 = load i64, i64* %20, align 8
  %431 = getelementptr inbounds %struct.wil_ctx, %struct.wil_ctx* %429, i64 %430
  store %struct.wil_ctx* %431, %struct.wil_ctx** %27, align 8
  %432 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %433 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %432, i32 0, i32 2
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %433, align 8
  %435 = load i64, i64* %20, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 0
  store %struct.vring_tx_desc* %438, %struct.vring_tx_desc** %13, align 8
  %439 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %440 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %441 = bitcast %struct.vring_tx_desc* %439 to i8*
  %442 = bitcast %struct.vring_tx_desc* %440 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %441, i8* align 8 %442, i64 16, i1 true)
  %443 = load i32, i32* @TX_DMA_STATUS_DU, align 4
  %444 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %13, align 8
  %445 = getelementptr inbounds %struct.vring_tx_desc, %struct.vring_tx_desc* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 1
  store volatile i32 %443, i32* %446, align 4
  %447 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %448 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 0
  %450 = load i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)*, i32 (%struct.device*, %union.wil_tx_desc*, %struct.wil_ctx*)** %449, align 8
  %451 = load %struct.device.0*, %struct.device.0** %10, align 8
  %452 = bitcast %struct.device.0* %451 to %struct.device*
  %453 = load %struct.vring_tx_desc*, %struct.vring_tx_desc** %12, align 8
  %454 = bitcast %struct.vring_tx_desc* %453 to %union.wil_tx_desc*
  %455 = load %struct.wil_ctx*, %struct.wil_ctx** %27, align 8
  %456 = call i32 %450(%struct.device* %452, %union.wil_tx_desc* %454, %struct.wil_ctx* %455)
  %457 = load %struct.wil_ctx*, %struct.wil_ctx** %27, align 8
  %458 = call i32 @memset(%struct.wil_ctx* %457, i32 0, i32 12)
  br label %459

459:                                              ; preds = %419
  %460 = load i64, i64* %17, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %17, align 8
  br label %414

462:                                              ; preds = %414
  %463 = load i32, i32* @EINVAL, align 4
  %464 = sub nsw i32 0, %463
  store i32 %464, i32* %5, align 4
  br label %465

465:                                              ; preds = %462, %400, %136, %91, %80
  %466 = load i32, i32* %5, align 4
  ret i32 %466
}

declare dso_local %struct.device.0* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_ring_avail_tx(%struct.wil_ring*) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, i32, i64, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wil_err_ratelimited(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device.0*, i8*, i32, i32) #1

declare dso_local i32 @wil_hex_dump_txrx(i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device.0*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wil_tx_desc_offload_setup(%struct.vring_tx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_tx_desc_set_nr_frags(%struct.vring_tx_desc*, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skb_frag_dma_map(%struct.device.0*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @wil_ring_used_tx(%struct.wil_ring*) #1

declare dso_local i64 @wil_val_in_range(i32, i32, i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @wil_ring_advance_head(%struct.wil_ring*, i32) #1

declare dso_local i32 @trace_wil6210_tx(i32, i64, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @memset(%struct.wil_ctx*, i32, i32) #1

declare dso_local i32 @wil_w(%struct.wil6210_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
