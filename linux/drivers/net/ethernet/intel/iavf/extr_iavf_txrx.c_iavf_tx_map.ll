; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i64, i64, %struct.iavf_tx_buffer*, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.iavf_tx_buffer = type { i32, %struct.iavf_tx_desc*, i32 }
%struct.iavf_tx_desc = type { i8*, i8* }
%struct.TYPE_2__ = type { i32* }

@IAVF_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_IL2TAG1 = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_VLAN_MASK = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IAVF_MAX_DATA_PER_TXD_ALIGNED = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@IAVF_MAX_READ_REQ_SIZE = common dso_local global i32 0, align 4
@IAVF_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@IAVF_TXD_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, %struct.sk_buff*, %struct.iavf_tx_buffer*, i32, i32, i32, i32)* @iavf_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_tx_map(%struct.iavf_ring* %0, %struct.sk_buff* %1, %struct.iavf_tx_buffer* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iavf_ring*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.iavf_tx_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.iavf_tx_buffer*, align 8
  %19 = alloca %struct.iavf_tx_desc*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.iavf_tx_buffer* %2, %struct.iavf_tx_buffer** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = call i32 @skb_headlen(%struct.sk_buff* %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %30 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @IAVF_TX_FLAGS_HW_VLAN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %7
  %37 = load i32, i32* @IAVF_TX_DESC_CMD_IL2TAG1, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @IAVF_TX_FLAGS_VLAN_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @IAVF_TX_FLAGS_VLAN_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %36, %7
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %10, align 8
  %48 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %50 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_map_single(i32 %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %59 = load i64, i64* %20, align 8
  %60 = call %struct.iavf_tx_desc* @IAVF_TX_DESC(%struct.iavf_ring* %58, i64 %59)
  store %struct.iavf_tx_desc* %60, %struct.iavf_tx_desc** %19, align 8
  %61 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %10, align 8
  store %struct.iavf_tx_buffer* %61, %struct.iavf_tx_buffer** %18, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32* %66, i32** %17, align 8
  br label %67

67:                                               ; preds = %181, %45
  %68 = load i32, i32* @IAVF_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %68, i32* %23, align 4
  %69 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %70 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %22, align 4
  %73 = call i64 @dma_mapping_error(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %236

76:                                               ; preds = %67
  %77 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %18, align 8
  %78 = load i32, i32* @len, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @dma_unmap_len_set(%struct.iavf_tx_buffer* %77, i32 %78, i32 %79)
  %81 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %18, align 8
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @dma_unmap_addr_set(%struct.iavf_tx_buffer* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %22, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32, i32* @IAVF_MAX_READ_REQ_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %86, %88
  %90 = load i32, i32* %23, align 4
  %91 = add i32 %90, %89
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %22, align 4
  %93 = call i8* @cpu_to_le64(i32 %92)
  %94 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %95 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %123, %76
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @IAVF_MAX_DATA_PER_TXD, align 4
  %99 = icmp ugt i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %96
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %21, align 4
  %108 = call i8* @build_ctob(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %110 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %112 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %111, i32 1
  store %struct.iavf_tx_desc* %112, %struct.iavf_tx_desc** %19, align 8
  %113 = load i64, i64* %20, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %20, align 8
  %115 = load i64, i64* %20, align 8
  %116 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %117 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %103
  %121 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %122 = call %struct.iavf_tx_desc* @IAVF_TX_DESC(%struct.iavf_ring* %121, i64 0)
  store %struct.iavf_tx_desc* %122, %struct.iavf_tx_desc** %19, align 8
  store i64 0, i64* %20, align 8
  br label %123

123:                                              ; preds = %120, %103
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* %22, align 4
  %126 = add i32 %125, %124
  store i32 %126, i32* %22, align 4
  %127 = load i32, i32* %23, align 4
  %128 = load i32, i32* %16, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* @IAVF_MAX_DATA_PER_TXD_ALIGNED, align 4
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %22, align 4
  %132 = call i8* @cpu_to_le64(i32 %131)
  %133 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %134 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %96

135:                                              ; preds = %96
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @likely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %184

143:                                              ; preds = %135
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %21, align 4
  %148 = call i8* @build_ctob(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %150 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %152 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %151, i32 1
  store %struct.iavf_tx_desc* %152, %struct.iavf_tx_desc** %19, align 8
  %153 = load i64, i64* %20, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %20, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %157 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %143
  %161 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %162 = call %struct.iavf_tx_desc* @IAVF_TX_DESC(%struct.iavf_ring* %161, i64 0)
  store %struct.iavf_tx_desc* %162, %struct.iavf_tx_desc** %19, align 8
  store i64 0, i64* %20, align 8
  br label %163

163:                                              ; preds = %160, %143
  %164 = load i32*, i32** %17, align 8
  %165 = call i32 @skb_frag_size(i32* %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %15, align 4
  %168 = sub i32 %167, %166
  store i32 %168, i32* %15, align 4
  %169 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %170 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %17, align 8
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @DMA_TO_DEVICE, align 4
  %175 = call i32 @skb_frag_dma_map(i32 %171, i32* %172, i32 0, i32 %173, i32 %174)
  store i32 %175, i32* %22, align 4
  %176 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %177 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %176, i32 0, i32 2
  %178 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %177, align 8
  %179 = load i64, i64* %20, align 8
  %180 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %178, i64 %179
  store %struct.iavf_tx_buffer* %180, %struct.iavf_tx_buffer** %18, align 8
  br label %181

181:                                              ; preds = %163
  %182 = load i32*, i32** %17, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %17, align 8
  br label %67

184:                                              ; preds = %142
  %185 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %186 = call i32 @txring_txq(%struct.iavf_ring* %185)
  %187 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %10, align 8
  %188 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @netdev_tx_sent_queue(i32 %186, i32 %189)
  %191 = load i64, i64* %20, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %20, align 8
  %193 = load i64, i64* %20, align 8
  %194 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %195 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %184
  store i64 0, i64* %20, align 8
  br label %199

199:                                              ; preds = %198, %184
  %200 = load i64, i64* %20, align 8
  %201 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %202 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %201, i32 0, i32 0
  store i64 %200, i64* %202, align 8
  %203 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %204 = load i32, i32* @DESC_NEEDED, align 4
  %205 = call i32 @iavf_maybe_stop_tx(%struct.iavf_ring* %203, i32 %204)
  %206 = load i32, i32* @IAVF_TXD_CMD, align 4
  %207 = load i32, i32* %13, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %13, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %21, align 4
  %213 = call i8* @build_ctob(i32 %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %215 = getelementptr inbounds %struct.iavf_tx_desc, %struct.iavf_tx_desc* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = call i32 @skb_tx_timestamp(%struct.sk_buff* %216)
  %218 = call i32 (...) @wmb()
  %219 = load %struct.iavf_tx_desc*, %struct.iavf_tx_desc** %19, align 8
  %220 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %10, align 8
  %221 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %220, i32 0, i32 1
  store %struct.iavf_tx_desc* %219, %struct.iavf_tx_desc** %221, align 8
  %222 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %223 = call i32 @txring_txq(%struct.iavf_ring* %222)
  %224 = call i64 @netif_xmit_stopped(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %229, label %226

226:                                              ; preds = %199
  %227 = call i32 (...) @netdev_xmit_more()
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %226, %199
  %230 = load i64, i64* %20, align 8
  %231 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %232 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @writel(i64 %230, i32 %233)
  br label %235

235:                                              ; preds = %229, %226
  br label %268

236:                                              ; preds = %75
  %237 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %238 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @dev_info(i32 %239, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %241

241:                                              ; preds = %261, %236
  %242 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %243 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %242, i32 0, i32 2
  %244 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %243, align 8
  %245 = load i64, i64* %20, align 8
  %246 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %244, i64 %245
  store %struct.iavf_tx_buffer* %246, %struct.iavf_tx_buffer** %18, align 8
  %247 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %248 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %18, align 8
  %249 = call i32 @iavf_unmap_and_free_tx_resource(%struct.iavf_ring* %247, %struct.iavf_tx_buffer* %248)
  %250 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %18, align 8
  %251 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %10, align 8
  %252 = icmp eq %struct.iavf_tx_buffer* %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %241
  br label %264

254:                                              ; preds = %241
  %255 = load i64, i64* %20, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %259 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %20, align 8
  br label %261

261:                                              ; preds = %257, %254
  %262 = load i64, i64* %20, align 8
  %263 = add i64 %262, -1
  store i64 %263, i64* %20, align 8
  br label %241

264:                                              ; preds = %253
  %265 = load i64, i64* %20, align 8
  %266 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %267 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  br label %268

268:                                              ; preds = %264, %235
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.iavf_tx_desc* @IAVF_TX_DESC(%struct.iavf_ring*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.iavf_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.iavf_tx_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @build_ctob(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @txring_txq(%struct.iavf_ring*) #1

declare dso_local i32 @iavf_maybe_stop_tx(%struct.iavf_ring*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @iavf_unmap_and_free_tx_resource(%struct.iavf_ring*, %struct.iavf_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
