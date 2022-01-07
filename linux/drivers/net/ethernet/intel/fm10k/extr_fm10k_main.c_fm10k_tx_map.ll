; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i64, i64, %struct.fm10k_tx_buffer*, i32, i32 }
%struct.fm10k_tx_buffer = type { %struct.fm10k_tx_desc*, %struct.sk_buff*, i32, i32 }
%struct.fm10k_tx_desc = type { i64 }
%struct.sk_buff = type { i8*, i32 }
%struct.TYPE_2__ = type { i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@FM10K_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@FM10K_TXD_FLAG_LAST = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_ring*, %struct.fm10k_tx_buffer*)* @fm10k_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_tx_map(%struct.fm10k_ring* %0, %struct.fm10k_tx_buffer* %1) #0 {
  %3 = alloca %struct.fm10k_ring*, align 8
  %4 = alloca %struct.fm10k_tx_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fm10k_tx_buffer*, align 8
  %7 = alloca %struct.fm10k_tx_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %3, align 8
  store %struct.fm10k_tx_buffer* %1, %struct.fm10k_tx_buffer** %4, align 8
  %16 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %23 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %14, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @fm10k_tx_desc_flags(%struct.sk_buff* %25, i32 %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring* %28, i64 %29)
  store %struct.fm10k_tx_desc* %30, %struct.fm10k_tx_desc** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %35)
  %37 = call i64 @cpu_to_le16(i32 %36)
  %38 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %39 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %42 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_headlen(%struct.sk_buff* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %9, align 8
  %49 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %50 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i32 @dma_map_single(i32 %51, i8* %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %11, align 4
  %59 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  store %struct.fm10k_tx_buffer* %59, %struct.fm10k_tx_buffer** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32* %64, i32** %8, align 8
  br label %65

65:                                               ; preds = %152, %43
  %66 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %67 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @dma_mapping_error(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %205

73:                                               ; preds = %65
  %74 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %6, align 8
  %75 = load i32, i32* @len, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @dma_unmap_len_set(%struct.fm10k_tx_buffer* %74, i32 %75, i32 %76)
  %78 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dma_unmap_addr_set(%struct.fm10k_tx_buffer* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %104, %73
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @FM10K_MAX_DATA_PER_TXD, align 4
  %85 = icmp ugt i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %91 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %92 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %91, i32 1
  store %struct.fm10k_tx_desc* %92, %struct.fm10k_tx_desc** %7, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %14, align 8
  %95 = trunc i64 %93 to i32
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @FM10K_MAX_DATA_PER_TXD, align 4
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @fm10k_tx_desc_push(%struct.fm10k_ring* %90, %struct.fm10k_tx_desc* %91, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %103 = call %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring* %102, i64 0)
  store %struct.fm10k_tx_desc* %103, %struct.fm10k_tx_desc** %7, align 8
  store i64 0, i64* %14, align 8
  br label %104

104:                                              ; preds = %101, %89
  %105 = load i32, i32* @FM10K_MAX_DATA_PER_TXD, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @FM10K_MAX_DATA_PER_TXD, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %82

111:                                              ; preds = %82
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i64 @likely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %155

119:                                              ; preds = %111
  %120 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %121 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %122 = getelementptr inbounds %struct.fm10k_tx_desc, %struct.fm10k_tx_desc* %121, i32 1
  store %struct.fm10k_tx_desc* %122, %struct.fm10k_tx_desc** %7, align 8
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %14, align 8
  %125 = trunc i64 %123 to i32
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i64 @fm10k_tx_desc_push(%struct.fm10k_ring* %120, %struct.fm10k_tx_desc* %121, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %133 = call %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring* %132, i64 0)
  store %struct.fm10k_tx_desc* %133, %struct.fm10k_tx_desc** %7, align 8
  store i64 0, i64* %14, align 8
  br label %134

134:                                              ; preds = %131, %119
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @skb_frag_size(i32* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %141 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @DMA_TO_DEVICE, align 4
  %146 = call i32 @skb_frag_dma_map(i32 %142, i32* %143, i32 0, i32 %144, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %148 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %147, i32 0, i32 2
  %149 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %149, i64 %150
  store %struct.fm10k_tx_buffer* %151, %struct.fm10k_tx_buffer** %6, align 8
  br label %152

152:                                              ; preds = %134
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %8, align 8
  br label %65

155:                                              ; preds = %118
  %156 = load i32, i32* @FM10K_TXD_FLAG_LAST, align 4
  %157 = load i32, i32* %15, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %15, align 4
  %159 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %160 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %161 = load i64, i64* %14, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %14, align 8
  %163 = trunc i64 %161 to i32
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i64 @fm10k_tx_desc_push(%struct.fm10k_ring* %159, %struct.fm10k_tx_desc* %160, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  store i64 0, i64* %14, align 8
  br label %170

170:                                              ; preds = %169, %155
  %171 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %172 = call i32 @txring_txq(%struct.fm10k_ring* %171)
  %173 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %174 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @netdev_tx_sent_queue(i32 %172, i32 %175)
  %177 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %178 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %177, i32 0, i32 1
  %179 = load %struct.sk_buff*, %struct.sk_buff** %178, align 8
  %180 = call i32 @skb_tx_timestamp(%struct.sk_buff* %179)
  %181 = call i32 (...) @wmb()
  %182 = load %struct.fm10k_tx_desc*, %struct.fm10k_tx_desc** %7, align 8
  %183 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %184 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %183, i32 0, i32 0
  store %struct.fm10k_tx_desc* %182, %struct.fm10k_tx_desc** %184, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %187 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %189 = load i32, i32* @DESC_NEEDED, align 4
  %190 = call i32 @fm10k_maybe_stop_tx(%struct.fm10k_ring* %188, i32 %189)
  %191 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %192 = call i32 @txring_txq(%struct.fm10k_ring* %191)
  %193 = call i64 @netif_xmit_stopped(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %170
  %196 = call i32 (...) @netdev_xmit_more()
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %195, %170
  %199 = load i64, i64* %14, align 8
  %200 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %201 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @writel(i64 %199, i32 %202)
  br label %204

204:                                              ; preds = %198, %195
  br label %237

205:                                              ; preds = %72
  %206 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %207 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @dev_err(i32 %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %210

210:                                              ; preds = %230, %205
  %211 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %212 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %211, i32 0, i32 2
  %213 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %212, align 8
  %214 = load i64, i64* %14, align 8
  %215 = getelementptr inbounds %struct.fm10k_tx_buffer, %struct.fm10k_tx_buffer* %213, i64 %214
  store %struct.fm10k_tx_buffer* %215, %struct.fm10k_tx_buffer** %6, align 8
  %216 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %217 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %6, align 8
  %218 = call i32 @fm10k_unmap_and_free_tx_resource(%struct.fm10k_ring* %216, %struct.fm10k_tx_buffer* %217)
  %219 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %6, align 8
  %220 = load %struct.fm10k_tx_buffer*, %struct.fm10k_tx_buffer** %4, align 8
  %221 = icmp eq %struct.fm10k_tx_buffer* %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %210
  br label %233

223:                                              ; preds = %210
  %224 = load i64, i64* %14, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %228 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %14, align 8
  br label %230

230:                                              ; preds = %226, %223
  %231 = load i64, i64* %14, align 8
  %232 = add i64 %231, -1
  store i64 %232, i64* %14, align 8
  br label %210

233:                                              ; preds = %222
  %234 = load i64, i64* %14, align 8
  %235 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %236 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %235, i32 0, i32 0
  store i64 %234, i64* %236, align 8
  br label %237

237:                                              ; preds = %233, %204
  ret void
}

declare dso_local i32 @fm10k_tx_desc_flags(%struct.sk_buff*, i32) #1

declare dso_local %struct.fm10k_tx_desc* @FM10K_TX_DESC(%struct.fm10k_ring*, i64) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.fm10k_tx_buffer*, i32, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.fm10k_tx_buffer*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fm10k_tx_desc_push(%struct.fm10k_ring*, %struct.fm10k_tx_desc*, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_sent_queue(i32, i32) #1

declare dso_local i32 @txring_txq(%struct.fm10k_ring*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @fm10k_maybe_stop_tx(%struct.fm10k_ring*, i32) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @fm10k_unmap_and_free_tx_resource(%struct.fm10k_ring*, %struct.fm10k_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
