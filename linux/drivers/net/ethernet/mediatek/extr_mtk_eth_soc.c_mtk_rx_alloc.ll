; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_rx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_rx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { %struct.TYPE_3__*, i32, i64, %struct.mtk_rx_ring*, %struct.mtk_rx_ring }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_rx_ring = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_4__*, i64*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MTK_RX_FLAGS_QDMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTK_RX_FLAGS_HWLRO = common dso_local global i32 0, align 4
@MTK_MAX_LRO_RX_LENGTH = common dso_local global i32 0, align 4
@MTK_HW_LRO_DMA_SIZE = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@MTK_DMA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MTK_SOC_MT7628 = common dso_local global i32 0, align 4
@RX_DMA_LSO = common dso_local global i32 0, align 4
@MTK_PDMA_RST_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i32, i32)* @mtk_rx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rx_alloc(%struct.mtk_eth* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_eth*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_rx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.mtk_eth* %0, %struct.mtk_eth** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MTK_RX_FLAGS_QDMA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %250

23:                                               ; preds = %17
  %24 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %24, i32 0, i32 4
  store %struct.mtk_rx_ring* %25, %struct.mtk_rx_ring** %8, align 8
  store i32 4096, i32* %12, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %27, i32 0, i32 3
  %29 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %29, i64 %31
  store %struct.mtk_rx_ring* %32, %struct.mtk_rx_ring** %8, align 8
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MTK_RX_FLAGS_HWLRO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @MTK_MAX_LRO_RX_LENGTH, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @MTK_HW_LRO_DMA_SIZE, align 4
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @MTK_DMA_SIZE, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mtk_max_frag_size(i32 %44)
  %46 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %49 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mtk_max_buf_size(i32 %50)
  %52 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %53 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i64* @kcalloc(i32 %54, i32 8, i32 %55)
  %57 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %58 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %57, i32 0, i32 7
  store i64* %56, i64** %58, align 8
  %59 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %60 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %59, i32 0, i32 7
  %61 = load i64*, i64** %60, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %43
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %250

66:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @netdev_alloc_frag(i32 %74)
  %76 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %77 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %76, i32 0, i32 7
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %75, i64* %81, align 8
  %82 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %83 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %82, i32 0, i32 7
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %71
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %250

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %67

97:                                               ; preds = %67
  %98 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %99 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %106 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %105, i32 0, i32 0
  %107 = load i32, i32* @GFP_ATOMIC, align 4
  %108 = call %struct.TYPE_4__* @dma_alloc_coherent(i32 %100, i32 %104, i32* %106, i32 %107)
  %109 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %110 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %109, i32 0, i32 6
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %112 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %111, i32 0, i32 6
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %97
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %250

118:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %195, %118
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %198

123:                                              ; preds = %119
  %124 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %125 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %128 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %127, i32 0, i32 7
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @NET_SKB_PAD, align 8
  %135 = add nsw i64 %133, %134
  %136 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %137 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %141 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %144 = call i64 @dma_map_single(i32 %126, i64 %139, i32 %142, i32 %143)
  store i64 %144, i64* %13, align 8
  %145 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %146 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @dma_mapping_error(i32 %147, i64 %148)
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %123
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %250

155:                                              ; preds = %123
  %156 = load i64, i64* %13, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %159 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %158, i32 0, i32 6
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 4
  %165 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %166 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MTK_SOC_MT7628, align 4
  %171 = call i64 @MTK_HAS_CAPS(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %155
  %174 = load i32, i32* @RX_DMA_LSO, align 4
  %175 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %176 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %175, i32 0, i32 6
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i32 %174, i32* %181, align 4
  br label %194

182:                                              ; preds = %155
  %183 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %184 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @RX_DMA_PLEN0(i32 %185)
  %187 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %188 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %187, i32 0, i32 6
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %182, %173
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %119

198:                                              ; preds = %119
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %201 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %203 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %202, i32 0, i32 2
  store i32 0, i32* %203, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sub nsw i32 %204, 1
  %206 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %207 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %6, align 4
  %209 = call i64 @MTK_PRX_CRX_IDX_CFG(i32 %208)
  %210 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %211 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %210, i32 0, i32 4
  store i64 %209, i64* %211, align 8
  %212 = call i32 (...) @wmb()
  %213 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %214 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %215 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i64 @MTK_PRX_BASE_PTR_CFG(i32 %217)
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %218, %220
  %222 = call i32 @mtk_w32(%struct.mtk_eth* %213, i32 %216, i64 %221)
  %223 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i64 @MTK_PRX_MAX_CNT_CFG(i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %226, %228
  %230 = call i32 @mtk_w32(%struct.mtk_eth* %223, i32 %224, i64 %229)
  %231 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %232 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %233 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.mtk_rx_ring*, %struct.mtk_rx_ring** %8, align 8
  %236 = getelementptr inbounds %struct.mtk_rx_ring, %struct.mtk_rx_ring* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = call i32 @mtk_w32(%struct.mtk_eth* %231, i32 %234, i64 %240)
  %242 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @MTK_PST_DRX_IDX_CFG(i32 %243)
  %245 = load i64, i64* @MTK_PDMA_RST_IDX, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %245, %247
  %249 = call i32 @mtk_w32(%struct.mtk_eth* %242, i32 %244, i64 %248)
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %198, %152, %115, %90, %63, %20
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @mtk_max_frag_size(i32) #1

declare dso_local i32 @mtk_max_buf_size(i32) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @netdev_alloc_frag(i32) #1

declare dso_local %struct.TYPE_4__* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i64) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @RX_DMA_PLEN0(i32) #1

declare dso_local i64 @MTK_PRX_CRX_IDX_CFG(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i64) #1

declare dso_local i64 @MTK_PRX_BASE_PTR_CFG(i32) #1

declare dso_local i64 @MTK_PRX_MAX_CNT_CFG(i32) #1

declare dso_local i32 @MTK_PST_DRX_IDX_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
