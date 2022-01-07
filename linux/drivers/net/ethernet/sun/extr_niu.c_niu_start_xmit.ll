; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.niu = type { i32, %struct.TYPE_4__*, %struct.tx_ring_info* }
%struct.TYPE_4__ = type { i32 (i32, i64, i32, i32)*, i32 (i32, i32, i32, i32, i32)* }
%struct.tx_ring_info = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.netdev_queue = type { i32 }
%struct.tx_pkt_hdr = type { i64, i32 }
%struct.ethhdr = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"%s: BUG! Tx ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESC_SOP = common dso_local global i32 0, align 4
@TX_DESC_MARK = common dso_local global i32 0, align 4
@MAX_TX_DESC_LEN = common dso_local global i32 0, align 4
@TX_RING_KICK_WRAP = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @niu_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.niu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netdev_queue*, align 8
  %10 = alloca %struct.tx_ring_info*, align 8
  %11 = alloca %struct.tx_pkt_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ethhdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.niu* @netdev_priv(%struct.net_device* %23)
  store %struct.niu* %24, %struct.niu** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.niu*, %struct.niu** %6, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 2
  %29 = load %struct.tx_ring_info*, %struct.tx_ring_info** %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %29, i64 %31
  store %struct.tx_ring_info* %32, %struct.tx_ring_info** %10, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load i32, i32* %16, align 4
  %35 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %33, i32 %34)
  store %struct.netdev_queue* %35, %struct.netdev_queue** %9, align 8
  %36 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %37 = call i64 @niu_tx_avail(%struct.tx_ring_info* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = icmp sle i64 %37, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %2
  %46 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %47 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %46)
  %48 = load %struct.niu*, %struct.niu** %6, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %56 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %327

60:                                               ; preds = %2
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i64 @eth_skb_pad(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %318

65:                                               ; preds = %60
  store i32 31, i32* %12, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_headroom(%struct.sk_buff* %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %71, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %20, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %320

77:                                               ; preds = %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %4, align 8
  br label %84

81:                                               ; preds = %65
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @skb_orphan(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = and i64 %87, 15
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 16
  store i64 %90, i64* %8, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.ethhdr*
  store %struct.ethhdr* %94, %struct.ethhdr** %14, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call %struct.tx_pkt_hdr* @skb_push(%struct.sk_buff* %95, i64 %96)
  store %struct.tx_pkt_hdr* %97, %struct.tx_pkt_hdr** %11, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 %101, 16
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load %struct.ethhdr*, %struct.ethhdr** %14, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @niu_compute_tx_flags(%struct.sk_buff* %104, %struct.ethhdr* %105, i64 %106, i32 %107)
  %109 = call i32 @cpu_to_le64(i32 %108)
  %110 = load %struct.tx_pkt_hdr*, %struct.tx_pkt_hdr** %11, align 8
  %111 = getelementptr inbounds %struct.tx_pkt_hdr, %struct.tx_pkt_hdr* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.tx_pkt_hdr*, %struct.tx_pkt_hdr** %11, align 8
  %113 = getelementptr inbounds %struct.tx_pkt_hdr, %struct.tx_pkt_hdr* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @skb_headlen(%struct.sk_buff* %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.niu*, %struct.niu** %6, align 8
  %117 = getelementptr inbounds %struct.niu, %struct.niu* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %119, align 8
  %121 = load %struct.niu*, %struct.niu** %6, align 8
  %122 = getelementptr inbounds %struct.niu, %struct.niu* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @DMA_TO_DEVICE, align 4
  %129 = call i32 %120(i32 %123, i64 %126, i32 %127, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %131 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %15, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %135 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %134, i32 0, i32 6
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store %struct.sk_buff* %133, %struct.sk_buff** %140, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %143 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %142, i32 0, i32 6
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 8
  %149 = load i32, i32* @TX_DESC_SOP, align 4
  store i32 %149, i32* %19, align 4
  %150 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %151 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %151, align 8
  %154 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %155 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %153, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %84
  %159 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %160 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* @TX_DESC_MARK, align 4
  %162 = load i32, i32* %19, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %19, align 4
  %164 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %165 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %158, %84
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %17, align 4
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %170)
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %177, %168
  %175 = load i32, i32* %17, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i32, i32* @MAX_TX_DESC_LEN, align 4
  %179 = load i32, i32* %17, align 4
  %180 = sub nsw i32 %179, %178
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %13, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %174

183:                                              ; preds = %174
  br label %184

184:                                              ; preds = %194, %183
  %185 = load i32, i32* %12, align 4
  %186 = icmp ugt i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %184
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %21, align 4
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* @MAX_TX_DESC_LEN, align 4
  %191 = icmp ugt i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @MAX_TX_DESC_LEN, align 4
  store i32 %193, i32* %21, align 4
  br label %194

194:                                              ; preds = %192, %187
  %195 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @niu_set_txd(%struct.tx_ring_info* %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %202 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @NEXT_TX(%struct.tx_ring_info* %202, i32 %203)
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %18, align 4
  %207 = add i32 %206, %205
  store i32 %207, i32* %18, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %12, align 4
  %210 = sub i32 %209, %208
  store i32 %210, i32* %12, align 4
  br label %184

211:                                              ; preds = %184
  store i32 0, i32* %16, align 4
  br label %212

212:                                              ; preds = %267, %211
  %213 = load i32, i32* %16, align 4
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %214)
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %213, %217
  br i1 %218, label %219, label %270

219:                                              ; preds = %212
  %220 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %221 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %220)
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32* %226, i32** %22, align 8
  %227 = load i32*, i32** %22, align 8
  %228 = call i32 @skb_frag_size(i32* %227)
  store i32 %228, i32* %12, align 4
  %229 = load %struct.niu*, %struct.niu** %6, align 8
  %230 = getelementptr inbounds %struct.niu, %struct.niu* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %232, align 8
  %234 = load %struct.niu*, %struct.niu** %6, align 8
  %235 = getelementptr inbounds %struct.niu, %struct.niu* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %22, align 8
  %238 = call i32 @skb_frag_page(i32* %237)
  %239 = load i32*, i32** %22, align 8
  %240 = call i32 @skb_frag_off(i32* %239)
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* @DMA_TO_DEVICE, align 4
  %243 = call i32 %233(i32 %236, i32 %238, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %18, align 4
  %244 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %245 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %244, i32 0, i32 6
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %250, align 8
  %251 = load i32, i32* %18, align 4
  %252 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %253 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %252, i32 0, i32 6
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  store i32 %251, i32* %258, align 8
  %259 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %260 = load i32, i32* %15, align 4
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 @niu_set_txd(%struct.tx_ring_info* %259, i32 %260, i32 %261, i32 %262, i32 0, i32 0)
  %264 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %265 = load i32, i32* %15, align 4
  %266 = call i32 @NEXT_TX(%struct.tx_ring_info* %264, i32 %265)
  store i32 %266, i32* %15, align 4
  br label %267

267:                                              ; preds = %219
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %16, align 4
  br label %212

270:                                              ; preds = %212
  %271 = load i32, i32* %15, align 4
  %272 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %273 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %270
  %277 = load i32, i32* @TX_RING_KICK_WRAP, align 4
  %278 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %279 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = xor i32 %280, %277
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %276, %270
  %283 = load i32, i32* %15, align 4
  %284 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %285 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %284, i32 0, i32 0
  store i32 %283, i32* %285, align 8
  %286 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %287 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @TX_RING_KICK(i32 %288)
  %290 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %291 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %15, align 4
  %294 = shl i32 %293, 3
  %295 = or i32 %292, %294
  %296 = call i32 @nw64(i32 %289, i32 %295)
  %297 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %298 = call i64 @niu_tx_avail(%struct.tx_ring_info* %297)
  %299 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %300 = add nsw i64 %299, 1
  %301 = icmp sle i64 %298, %300
  %302 = zext i1 %301 to i32
  %303 = call i64 @unlikely(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %317

305:                                              ; preds = %282
  %306 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %307 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %306)
  %308 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %309 = call i64 @niu_tx_avail(%struct.tx_ring_info* %308)
  %310 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %311 = call i64 @NIU_TX_WAKEUP_THRESH(%struct.tx_ring_info* %310)
  %312 = icmp sgt i64 %309, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %305
  %314 = load %struct.netdev_queue*, %struct.netdev_queue** %9, align 8
  %315 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %314)
  br label %316

316:                                              ; preds = %313, %305
  br label %317

317:                                              ; preds = %316, %282
  br label %318

318:                                              ; preds = %320, %317, %64
  %319 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %319, i32* %3, align 4
  br label %327

320:                                              ; preds = %76
  %321 = load %struct.tx_ring_info*, %struct.tx_ring_info** %10, align 8
  %322 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  %325 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %326 = call i32 @kfree_skb(%struct.sk_buff* %325)
  br label %318

327:                                              ; preds = %318, %45
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @niu_tx_avail(%struct.tx_ring_info*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local %struct.tx_pkt_hdr* @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @niu_compute_tx_flags(%struct.sk_buff*, %struct.ethhdr*, i64, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @niu_set_txd(%struct.tx_ring_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEXT_TX(%struct.tx_ring_info*, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @TX_RING_KICK(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @NIU_TX_WAKEUP_THRESH(%struct.tx_ring_info*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
