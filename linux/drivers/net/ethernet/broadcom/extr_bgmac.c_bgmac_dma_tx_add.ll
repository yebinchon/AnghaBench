; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_dma_tx_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.net_device*, %struct.device* }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.bgmac_dma_ring = type { i32, i32, i32, %struct.TYPE_4__*, %struct.bgmac_slot_info*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.bgmac_slot_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32* }

@BGMAC_TX_RING_SLOTS = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL1_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Too long skb (%d)\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"TX ring is full, queue should be stopped!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL0_SOF = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL0_EOF = common dso_local global i32 0, align 4
@BGMAC_DESC_CTL0_IOC = common dso_local global i32 0, align 4
@BGMAC_DMA_TX_INDEX = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Mapping error of skb on ring 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*, %struct.bgmac_dma_ring*, %struct.sk_buff*)* @bgmac_dma_tx_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgmac_dma_tx_add(%struct.bgmac* %0, %struct.bgmac_dma_ring* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bgmac*, align 8
  %6 = alloca %struct.bgmac_dma_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bgmac_slot_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bgmac_slot_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %5, align 8
  store %struct.bgmac_dma_ring* %1, %struct.bgmac_dma_ring** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %21 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 1
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %8, align 8
  %24 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %25 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %9, align 8
  %27 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %28 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %33 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %32, i32 0, i32 4
  %34 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %34, i64 %36
  store %struct.bgmac_slot_info* %37, %struct.bgmac_slot_info** %11, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BGMAC_DESC_CTL1_LEN, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %3
  %44 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %45 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %44, i32 0, i32 0
  %46 = load %struct.net_device*, %struct.net_device** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %286

51:                                               ; preds = %3
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @skb_checksum_help(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %66 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %69 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %60
  %78 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %79 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %78, i32 0, i32 0
  %80 = load %struct.net_device*, %struct.net_device** %79, align 8
  %81 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.net_device*, %struct.net_device** %9, align 8
  %83 = call i32 @netif_stop_queue(%struct.net_device* %82)
  %84 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %84, i32* %4, align 4
  br label %300

85:                                               ; preds = %60
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @skb_headlen(%struct.sk_buff* %90)
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = call i32 @dma_map_single(%struct.device* %86, i32 %89, i32 %91, i32 %92)
  %94 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %95 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %8, align 8
  %97 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %98 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dma_mapping_error(%struct.device* %96, i32 %99)
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  br label %278

104:                                              ; preds = %85
  %105 = load i32, i32* @BGMAC_DESC_CTL0_SOF, align 4
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @BGMAC_DESC_CTL0_EOF, align 4
  %110 = load i32, i32* @BGMAC_DESC_CTL0_IOC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %116 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @skb_headlen(%struct.sk_buff* %118)
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @bgmac_dma_tx_add_buf(%struct.bgmac* %115, %struct.bgmac_dma_ring* %116, i32 %117, i32 %119, i32 %120)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %179, %114
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %182

126:                                              ; preds = %122
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %15, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @skb_frag_size(i32* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %139 = srem i32 %137, %138
  store i32 %139, i32* %10, align 4
  %140 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %141 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %140, i32 0, i32 4
  %142 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %142, i64 %144
  store %struct.bgmac_slot_info* %145, %struct.bgmac_slot_info** %11, align 8
  %146 = load %struct.device*, %struct.device** %8, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @DMA_TO_DEVICE, align 4
  %150 = call i32 @skb_frag_dma_map(%struct.device* %146, i32* %147, i32 0, i32 %148, i32 %149)
  %151 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %152 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %155 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @dma_mapping_error(%struct.device* %153, i32 %156)
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %126
  br label %231

161:                                              ; preds = %126
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @BGMAC_DESC_CTL0_EOF, align 4
  %168 = load i32, i32* @BGMAC_DESC_CTL0_IOC, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %13, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %174 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @bgmac_dma_tx_add_buf(%struct.bgmac* %173, %struct.bgmac_dma_ring* %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %122

182:                                              ; preds = %122
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %185 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %184, i32 0, i32 1
  store %struct.sk_buff* %183, %struct.sk_buff** %185, align 8
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  %188 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %189 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.net_device*, %struct.net_device** %9, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @netdev_sent_queue(%struct.net_device* %192, i32 %195)
  %197 = call i32 (...) @wmb()
  %198 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %199 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %200 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @BGMAC_DMA_TX_INDEX, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %205 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %208 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %211 = srem i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = add i64 %206, %213
  %215 = call i32 @bgmac_write(%struct.bgmac* %198, i32 %203, i64 %214)
  %216 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %217 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %220 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  %223 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %224 = sub nsw i32 %223, 8
  %225 = icmp sge i32 %222, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %182
  %227 = load %struct.net_device*, %struct.net_device** %9, align 8
  %228 = call i32 @netif_stop_queue(%struct.net_device* %227)
  br label %229

229:                                              ; preds = %226, %182
  %230 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %230, i32* %4, align 4
  br label %300

231:                                              ; preds = %160
  %232 = load %struct.device*, %struct.device** %8, align 8
  %233 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %11, align 8
  %234 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %237 = call i32 @skb_headlen(%struct.sk_buff* %236)
  %238 = load i32, i32* @DMA_TO_DEVICE, align 4
  %239 = call i32 @dma_unmap_single(%struct.device* %232, i32 %235, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %244, %231
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %14, align 4
  %243 = icmp sgt i32 %241, 0
  br i1 %243, label %244, label %277

244:                                              ; preds = %240
  %245 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %246 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = add nsw i32 %247, %248
  %250 = load i32, i32* @BGMAC_TX_RING_SLOTS, align 4
  %251 = srem i32 %249, %250
  store i32 %251, i32* %17, align 4
  %252 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %253 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %252, i32 0, i32 4
  %254 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %254, i64 %256
  store %struct.bgmac_slot_info* %257, %struct.bgmac_slot_info** %18, align 8
  %258 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %259 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %258, i32 0, i32 3
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %17, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @le32_to_cpu(i32 %265)
  store i32 %266, i32* %19, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* @BGMAC_DESC_CTL1_LEN, align 4
  %269 = and i32 %267, %268
  store i32 %269, i32* %20, align 4
  %270 = load %struct.device*, %struct.device** %8, align 8
  %271 = load %struct.bgmac_slot_info*, %struct.bgmac_slot_info** %18, align 8
  %272 = getelementptr inbounds %struct.bgmac_slot_info, %struct.bgmac_slot_info* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* @DMA_TO_DEVICE, align 4
  %276 = call i32 @dma_unmap_page(%struct.device* %270, i32 %273, i32 %274, i32 %275)
  br label %240

277:                                              ; preds = %240
  br label %278

278:                                              ; preds = %277, %103
  %279 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %280 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %279, i32 0, i32 0
  %281 = load %struct.net_device*, %struct.net_device** %280, align 8
  %282 = load %struct.bgmac_dma_ring*, %struct.bgmac_dma_ring** %6, align 8
  %283 = getelementptr inbounds %struct.bgmac_dma_ring, %struct.bgmac_dma_ring* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %281, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %278, %43
  %287 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %288 = call i32 @dev_kfree_skb(%struct.sk_buff* %287)
  %289 = load %struct.net_device*, %struct.net_device** %9, align 8
  %290 = getelementptr inbounds %struct.net_device, %struct.net_device* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load %struct.net_device*, %struct.net_device** %9, align 8
  %295 = getelementptr inbounds %struct.net_device, %struct.net_device* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %299, i32* %4, align 4
  br label %300

300:                                              ; preds = %286, %229, %77
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @bgmac_dma_tx_add_buf(%struct.bgmac*, %struct.bgmac_dma_ring*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bgmac_write(%struct.bgmac*, i32, i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
