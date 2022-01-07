; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i64, i64, i64, %struct.i40e_tx_buffer*, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.i40e_tx_buffer = type { i32, %struct.i40e_tx_desc*, i32 }
%struct.i40e_tx_desc = type { i8*, i8* }
%struct.TYPE_2__ = type { i32* }

@I40E_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_IL2TAG1 = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@I40E_MAX_DATA_PER_TXD_ALIGNED = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@I40E_MAX_READ_REQ_SIZE = common dso_local global i32 0, align 4
@I40E_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_EOP = common dso_local global i32 0, align 4
@WB_STRIDE = common dso_local global i64 0, align 8
@I40E_TX_DESC_CMD_RS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, %struct.sk_buff*, %struct.i40e_tx_buffer*, i32, i32, i32, i32)* @i40e_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_tx_map(%struct.i40e_ring* %0, %struct.sk_buff* %1, %struct.i40e_tx_buffer* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_ring*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.i40e_tx_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.i40e_tx_buffer*, align 8
  %20 = alloca %struct.i40e_tx_desc*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %9, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %10, align 8
  store %struct.i40e_tx_buffer* %2, %struct.i40e_tx_buffer** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i64 1, i64* %24, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @I40E_TX_FLAGS_HW_VLAN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %7
  %39 = load i32, i32* @I40E_TX_DESC_CMD_IL2TAG1, align 4
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @I40E_TX_FLAGS_VLAN_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @I40E_TX_FLAGS_VLAN_SHIFT, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %22, align 4
  br label %47

47:                                               ; preds = %38, %7
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  %50 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %52 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_map_single(i32 %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %23, align 4
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %61 = load i64, i64* %21, align 8
  %62 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %60, i64 %61)
  store %struct.i40e_tx_desc* %62, %struct.i40e_tx_desc** %20, align 8
  %63 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  store %struct.i40e_tx_buffer* %63, %struct.i40e_tx_buffer** %19, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32* %68, i32** %18, align 8
  br label %69

69:                                               ; preds = %187, %47
  %70 = load i32, i32* @I40E_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %70, i32* %25, align 4
  %71 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %72 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i64 @dma_mapping_error(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %258

78:                                               ; preds = %69
  %79 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %19, align 8
  %80 = load i32, i32* @len, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @dma_unmap_len_set(%struct.i40e_tx_buffer* %79, i32 %80, i32 %81)
  %83 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %19, align 8
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer* %83, i32 %84, i32 %85)
  %87 = load i32, i32* %23, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* @I40E_MAX_READ_REQ_SIZE, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  %92 = load i32, i32* %25, align 4
  %93 = add i32 %92, %91
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %23, align 4
  %95 = call i8* @cpu_to_le64(i32 %94)
  %96 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %97 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %127, %78
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @I40E_MAX_DATA_PER_TXD, align 4
  %101 = icmp ugt i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %22, align 4
  %110 = call i8* @build_ctob(i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %112 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %114 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %113, i32 1
  store %struct.i40e_tx_desc* %114, %struct.i40e_tx_desc** %20, align 8
  %115 = load i64, i64* %21, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %21, align 8
  %117 = load i64, i64* %24, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %24, align 8
  %119 = load i64, i64* %21, align 8
  %120 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %121 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %105
  %125 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %126 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %125, i64 0)
  store %struct.i40e_tx_desc* %126, %struct.i40e_tx_desc** %20, align 8
  store i64 0, i64* %21, align 8
  br label %127

127:                                              ; preds = %124, %105
  %128 = load i32, i32* %25, align 4
  %129 = load i32, i32* %23, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* %17, align 4
  %133 = sub i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* @I40E_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %134, i32* %25, align 4
  %135 = load i32, i32* %23, align 4
  %136 = call i8* @cpu_to_le64(i32 %135)
  %137 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %138 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  br label %98

139:                                              ; preds = %98
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %190

147:                                              ; preds = %139
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %22, align 4
  %152 = call i8* @build_ctob(i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %154 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %156 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %155, i32 1
  store %struct.i40e_tx_desc* %156, %struct.i40e_tx_desc** %20, align 8
  %157 = load i64, i64* %21, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %21, align 8
  %159 = load i64, i64* %24, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %24, align 8
  %161 = load i64, i64* %21, align 8
  %162 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %163 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %147
  %167 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %168 = call %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring* %167, i64 0)
  store %struct.i40e_tx_desc* %168, %struct.i40e_tx_desc** %20, align 8
  store i64 0, i64* %21, align 8
  br label %169

169:                                              ; preds = %166, %147
  %170 = load i32*, i32** %18, align 8
  %171 = call i32 @skb_frag_size(i32* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %16, align 4
  %174 = sub i32 %173, %172
  store i32 %174, i32* %16, align 4
  %175 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %176 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32*, i32** %18, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @DMA_TO_DEVICE, align 4
  %181 = call i32 @skb_frag_dma_map(i32 %177, i32* %178, i32 0, i32 %179, i32 %180)
  store i32 %181, i32* %23, align 4
  %182 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %183 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %182, i32 0, i32 3
  %184 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %183, align 8
  %185 = load i64, i64* %21, align 8
  %186 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %184, i64 %185
  store %struct.i40e_tx_buffer* %186, %struct.i40e_tx_buffer** %19, align 8
  br label %187

187:                                              ; preds = %169
  %188 = load i32*, i32** %18, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %18, align 8
  br label %69

190:                                              ; preds = %146
  %191 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %192 = call i32 @txring_txq(%struct.i40e_ring* %191)
  %193 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  %194 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @netdev_tx_sent_queue(i32 %192, i32 %195)
  %197 = load i64, i64* %21, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %21, align 8
  %199 = load i64, i64* %21, align 8
  %200 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %201 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  store i64 0, i64* %21, align 8
  br label %205

205:                                              ; preds = %204, %190
  %206 = load i64, i64* %21, align 8
  %207 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %208 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %210 = load i32, i32* @DESC_NEEDED, align 4
  %211 = call i32 @i40e_maybe_stop_tx(%struct.i40e_ring* %209, i32 %210)
  %212 = load i32, i32* @I40E_TX_DESC_CMD_EOP, align 4
  %213 = load i32, i32* %14, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %14, align 4
  %215 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %216 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %216, align 8
  %219 = load i64, i64* %24, align 8
  %220 = or i64 %219, %218
  store i64 %220, i64* %24, align 8
  %221 = load i64, i64* %24, align 8
  %222 = load i64, i64* @WB_STRIDE, align 8
  %223 = icmp uge i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %205
  %225 = load i32, i32* @I40E_TX_DESC_CMD_RS, align 4
  %226 = load i32, i32* %14, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %14, align 4
  %228 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %229 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %228, i32 0, i32 2
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %224, %205
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %22, align 4
  %235 = call i8* @build_ctob(i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %237 = getelementptr inbounds %struct.i40e_tx_desc, %struct.i40e_tx_desc* %236, i32 0, i32 0
  store i8* %235, i8** %237, align 8
  %238 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %239 = call i32 @skb_tx_timestamp(%struct.sk_buff* %238)
  %240 = call i32 (...) @wmb()
  %241 = load %struct.i40e_tx_desc*, %struct.i40e_tx_desc** %20, align 8
  %242 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  %243 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %242, i32 0, i32 1
  store %struct.i40e_tx_desc* %241, %struct.i40e_tx_desc** %243, align 8
  %244 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %245 = call i32 @txring_txq(%struct.i40e_ring* %244)
  %246 = call i64 @netif_xmit_stopped(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %230
  %249 = call i32 (...) @netdev_xmit_more()
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %248, %230
  %252 = load i64, i64* %21, align 8
  %253 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %254 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @writel(i64 %252, i32 %255)
  br label %257

257:                                              ; preds = %251, %248
  store i32 0, i32* %8, align 4
  br label %290

258:                                              ; preds = %77
  %259 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %260 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @dev_info(i32 %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %263

263:                                              ; preds = %283, %258
  %264 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %265 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %264, i32 0, i32 3
  %266 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %265, align 8
  %267 = load i64, i64* %21, align 8
  %268 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %266, i64 %267
  store %struct.i40e_tx_buffer* %268, %struct.i40e_tx_buffer** %19, align 8
  %269 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %270 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %19, align 8
  %271 = call i32 @i40e_unmap_and_free_tx_resource(%struct.i40e_ring* %269, %struct.i40e_tx_buffer* %270)
  %272 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %19, align 8
  %273 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %11, align 8
  %274 = icmp eq %struct.i40e_tx_buffer* %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %263
  br label %286

276:                                              ; preds = %263
  %277 = load i64, i64* %21, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %281 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %21, align 8
  br label %283

283:                                              ; preds = %279, %276
  %284 = load i64, i64* %21, align 8
  %285 = add i64 %284, -1
  store i64 %285, i64* %21, align 8
  br label %263

286:                                              ; preds = %275
  %287 = load i64, i64* %21, align 8
  %288 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %289 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  store i32 -1, i32* %8, align 4
  br label %290

290:                                              ; preds = %286, %257
  %291 = load i32, i32* %8, align 4
  ret i32 %291
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.i40e_tx_desc* @I40E_TX_DESC(%struct.i40e_ring*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.i40e_tx_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @build_ctob(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @txring_txq(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_maybe_stop_tx(%struct.i40e_ring*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @i40e_unmap_and_free_tx_resource(%struct.i40e_ring*, %struct.i40e_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
