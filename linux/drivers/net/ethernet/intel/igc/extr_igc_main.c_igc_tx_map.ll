; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i64, i64, i32, %struct.igc_tx_buffer*, i32 }
%struct.igc_tx_buffer = type { i32, %struct.sk_buff*, %union.igc_adv_tx_desc*, i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }
%union.igc_adv_tx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, i8* }
%struct.TYPE_4__ = type { i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@IGC_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@IGC_TXD_DCMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_ring*, %struct.igc_tx_buffer*, i64)* @igc_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_tx_map(%struct.igc_ring* %0, %struct.igc_tx_buffer* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_ring*, align 8
  %6 = alloca %struct.igc_tx_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.igc_tx_buffer*, align 8
  %10 = alloca %union.igc_adv_tx_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.igc_ring* %0, %struct.igc_ring** %5, align 8
  store %struct.igc_tx_buffer* %1, %struct.igc_tx_buffer** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %18, i32 0, i32 1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %25 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @igc_tx_cmd_type(%struct.sk_buff* %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring* %30, i64 %31)
  store %union.igc_adv_tx_desc* %32, %union.igc_adv_tx_desc** %10, align 8
  %33 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %34 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @igc_tx_olinfo_status(%struct.igc_ring* %33, %union.igc_adv_tx_desc* %34, i32 %35, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @skb_headlen(%struct.sk_buff* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %14, align 4
  %47 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %48 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_map_single(i32 %49, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  store %struct.igc_tx_buffer* %56, %struct.igc_tx_buffer** %9, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32* %61, i32** %12, align 8
  br label %62

62:                                               ; preds = %175, %3
  %63 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %64 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = call i64 @dma_mapping_error(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %233

70:                                               ; preds = %62
  %71 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %72 = load i32, i32* @len, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @dma_unmap_len_set(%struct.igc_tx_buffer* %71, i32 %72, i32 %73)
  %75 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @dma_unmap_addr_set(%struct.igc_tx_buffer* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = call i8* @cpu_to_le64(i32 %79)
  %81 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %82 = bitcast %union.igc_adv_tx_desc* %81 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i8* %80, i8** %83, align 8
  br label %84

84:                                               ; preds = %111, %70
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @IGC_MAX_DATA_PER_TXD, align 4
  %87 = icmp ugt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %84
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @IGC_MAX_DATA_PER_TXD, align 4
  %94 = xor i32 %92, %93
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %97 = bitcast %union.igc_adv_tx_desc* %96 to %struct.TYPE_3__*
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i8* %95, i8** %98, align 8
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %13, align 8
  %101 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %102 = getelementptr inbounds %union.igc_adv_tx_desc, %union.igc_adv_tx_desc* %101, i32 1
  store %union.igc_adv_tx_desc* %102, %union.igc_adv_tx_desc** %10, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %105 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %91
  %109 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %110 = call %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring* %109, i64 0)
  store %union.igc_adv_tx_desc* %110, %union.igc_adv_tx_desc** %10, align 8
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %108, %91
  %112 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %113 = bitcast %union.igc_adv_tx_desc* %112 to %struct.TYPE_3__*
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load i32, i32* @IGC_MAX_DATA_PER_TXD, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* @IGC_MAX_DATA_PER_TXD, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i8* @cpu_to_le64(i32 %121)
  %123 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %124 = bitcast %union.igc_adv_tx_desc* %123 to %struct.TYPE_3__*
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  br label %84

126:                                              ; preds = %84
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i64 @likely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %178

134:                                              ; preds = %126
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %15, align 4
  %137 = xor i32 %135, %136
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %140 = bitcast %union.igc_adv_tx_desc* %139 to %struct.TYPE_3__*
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %13, align 8
  %144 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %145 = getelementptr inbounds %union.igc_adv_tx_desc, %union.igc_adv_tx_desc* %144, i32 1
  store %union.igc_adv_tx_desc* %145, %union.igc_adv_tx_desc** %10, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %148 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %153 = call %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring* %152, i64 0)
  store %union.igc_adv_tx_desc* %153, %union.igc_adv_tx_desc** %10, align 8
  store i64 0, i64* %13, align 8
  br label %154

154:                                              ; preds = %151, %134
  %155 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %156 = bitcast %union.igc_adv_tx_desc* %155 to %struct.TYPE_3__*
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @skb_frag_size(i32* %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sub i32 %161, %160
  store i32 %162, i32* %14, align 4
  %163 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %164 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @DMA_TO_DEVICE, align 4
  %169 = call i32 @skb_frag_dma_map(i32 %165, i32* %166, i32 0, i32 %167, i32 %168)
  store i32 %169, i32* %16, align 4
  %170 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %171 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %170, i32 0, i32 3
  %172 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %171, align 8
  %173 = load i64, i64* %13, align 8
  %174 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %172, i64 %173
  store %struct.igc_tx_buffer* %174, %struct.igc_tx_buffer** %9, align 8
  br label %175

175:                                              ; preds = %154
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %12, align 8
  br label %62

178:                                              ; preds = %133
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @IGC_TXD_DCMD, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* %17, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %17, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %187 = bitcast %union.igc_adv_tx_desc* %186 to %struct.TYPE_3__*
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  %189 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %190 = call i32 @txring_txq(%struct.igc_ring* %189)
  %191 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %192 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @netdev_tx_sent_queue(i32 %190, i32 %193)
  %195 = load i32, i32* @jiffies, align 4
  %196 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %197 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %199 = call i32 @skb_tx_timestamp(%struct.sk_buff* %198)
  %200 = call i32 (...) @wmb()
  %201 = load %union.igc_adv_tx_desc*, %union.igc_adv_tx_desc** %10, align 8
  %202 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %203 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %202, i32 0, i32 2
  store %union.igc_adv_tx_desc* %201, %union.igc_adv_tx_desc** %203, align 8
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %13, align 8
  %206 = load i64, i64* %13, align 8
  %207 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %208 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %178
  store i64 0, i64* %13, align 8
  br label %212

212:                                              ; preds = %211, %178
  %213 = load i64, i64* %13, align 8
  %214 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %215 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %217 = load i32, i32* @DESC_NEEDED, align 4
  %218 = call i32 @igc_maybe_stop_tx(%struct.igc_ring* %216, i32 %217)
  %219 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %220 = call i32 @txring_txq(%struct.igc_ring* %219)
  %221 = call i64 @netif_xmit_stopped(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %212
  %224 = call i32 (...) @netdev_xmit_more()
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %223, %212
  %227 = load i64, i64* %13, align 8
  %228 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %229 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @writel(i64 %227, i32 %230)
  br label %232

232:                                              ; preds = %226, %223
  store i32 0, i32* %4, align 4
  br label %313

233:                                              ; preds = %69
  %234 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %235 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @dev_err(i32 %236, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %238 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %239 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %238, i32 0, i32 3
  %240 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %239, align 8
  %241 = load i64, i64* %13, align 8
  %242 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %240, i64 %241
  store %struct.igc_tx_buffer* %242, %struct.igc_tx_buffer** %9, align 8
  br label %243

243:                                              ; preds = %277, %233
  %244 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %245 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %6, align 8
  %246 = icmp ne %struct.igc_tx_buffer* %244, %245
  br i1 %246, label %247, label %283

247:                                              ; preds = %243
  %248 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %249 = load i32, i32* @len, align 4
  %250 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %247
  %253 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %254 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %257 = load i32, i32* %16, align 4
  %258 = call i32 @dma_unmap_addr(%struct.igc_tx_buffer* %256, i32 %257)
  %259 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %260 = load i32, i32* @len, align 4
  %261 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %259, i32 %260)
  %262 = load i32, i32* @DMA_TO_DEVICE, align 4
  %263 = call i32 @dma_unmap_page(i32 %255, i32 %258, i64 %261, i32 %262)
  br label %264

264:                                              ; preds = %252, %247
  %265 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %266 = load i32, i32* @len, align 4
  %267 = call i32 @dma_unmap_len_set(%struct.igc_tx_buffer* %265, i32 %266, i32 0)
  %268 = load i64, i64* %13, align 8
  %269 = add i64 %268, -1
  store i64 %269, i64* %13, align 8
  %270 = icmp eq i64 %268, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %273 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* %13, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %13, align 8
  br label %277

277:                                              ; preds = %271, %264
  %278 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %279 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %278, i32 0, i32 3
  %280 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %279, align 8
  %281 = load i64, i64* %13, align 8
  %282 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %280, i64 %281
  store %struct.igc_tx_buffer* %282, %struct.igc_tx_buffer** %9, align 8
  br label %243

283:                                              ; preds = %243
  %284 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %285 = load i32, i32* @len, align 4
  %286 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %283
  %289 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %290 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @dma_unmap_addr(%struct.igc_tx_buffer* %292, i32 %293)
  %295 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %296 = load i32, i32* @len, align 4
  %297 = call i64 @dma_unmap_len(%struct.igc_tx_buffer* %295, i32 %296)
  %298 = load i32, i32* @DMA_TO_DEVICE, align 4
  %299 = call i32 @dma_unmap_single(i32 %291, i32 %294, i64 %297, i32 %298)
  br label %300

300:                                              ; preds = %288, %283
  %301 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %302 = load i32, i32* @len, align 4
  %303 = call i32 @dma_unmap_len_set(%struct.igc_tx_buffer* %301, i32 %302, i32 0)
  %304 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %305 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %304, i32 0, i32 1
  %306 = load %struct.sk_buff*, %struct.sk_buff** %305, align 8
  %307 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %306)
  %308 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %9, align 8
  %309 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %308, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %309, align 8
  %310 = load i64, i64* %13, align 8
  %311 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %312 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  store i32 -1, i32* %4, align 4
  br label %313

313:                                              ; preds = %300, %232
  %314 = load i32, i32* %4, align 4
  ret i32 %314
}

declare dso_local i32 @igc_tx_cmd_type(%struct.sk_buff*, i32) #1

declare dso_local %union.igc_adv_tx_desc* @IGC_TX_DESC(%struct.igc_ring*, i64) #1

declare dso_local i32 @igc_tx_olinfo_status(%struct.igc_ring*, %union.igc_adv_tx_desc*, i32, i64) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.igc_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.igc_tx_buffer*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @txring_txq(%struct.igc_ring*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @igc_maybe_stop_tx(%struct.igc_ring*, i32) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dma_unmap_len(%struct.igc_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.igc_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
