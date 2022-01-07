; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_hwbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_rx_hwbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.mvneta_port = type { i32, %struct.TYPE_7__*, %struct.net_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.mvneta_bm_pool* }
%struct.TYPE_6__ = type { i32 }
%struct.mvneta_bm_pool = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mvneta_rx_queue = type { i32 }
%struct.mvneta_rx_desc = type { i64, i32, i32, i64 }
%struct.sk_buff = type { i8* }
%struct.mvneta_pcpu_stats = type { i32, i32, i32 }

@ETH_FCS_LEN = common dso_local global i32 0, align 4
@MVNETA_MH_SIZE = common dso_local global i32 0, align 4
@MVNETA_RXD_ERR_SUMMARY = common dso_local global i64 0, align 8
@rx_copybreak = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Linux processing - Can't refill\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.mvneta_port*, i32, %struct.mvneta_rx_queue*)* @mvneta_rx_hwbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_rx_hwbm(%struct.napi_struct* %0, %struct.mvneta_port* %1, i32 %2, %struct.mvneta_rx_queue* %3) #0 {
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.mvneta_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvneta_rx_queue*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mvneta_rx_desc*, align 8
  %14 = alloca %struct.mvneta_bm_pool*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.mvneta_pcpu_stats*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store %struct.mvneta_port* %1, %struct.mvneta_port** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mvneta_rx_queue* %3, %struct.mvneta_rx_queue** %8, align 8
  %24 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %25 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %24, i32 0, i32 2
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %27 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %28 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %8, align 8
  %29 = call i32 @mvneta_rxq_busy_desc_num_get(%struct.mvneta_port* %27, %struct.mvneta_rx_queue* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %210, %114, %90, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %237

40:                                               ; preds = %36
  %41 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %8, align 8
  %42 = call %struct.mvneta_rx_desc* @mvneta_rxq_next_desc_get(%struct.mvneta_rx_queue* %41)
  store %struct.mvneta_rx_desc* %42, %struct.mvneta_rx_desc** %13, align 8
  store %struct.mvneta_bm_pool* null, %struct.mvneta_bm_pool** %14, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %46 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %18, align 8
  %48 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %49 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ETH_FCS_LEN, align 4
  %52 = load i32, i32* @MVNETA_MH_SIZE, align 4
  %53 = add nsw i32 %51, %52
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %20, align 4
  %55 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %56 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i64*
  %59 = bitcast i64* %58 to i8*
  store i8* %59, i8** %16, align 8
  %60 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %61 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %64 = call i64 @MVNETA_RX_GET_BM_POOL_ID(%struct.mvneta_rx_desc* %63)
  store i64 %64, i64* %22, align 8
  %65 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %66 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %68, align 8
  %70 = load i64, i64* %22, align 8
  %71 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %69, i64 %70
  store %struct.mvneta_bm_pool* %71, %struct.mvneta_bm_pool** %14, align 8
  %72 = load i64, i64* %18, align 8
  %73 = call i32 @mvneta_rxq_desc_is_first_last(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %40
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @MVNETA_RXD_ERR_SUMMARY, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75, %40
  br label %81

81:                                               ; preds = %173, %113, %80
  %82 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %83 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %14, align 8
  %86 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %87 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mvneta_bm_pool_put_bp(%struct.TYPE_7__* %84, %struct.mvneta_bm_pool* %85, i32 %88)
  br label %90

90:                                               ; preds = %209, %81
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %97 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %98 = call i32 @mvneta_rx_error(%struct.mvneta_port* %96, %struct.mvneta_rx_desc* %97)
  br label %36

99:                                               ; preds = %75
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* @rx_copybreak, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %166

103:                                              ; preds = %99
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = load i32, i32* %20, align 4
  %106 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %104, i32 %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %15, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %108 = icmp ne %struct.sk_buff* %107, null
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %81

114:                                              ; preds = %103
  %115 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %116 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %122 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MVNETA_MH_SIZE, align 4
  %125 = load i32, i32* @NET_SKB_PAD, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %129 = call i32 @dma_sync_single_range_for_cpu(i32* %120, i32 %123, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = load i32, i32* @MVNETA_MH_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* @NET_SKB_PAD, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @skb_put_data(%struct.sk_buff* %130, i8* %137, i32 %138)
  %140 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %141 = load %struct.net_device*, %struct.net_device** %9, align 8
  %142 = call i8* @eth_type_trans(%struct.sk_buff* %140, %struct.net_device* %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  %145 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %148 = call i32 @mvneta_rx_csum(%struct.mvneta_port* %145, i64 %146, %struct.sk_buff* %147)
  %149 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %151 = call i32 @napi_gro_receive(%struct.napi_struct* %149, %struct.sk_buff* %150)
  %152 = load i64, i64* %11, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %11, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %12, align 8
  %157 = add nsw i64 %156, %155
  store i64 %157, i64* %12, align 8
  %158 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %159 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %14, align 8
  %162 = load %struct.mvneta_rx_desc*, %struct.mvneta_rx_desc** %13, align 8
  %163 = getelementptr inbounds %struct.mvneta_rx_desc, %struct.mvneta_rx_desc* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @mvneta_bm_pool_put_bp(%struct.TYPE_7__* %160, %struct.mvneta_bm_pool* %161, i32 %164)
  br label %36

166:                                              ; preds = %99
  %167 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %14, align 8
  %168 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %167, i32 0, i32 1
  %169 = load i32, i32* @GFP_ATOMIC, align 4
  %170 = call i32 @hwbm_pool_refill(%struct.TYPE_8__* %168, i32 %169)
  store i32 %170, i32* %21, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.net_device*, %struct.net_device** %9, align 8
  %175 = call i32 @netdev_err(%struct.net_device* %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %8, align 8
  %177 = getelementptr inbounds %struct.mvneta_rx_queue, %struct.mvneta_rx_queue* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %81

180:                                              ; preds = %166
  %181 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %14, align 8
  %182 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %19, align 8
  %185 = load i8*, i8** %16, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* @PAGE_SIZE, align 8
  %188 = icmp sgt i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  br label %192

190:                                              ; preds = %180
  %191 = load i64, i64* %19, align 8
  br label %192

192:                                              ; preds = %190, %189
  %193 = phi i64 [ 0, %189 ], [ %191, %190 ]
  %194 = call %struct.sk_buff* @build_skb(i8* %185, i64 %193)
  store %struct.sk_buff* %194, %struct.sk_buff** %15, align 8
  %195 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %196 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %17, align 4
  %202 = load %struct.mvneta_bm_pool*, %struct.mvneta_bm_pool** %14, align 8
  %203 = getelementptr inbounds %struct.mvneta_bm_pool, %struct.mvneta_bm_pool* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %206 = call i32 @dma_unmap_single(i32* %200, i32 %201, i32 %204, i32 %205)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %208 = icmp ne %struct.sk_buff* %207, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %192
  br label %90

210:                                              ; preds = %192
  %211 = load i64, i64* %11, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %11, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %12, align 8
  %216 = add nsw i64 %215, %214
  store i64 %216, i64* %12, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %218 = load i32, i32* @MVNETA_MH_SIZE, align 4
  %219 = load i32, i32* @NET_SKB_PAD, align 4
  %220 = add nsw i32 %218, %219
  %221 = call i32 @skb_reserve(%struct.sk_buff* %217, i32 %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %223 = load i32, i32* %20, align 4
  %224 = call i32 @skb_put(%struct.sk_buff* %222, i32 %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %226 = load %struct.net_device*, %struct.net_device** %9, align 8
  %227 = call i8* @eth_type_trans(%struct.sk_buff* %225, %struct.net_device* %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  %230 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %231 = load i64, i64* %18, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %233 = call i32 @mvneta_rx_csum(%struct.mvneta_port* %230, i64 %231, %struct.sk_buff* %232)
  %234 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %236 = call i32 @napi_gro_receive(%struct.napi_struct* %234, %struct.sk_buff* %235)
  br label %36

237:                                              ; preds = %36
  %238 = load i64, i64* %11, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %237
  %241 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %242 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call %struct.mvneta_pcpu_stats* @this_cpu_ptr(i32 %243)
  store %struct.mvneta_pcpu_stats* %244, %struct.mvneta_pcpu_stats** %23, align 8
  %245 = load %struct.mvneta_pcpu_stats*, %struct.mvneta_pcpu_stats** %23, align 8
  %246 = getelementptr inbounds %struct.mvneta_pcpu_stats, %struct.mvneta_pcpu_stats* %245, i32 0, i32 0
  %247 = call i32 @u64_stats_update_begin(i32* %246)
  %248 = load i64, i64* %11, align 8
  %249 = load %struct.mvneta_pcpu_stats*, %struct.mvneta_pcpu_stats** %23, align 8
  %250 = getelementptr inbounds %struct.mvneta_pcpu_stats, %struct.mvneta_pcpu_stats* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %248
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %250, align 4
  %255 = load i64, i64* %12, align 8
  %256 = load %struct.mvneta_pcpu_stats*, %struct.mvneta_pcpu_stats** %23, align 8
  %257 = getelementptr inbounds %struct.mvneta_pcpu_stats, %struct.mvneta_pcpu_stats* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %255
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  %262 = load %struct.mvneta_pcpu_stats*, %struct.mvneta_pcpu_stats** %23, align 8
  %263 = getelementptr inbounds %struct.mvneta_pcpu_stats, %struct.mvneta_pcpu_stats* %262, i32 0, i32 0
  %264 = call i32 @u64_stats_update_end(i32* %263)
  br label %265

265:                                              ; preds = %240, %237
  %266 = load %struct.mvneta_port*, %struct.mvneta_port** %6, align 8
  %267 = load %struct.mvneta_rx_queue*, %struct.mvneta_rx_queue** %8, align 8
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @mvneta_rxq_desc_num_update(%struct.mvneta_port* %266, %struct.mvneta_rx_queue* %267, i32 %268, i32 %269)
  %271 = load i32, i32* %10, align 4
  ret i32 %271
}

declare dso_local i32 @mvneta_rxq_busy_desc_num_get(%struct.mvneta_port*, %struct.mvneta_rx_queue*) #1

declare dso_local %struct.mvneta_rx_desc* @mvneta_rxq_next_desc_get(%struct.mvneta_rx_queue*) #1

declare dso_local i64 @MVNETA_RX_GET_BM_POOL_ID(%struct.mvneta_rx_desc*) #1

declare dso_local i32 @mvneta_rxq_desc_is_first_last(i64) #1

declare dso_local i32 @mvneta_bm_pool_put_bp(%struct.TYPE_7__*, %struct.mvneta_bm_pool*, i32) #1

declare dso_local i32 @mvneta_rx_error(%struct.mvneta_port*, %struct.mvneta_rx_desc*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @mvneta_rx_csum(%struct.mvneta_port*, i64, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @hwbm_pool_refill(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.mvneta_pcpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @mvneta_rxq_desc_num_update(%struct.mvneta_port*, %struct.mvneta_rx_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
