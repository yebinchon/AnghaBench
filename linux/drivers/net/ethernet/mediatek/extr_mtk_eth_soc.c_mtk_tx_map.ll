; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.mtk_tx_ring = type { i32, i32, %struct.mtk_tx_dma*, %struct.mtk_tx_dma* }
%struct.mtk_tx_dma = type { i32, i32, i32, i32 }
%struct.mtk_mac = type { i32, %struct.mtk_eth* }
%struct.mtk_eth = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_tx_buf = type { %struct.sk_buff*, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@TX_DMA_FPORT_SHIFT = common dso_local global i32 0, align 4
@TX_DMA_TSO = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_DMA_CHKSUM = common dso_local global i32 0, align 4
@TX_DMA_INS_VLAN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_SINGLE0 = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_FPORT0 = common dso_local global i32 0, align 4
@MTK_TX_FLAGS_FPORT1 = common dso_local global i32 0, align 4
@MTK_QDMA = common dso_local global i32 0, align 4
@MTK_TX_DMA_BUF_LEN = common dso_local global i32 0, align 4
@TX_DMA_SWC = common dso_local global i32 0, align 4
@TX_DMA_LS0 = common dso_local global i32 0, align 4
@MTK_DMA_DUMMY_DESC = common dso_local global i64 0, align 8
@MTK_TX_FLAGS_PAGE0 = common dso_local global i32 0, align 4
@TX_DMA_LS1 = common dso_local global i32 0, align 4
@MTK_QTX_CTX_PTR = common dso_local global i32 0, align 4
@MT7628_TX_CTX_IDX0 = common dso_local global i32 0, align 4
@TX_DMA_OWNER_CPU = common dso_local global i32 0, align 4
@TX_DMA_DESP2_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, %struct.mtk_tx_ring*, i32)* @mtk_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_tx_map(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, %struct.mtk_tx_ring* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtk_tx_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtk_mac*, align 8
  %13 = alloca %struct.mtk_eth*, align 8
  %14 = alloca %struct.mtk_tx_dma*, align 8
  %15 = alloca %struct.mtk_tx_dma*, align 8
  %16 = alloca %struct.mtk_tx_dma*, align 8
  %17 = alloca %struct.mtk_tx_dma*, align 8
  %18 = alloca %struct.mtk_tx_buf*, align 8
  %19 = alloca %struct.mtk_tx_buf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.mtk_tx_ring* %3, %struct.mtk_tx_ring** %10, align 8
  store i32 %4, i32* %11, align 4
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %34)
  store %struct.mtk_mac* %35, %struct.mtk_mac** %12, align 8
  %36 = load %struct.mtk_mac*, %struct.mtk_mac** %12, align 8
  %37 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %36, i32 0, i32 1
  %38 = load %struct.mtk_eth*, %struct.mtk_eth** %37, align 8
  store %struct.mtk_eth* %38, %struct.mtk_eth** %13, align 8
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %39 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %40 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %39, i32 0, i32 2
  %41 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %40, align 8
  store %struct.mtk_tx_dma* %41, %struct.mtk_tx_dma** %14, align 8
  %42 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %43 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %44 = call %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring* %42, %struct.mtk_tx_dma* %43)
  store %struct.mtk_tx_dma* %44, %struct.mtk_tx_dma** %16, align 8
  %45 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %46 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %47 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %46, i32 0, i32 3
  %48 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %47, align 8
  %49 = icmp eq %struct.mtk_tx_dma* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %5
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %462

53:                                               ; preds = %5
  %54 = load %struct.mtk_mac*, %struct.mtk_mac** %12, align 8
  %55 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @TX_DMA_FPORT_SHIFT, align 4
  %59 = shl i32 %57, %58
  store i32 %59, i32* %25, align 4
  %60 = load i32, i32* %25, align 4
  %61 = load i32, i32* %24, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %24, align 4
  %63 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %64 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %65 = call %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring* %63, %struct.mtk_tx_dma* %64)
  store %struct.mtk_tx_buf* %65, %struct.mtk_tx_buf** %18, align 8
  %66 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %18, align 8
  %67 = call i32 @memset(%struct.mtk_tx_buf* %66, i32 0, i32 16)
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = load i32, i32* @TX_DMA_TSO, align 4
  %72 = load i32, i32* %24, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %24, align 4
  br label %74

74:                                               ; preds = %70, %53
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @TX_DMA_CHKSUM, align 4
  %82 = load i32, i32* %24, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %24, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, i32* @TX_DMA_INS_VLAN, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %90)
  %92 = or i32 %89, %91
  %93 = load i32, i32* %24, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %24, align 4
  br label %95

95:                                               ; preds = %88, %84
  %96 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %97 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = call i32 @skb_headlen(%struct.sk_buff* %102)
  %104 = load i32, i32* @DMA_TO_DEVICE, align 4
  %105 = call i32 @dma_map_single(i32 %98, i32 %101, i32 %103, i32 %104)
  store i32 %105, i32* %20, align 4
  %106 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %107 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @dma_mapping_error(i32 %108, i32 %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %95
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %462

116:                                              ; preds = %95
  %117 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %118 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @WRITE_ONCE(i32 %119, i32 %120)
  %122 = load i32, i32* @MTK_TX_FLAGS_SINGLE0, align 4
  %123 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %18, align 8
  %124 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.mtk_mac*, %struct.mtk_mac** %12, align 8
  %128 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* @MTK_TX_FLAGS_FPORT0, align 4
  br label %135

133:                                              ; preds = %116
  %134 = load i32, i32* @MTK_TX_FLAGS_FPORT1, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %18, align 8
  %138 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %142 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %18, align 8
  %143 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %16, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call i32 @skb_headlen(%struct.sk_buff* %145)
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %26, align 4
  %149 = call i32 @setup_tx_buf(%struct.mtk_eth* %141, %struct.mtk_tx_buf* %142, %struct.mtk_tx_dma* %143, i32 %144, i32 %146, i32 %147)
  %150 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  store %struct.mtk_tx_dma* %150, %struct.mtk_tx_dma** %15, align 8
  %151 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %152 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %153 = call %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring* %151, %struct.mtk_tx_dma* %152)
  store %struct.mtk_tx_dma* %153, %struct.mtk_tx_dma** %17, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %158

158:                                              ; preds = %309, %135
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %312

162:                                              ; preds = %158
  %163 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %164 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %163)
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32* %169, i32** %27, align 8
  store i32 0, i32* %28, align 4
  %170 = load i32*, i32** %27, align 8
  %171 = call i32 @skb_frag_size(i32* %170)
  store i32 %171, i32* %29, align 4
  br label %172

172:                                              ; preds = %288, %162
  %173 = load i32, i32* %29, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %308

175:                                              ; preds = %172
  store i32 0, i32* %30, align 4
  store i32 1, i32* %32, align 4
  %176 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %177 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %176, i32 0, i32 0
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MTK_QDMA, align 4
  %182 = call i64 @MTK_HAS_CAPS(i32 %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %22, align 4
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %184, %175
  %189 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %190 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %191 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %189, i32 %192)
  %194 = bitcast i8* %193 to %struct.mtk_tx_dma*
  store %struct.mtk_tx_dma* %194, %struct.mtk_tx_dma** %15, align 8
  %195 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %196 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %197 = call %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring* %195, %struct.mtk_tx_dma* %196)
  store %struct.mtk_tx_dma* %197, %struct.mtk_tx_dma** %17, align 8
  %198 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %199 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %200 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %199, i32 0, i32 3
  %201 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %200, align 8
  %202 = icmp eq %struct.mtk_tx_dma* %198, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %188
  br label %420

204:                                              ; preds = %188
  %205 = load i32, i32* %23, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %23, align 4
  br label %208

207:                                              ; preds = %184
  store i32 0, i32* %32, align 4
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* @MTK_TX_DMA_BUF_LEN, align 4
  %211 = call i32 @min(i32 %209, i32 %210)
  store i32 %211, i32* %31, align 4
  %212 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %213 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32*, i32** %27, align 8
  %216 = load i32, i32* %28, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* @DMA_TO_DEVICE, align 4
  %219 = call i32 @skb_frag_dma_map(i32 %214, i32* %215, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %20, align 4
  %220 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %221 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %20, align 4
  %224 = call i32 @dma_mapping_error(i32 %222, i32 %223)
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %208
  br label %420

228:                                              ; preds = %208
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %21, align 4
  %231 = sub i32 %230, 1
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load i32, i32* %29, align 4
  %235 = load i32, i32* %31, align 4
  %236 = sub i32 %234, %235
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 1, i32* %30, align 4
  br label %239

239:                                              ; preds = %238, %233, %228
  %240 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %241 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %20, align 4
  %244 = call i32 @WRITE_ONCE(i32 %242, i32 %243)
  %245 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %246 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @TX_DMA_SWC, align 4
  %249 = load i32, i32* %31, align 4
  %250 = call i32 @TX_DMA_PLEN0(i32 %249)
  %251 = or i32 %248, %250
  %252 = load i32, i32* %30, align 4
  %253 = load i32, i32* @TX_DMA_LS0, align 4
  %254 = mul nsw i32 %252, %253
  %255 = or i32 %251, %254
  %256 = call i32 @WRITE_ONCE(i32 %247, i32 %255)
  %257 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %258 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %25, align 4
  %261 = call i32 @WRITE_ONCE(i32 %259, i32 %260)
  %262 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %263 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %264 = call %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring* %262, %struct.mtk_tx_dma* %263)
  store %struct.mtk_tx_buf* %264, %struct.mtk_tx_buf** %19, align 8
  %265 = load i32, i32* %32, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %239
  %268 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %269 = call i32 @memset(%struct.mtk_tx_buf* %268, i32 0, i32 16)
  br label %270

270:                                              ; preds = %267, %239
  %271 = load i64, i64* @MTK_DMA_DUMMY_DESC, align 8
  %272 = inttoptr i64 %271 to %struct.sk_buff*
  %273 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %274 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %273, i32 0, i32 0
  store %struct.sk_buff* %272, %struct.sk_buff** %274, align 8
  %275 = load i32, i32* @MTK_TX_FLAGS_PAGE0, align 4
  %276 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %277 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.mtk_mac*, %struct.mtk_mac** %12, align 8
  %281 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %270
  %285 = load i32, i32* @MTK_TX_FLAGS_FPORT0, align 4
  br label %288

286:                                              ; preds = %270
  %287 = load i32, i32* @MTK_TX_FLAGS_FPORT1, align 4
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i32 [ %285, %284 ], [ %287, %286 ]
  %290 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %291 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  %294 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %295 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %296 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %17, align 8
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %31, align 4
  %299 = load i32, i32* %26, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %26, align 4
  %301 = call i32 @setup_tx_buf(%struct.mtk_eth* %294, %struct.mtk_tx_buf* %295, %struct.mtk_tx_dma* %296, i32 %297, i32 %298, i32 %299)
  %302 = load i32, i32* %31, align 4
  %303 = load i32, i32* %29, align 4
  %304 = sub i32 %303, %302
  store i32 %304, i32* %29, align 4
  %305 = load i32, i32* %31, align 4
  %306 = load i32, i32* %28, align 4
  %307 = add i32 %306, %305
  store i32 %307, i32* %28, align 4
  br label %172

308:                                              ; preds = %172
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %22, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %22, align 4
  br label %158

312:                                              ; preds = %158
  %313 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %314 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %18, align 8
  %315 = getelementptr inbounds %struct.mtk_tx_buf, %struct.mtk_tx_buf* %314, i32 0, i32 0
  store %struct.sk_buff* %313, %struct.sk_buff** %315, align 8
  %316 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %317 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %24, align 4
  %320 = call i32 @WRITE_ONCE(i32 %318, i32 %319)
  %321 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %322 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @TX_DMA_SWC, align 4
  %325 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %326 = call i32 @skb_headlen(%struct.sk_buff* %325)
  %327 = call i32 @TX_DMA_PLEN0(i32 %326)
  %328 = or i32 %324, %327
  %329 = load i32, i32* %21, align 4
  %330 = icmp ne i32 %329, 0
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i32
  %333 = load i32, i32* @TX_DMA_LS0, align 4
  %334 = mul nsw i32 %332, %333
  %335 = or i32 %328, %334
  %336 = call i32 @WRITE_ONCE(i32 %323, i32 %335)
  %337 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %338 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %337, i32 0, i32 0
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @MTK_QDMA, align 4
  %343 = call i64 @MTK_HAS_CAPS(i32 %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %362, label %345

345:                                              ; preds = %312
  %346 = load i32, i32* %26, align 4
  %347 = and i32 %346, 1
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %345
  %350 = load i32, i32* @TX_DMA_LS0, align 4
  %351 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %17, align 8
  %352 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 4
  br label %361

355:                                              ; preds = %345
  %356 = load i32, i32* @TX_DMA_LS1, align 4
  %357 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %17, align 8
  %358 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = or i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %355, %349
  br label %362

362:                                              ; preds = %361, %312
  %363 = load %struct.net_device*, %struct.net_device** %8, align 8
  %364 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %365 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @netdev_sent_queue(%struct.net_device* %363, i32 %366)
  %368 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %369 = call i32 @skb_tx_timestamp(%struct.sk_buff* %368)
  %370 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %371 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %372 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i8* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %370, i32 %373)
  %375 = bitcast i8* %374 to %struct.mtk_tx_dma*
  %376 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %377 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %376, i32 0, i32 2
  store %struct.mtk_tx_dma* %375, %struct.mtk_tx_dma** %377, align 8
  %378 = load i32, i32* %23, align 4
  %379 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %380 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %379, i32 0, i32 1
  %381 = call i32 @atomic_sub(i32 %378, i32* %380)
  %382 = call i32 (...) @wmb()
  %383 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %384 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %383, i32 0, i32 0
  %385 = load %struct.TYPE_3__*, %struct.TYPE_3__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @MTK_QDMA, align 4
  %389 = call i64 @MTK_HAS_CAPS(i32 %387, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %407

391:                                              ; preds = %362
  %392 = load %struct.net_device*, %struct.net_device** %8, align 8
  %393 = call i32 @netdev_get_tx_queue(%struct.net_device* %392, i32 0)
  %394 = call i64 @netif_xmit_stopped(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %399, label %396

396:                                              ; preds = %391
  %397 = call i32 (...) @netdev_xmit_more()
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %406, label %399

399:                                              ; preds = %396, %391
  %400 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %401 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %402 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @MTK_QTX_CTX_PTR, align 4
  %405 = call i32 @mtk_w32(%struct.mtk_eth* %400, i32 %403, i32 %404)
  br label %406

406:                                              ; preds = %399, %396
  br label %419

407:                                              ; preds = %362
  %408 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %409 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %410 = call i32 @txd_to_idx(%struct.mtk_tx_ring* %408, %struct.mtk_tx_dma* %409)
  %411 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %412 = getelementptr inbounds %struct.mtk_tx_ring, %struct.mtk_tx_ring* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @NEXT_DESP_IDX(i32 %410, i32 %413)
  store i32 %414, i32* %33, align 4
  %415 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %416 = load i32, i32* %33, align 4
  %417 = load i32, i32* @MT7628_TX_CTX_IDX0, align 4
  %418 = call i32 @mtk_w32(%struct.mtk_eth* %415, i32 %416, i32 %417)
  br label %419

419:                                              ; preds = %407, %406
  store i32 0, i32* %6, align 4
  br label %462

420:                                              ; preds = %227, %203
  br label %421

421:                                              ; preds = %455, %420
  %422 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %423 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %424 = call %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring* %422, %struct.mtk_tx_dma* %423)
  store %struct.mtk_tx_buf* %424, %struct.mtk_tx_buf** %19, align 8
  %425 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %426 = load %struct.mtk_tx_buf*, %struct.mtk_tx_buf** %19, align 8
  %427 = call i32 @mtk_tx_unmap(%struct.mtk_eth* %425, %struct.mtk_tx_buf* %426)
  %428 = load i32, i32* @TX_DMA_LS0, align 4
  %429 = load i32, i32* @TX_DMA_OWNER_CPU, align 4
  %430 = or i32 %428, %429
  %431 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %432 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %431, i32 0, i32 2
  store i32 %430, i32* %432, align 4
  %433 = load %struct.mtk_eth*, %struct.mtk_eth** %13, align 8
  %434 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %433, i32 0, i32 0
  %435 = load %struct.TYPE_3__*, %struct.TYPE_3__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @MTK_QDMA, align 4
  %439 = call i64 @MTK_HAS_CAPS(i32 %437, i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %445, label %441

441:                                              ; preds = %421
  %442 = load i32, i32* @TX_DMA_DESP2_DEF, align 4
  %443 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %16, align 8
  %444 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %443, i32 0, i32 1
  store i32 %442, i32* %444, align 4
  br label %445

445:                                              ; preds = %441, %421
  %446 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %447 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %448 = getelementptr inbounds %struct.mtk_tx_dma, %struct.mtk_tx_dma* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i8* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring* %446, i32 %449)
  %451 = bitcast i8* %450 to %struct.mtk_tx_dma*
  store %struct.mtk_tx_dma* %451, %struct.mtk_tx_dma** %14, align 8
  %452 = load %struct.mtk_tx_ring*, %struct.mtk_tx_ring** %10, align 8
  %453 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %454 = call %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring* %452, %struct.mtk_tx_dma* %453)
  store %struct.mtk_tx_dma* %454, %struct.mtk_tx_dma** %16, align 8
  br label %455

455:                                              ; preds = %445
  %456 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %14, align 8
  %457 = load %struct.mtk_tx_dma*, %struct.mtk_tx_dma** %15, align 8
  %458 = icmp ne %struct.mtk_tx_dma* %456, %457
  br i1 %458, label %421, label %459

459:                                              ; preds = %455
  %460 = load i32, i32* @ENOMEM, align 4
  %461 = sub nsw i32 0, %460
  store i32 %461, i32* %6, align 4
  br label %462

462:                                              ; preds = %459, %419, %113, %50
  %463 = load i32, i32* %6, align 4
  ret i32 %463
}

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mtk_tx_dma* @qdma_to_pdma(%struct.mtk_tx_ring*, %struct.mtk_tx_dma*) #1

declare dso_local %struct.mtk_tx_buf* @mtk_desc_to_tx_buf(%struct.mtk_tx_ring*, %struct.mtk_tx_dma*) #1

declare dso_local i32 @memset(%struct.mtk_tx_buf*, i32, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @setup_tx_buf(%struct.mtk_eth*, %struct.mtk_tx_buf*, %struct.mtk_tx_dma*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i8* @mtk_qdma_phys_to_virt(%struct.mtk_tx_ring*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @TX_DMA_PLEN0(i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @NEXT_DESP_IDX(i32, i32) #1

declare dso_local i32 @txd_to_idx(%struct.mtk_tx_ring*, %struct.mtk_tx_dma*) #1

declare dso_local i32 @mtk_tx_unmap(%struct.mtk_eth*, %struct.mtk_tx_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
