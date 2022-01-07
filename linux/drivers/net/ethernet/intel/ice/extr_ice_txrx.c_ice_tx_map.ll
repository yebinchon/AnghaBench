; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i64, i64, %struct.ice_tx_buf*, i32, i32 }
%struct.ice_tx_buf = type { i32, %struct.ice_tx_desc*, %struct.sk_buff*, i32 }
%struct.ice_tx_desc = type { i8*, i8* }
%struct.sk_buff = type { i32, i32 }
%struct.ice_tx_offload_params = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ICE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_IL2TAG1 = common dso_local global i64 0, align 8
@ICE_TX_FLAGS_VLAN_M = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_VLAN_S = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ICE_MAX_DATA_PER_TXD_ALIGNED = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@ICE_MAX_READ_REQ_SIZE = common dso_local global i32 0, align 4
@ICE_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_EOP = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_RS = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, %struct.ice_tx_buf*, %struct.ice_tx_offload_params*)* @ice_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_tx_map(%struct.ice_ring* %0, %struct.ice_tx_buf* %1, %struct.ice_tx_offload_params* %2) #0 {
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_tx_buf*, align 8
  %6 = alloca %struct.ice_tx_offload_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_tx_desc*, align 8
  %15 = alloca %struct.ice_tx_buf*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store %struct.ice_tx_buf* %1, %struct.ice_tx_buf** %5, align 8
  store %struct.ice_tx_offload_params* %2, %struct.ice_tx_offload_params** %6, align 8
  %19 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %20 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.ice_tx_offload_params*, %struct.ice_tx_offload_params** %6, align 8
  %23 = getelementptr inbounds %struct.ice_tx_offload_params, %struct.ice_tx_offload_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ice_tx_offload_params*, %struct.ice_tx_offload_params** %6, align 8
  %26 = getelementptr inbounds %struct.ice_tx_offload_params, %struct.ice_tx_offload_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ice_tx_offload_params*, %struct.ice_tx_offload_params** %6, align 8
  %29 = getelementptr inbounds %struct.ice_tx_offload_params, %struct.ice_tx_offload_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %32 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %31, i32 0, i32 2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  store %struct.sk_buff* %33, %struct.sk_buff** %16, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %38 = call i32 @skb_headlen(%struct.sk_buff* %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring* %39, i64 %40)
  store %struct.ice_tx_desc* %41, %struct.ice_tx_desc** %14, align 8
  %42 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %43 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ICE_TX_FLAGS_HW_VLAN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %3
  %49 = load i64, i64* @ICE_TX_DESC_CMD_IL2TAG1, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %54 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ICE_TX_FLAGS_VLAN_M, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @ICE_TX_FLAGS_VLAN_S, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %48, %3
  %61 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %62 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_map_single(i32 %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  store %struct.ice_tx_buf* %70, %struct.ice_tx_buf** %15, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32* %75, i32** %11, align 8
  br label %76

76:                                               ; preds = %190, %60
  %77 = load i32, i32* @ICE_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %77, i32* %18, align 4
  %78 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %79 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i64 @dma_mapping_error(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %249

85:                                               ; preds = %76
  %86 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %15, align 8
  %87 = load i32, i32* @len, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @dma_unmap_len_set(%struct.ice_tx_buf* %86, i32 %87, i32 %88)
  %90 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %15, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @dma_unmap_addr_set(%struct.ice_tx_buf* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* @ICE_MAX_READ_REQ_SIZE, align 4
  %97 = sub nsw i32 %96, 1
  %98 = and i32 %95, %97
  %99 = load i32, i32* %18, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i8* @cpu_to_le64(i32 %101)
  %103 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %104 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %132, %85
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @ICE_MAX_DATA_PER_TXD, align 4
  %108 = icmp ugt i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i8* @build_ctob(i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %119 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %121 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %120, i32 1
  store %struct.ice_tx_desc* %121, %struct.ice_tx_desc** %14, align 8
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %126 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %112
  %130 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %131 = call %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring* %130, i64 0)
  store %struct.ice_tx_desc* %131, %struct.ice_tx_desc** %14, align 8
  store i64 0, i64* %10, align 8
  br label %132

132:                                              ; preds = %129, %112
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub i32 %137, %136
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* @ICE_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = call i8* @cpu_to_le64(i32 %140)
  %142 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %143 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  br label %105

144:                                              ; preds = %105
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i64 @likely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %193

152:                                              ; preds = %144
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i8* @build_ctob(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %159 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %161 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %160, i32 1
  store %struct.ice_tx_desc* %161, %struct.ice_tx_desc** %14, align 8
  %162 = load i64, i64* %10, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %166 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %152
  %170 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %171 = call %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring* %170, i64 0)
  store %struct.ice_tx_desc* %171, %struct.ice_tx_desc** %14, align 8
  store i64 0, i64* %10, align 8
  br label %172

172:                                              ; preds = %169, %152
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @skb_frag_size(i32* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %12, align 4
  %177 = sub i32 %176, %175
  store i32 %177, i32* %12, align 4
  %178 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %179 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @DMA_TO_DEVICE, align 4
  %184 = call i32 @skb_frag_dma_map(i32 %180, i32* %181, i32 0, i32 %182, i32 %183)
  store i32 %184, i32* %17, align 4
  %185 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %186 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %185, i32 0, i32 2
  %187 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %187, i64 %188
  store %struct.ice_tx_buf* %189, %struct.ice_tx_buf** %15, align 8
  br label %190

190:                                              ; preds = %172
  %191 = load i32*, i32** %11, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %11, align 8
  br label %76

193:                                              ; preds = %151
  %194 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %195 = call i32 @txring_txq(%struct.ice_ring* %194)
  %196 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %197 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @netdev_tx_sent_queue(i32 %195, i32 %198)
  %200 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %201 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %200, i32 0, i32 2
  %202 = load %struct.sk_buff*, %struct.sk_buff** %201, align 8
  %203 = call i32 @skb_tx_timestamp(%struct.sk_buff* %202)
  %204 = load i64, i64* %10, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %10, align 8
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %208 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %193
  store i64 0, i64* %10, align 8
  br label %212

212:                                              ; preds = %211, %193
  %213 = load i32, i32* @ICE_TX_DESC_CMD_EOP, align 4
  %214 = load i32, i32* @ICE_TX_DESC_CMD_RS, align 4
  %215 = or i32 %213, %214
  %216 = load i32, i32* %9, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i8* @build_ctob(i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %224 = getelementptr inbounds %struct.ice_tx_desc, %struct.ice_tx_desc* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = call i32 (...) @wmb()
  %226 = load %struct.ice_tx_desc*, %struct.ice_tx_desc** %14, align 8
  %227 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %228 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %227, i32 0, i32 1
  store %struct.ice_tx_desc* %226, %struct.ice_tx_desc** %228, align 8
  %229 = load i64, i64* %10, align 8
  %230 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %231 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %233 = load i32, i32* @DESC_NEEDED, align 4
  %234 = call i32 @ice_maybe_stop_tx(%struct.ice_ring* %232, i32 %233)
  %235 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %236 = call i32 @txring_txq(%struct.ice_ring* %235)
  %237 = call i64 @netif_xmit_stopped(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %212
  %240 = call i32 (...) @netdev_xmit_more()
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %239, %212
  %243 = load i64, i64* %10, align 8
  %244 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %245 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @writel(i64 %243, i32 %246)
  br label %248

248:                                              ; preds = %242, %239
  br label %277

249:                                              ; preds = %84
  br label %250

250:                                              ; preds = %270, %249
  %251 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %252 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %251, i32 0, i32 2
  %253 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %252, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %253, i64 %254
  store %struct.ice_tx_buf* %255, %struct.ice_tx_buf** %15, align 8
  %256 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %257 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %15, align 8
  %258 = call i32 @ice_unmap_and_free_tx_buf(%struct.ice_ring* %256, %struct.ice_tx_buf* %257)
  %259 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %15, align 8
  %260 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %261 = icmp eq %struct.ice_tx_buf* %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %273

263:                                              ; preds = %250
  %264 = load i64, i64* %10, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %268 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %10, align 8
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i64, i64* %10, align 8
  %272 = add i64 %271, -1
  store i64 %272, i64* %10, align 8
  br label %250

273:                                              ; preds = %262
  %274 = load i64, i64* %10, align 8
  %275 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %276 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  br label %277

277:                                              ; preds = %273, %248
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.ice_tx_desc* @ICE_TX_DESC(%struct.ice_ring*, i64) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.ice_tx_buf*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.ice_tx_buf*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @build_ctob(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @txring_txq(%struct.ice_ring*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ice_maybe_stop_tx(%struct.ice_ring*, i32) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @ice_unmap_and_free_tx_buf(%struct.ice_ring*, %struct.ice_tx_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
