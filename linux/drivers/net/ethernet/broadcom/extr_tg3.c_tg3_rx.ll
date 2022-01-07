; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, i64*, i32, i32, %struct.tg3_rx_prodring_set, %struct.tg3_rx_buffer_desc*, %struct.tg3* }
%struct.tg3_rx_prodring_set = type { i64, i64, %struct.ring_info*, %struct.ring_info* }
%struct.ring_info = type { i32* }
%struct.tg3_rx_buffer_desc = type { i64, i32, i32, i32, i32 }
%struct.tg3 = type { i32, i64, i64, i64, i64, i32, %struct.tg3_napi*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }

@RXD_OPAQUE_INDEX_MASK = common dso_local global i64 0, align 8
@RXD_OPAQUE_RING_MASK = common dso_local global i64 0, align 8
@RXD_OPAQUE_RING_STD = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@RXD_OPAQUE_RING_JUMBO = common dso_local global i64 0, align 8
@RXD_ERR_MASK = common dso_local global i32 0, align 4
@RXD_LEN_MASK = common dso_local global i32 0, align 4
@RXD_LEN_SHIFT = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@RXD_FLAG_PTPSTAT_MASK = common dso_local global i32 0, align 4
@RXD_FLAG_PTPSTAT_PTPV1 = common dso_local global i32 0, align 4
@RXD_FLAG_PTPSTAT_PTPV2 = common dso_local global i32 0, align 4
@TG3_RX_TSTAMP_LSB = common dso_local global i32 0, align 4
@TG3_RX_TSTAMP_MSB = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TG3_RAW_IP_ALIGN = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RXD_FLAG_TCPUDP_CSUM = common dso_local global i32 0, align 4
@RXD_TCPCSUM_MASK = common dso_local global i32 0, align 4
@RXD_TCPCSUM_SHIFT = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@RXD_FLAG_VLAN = common dso_local global i32 0, align 4
@RX_MODE_KEEP_VLAN_TAG = common dso_local global i32 0, align 4
@RXD_VLAN_MASK = common dso_local global i32 0, align 4
@TG3_RX_STD_PROD_IDX_REG = common dso_local global i32 0, align 4
@ENABLE_RSS = common dso_local global i32 0, align 4
@TG3_RX_JMB_PROD_IDX_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3_napi*, i32)* @tg3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_rx(%struct.tg3_napi* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3_napi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tg3_rx_prodring_set*, align 8
  %14 = alloca %struct.ring_info*, align 8
  %15 = alloca %struct.tg3_rx_buffer_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %3, align 8
  store i32 %1, i32* %4, align 4
  %26 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %27 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %26, i32 0, i32 6
  %28 = load %struct.tg3*, %struct.tg3** %27, align 8
  store %struct.tg3* %28, %struct.tg3** %5, align 8
  store i64 0, i64* %7, align 8
  %29 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %30 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %33 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %32, i32 0, i32 4
  store %struct.tg3_rx_prodring_set* %33, %struct.tg3_rx_prodring_set** %13, align 8
  %34 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %35 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = call i32 (...) @rmb()
  store i64 0, i64* %6, align 8
  store i32 0, i32* %12, align 4
  %39 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %40 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %43 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %422, %2
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %423

54:                                               ; preds = %52
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 5
  %57 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %57, i64 %58
  store %struct.tg3_rx_buffer_desc* %59, %struct.tg3_rx_buffer_desc** %15, align 8
  store i32 0, i32* %23, align 4
  %60 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %61 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RXD_OPAQUE_INDEX_MASK, align 8
  %64 = and i64 %62, %63
  store i64 %64, i64* %20, align 8
  %65 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %66 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RXD_OPAQUE_RING_MASK, align 8
  %69 = and i64 %67, %68
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* @RXD_OPAQUE_RING_STD, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %54
  %74 = load %struct.tg3*, %struct.tg3** %5, align 8
  %75 = getelementptr inbounds %struct.tg3, %struct.tg3* %74, i32 0, i32 6
  %76 = load %struct.tg3_napi*, %struct.tg3_napi** %75, align 8
  %77 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %76, i64 0
  %78 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %78, i32 0, i32 3
  %80 = load %struct.ring_info*, %struct.ring_info** %79, align 8
  %81 = load i64, i64* %20, align 8
  %82 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %80, i64 %81
  store %struct.ring_info* %82, %struct.ring_info** %14, align 8
  %83 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %84 = load i32, i32* @mapping, align 4
  %85 = call i32 @dma_unmap_addr(%struct.ring_info* %83, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %87 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %22, align 8
  store i64* %8, i64** %21, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %113

91:                                               ; preds = %54
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* @RXD_OPAQUE_RING_JUMBO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load %struct.tg3*, %struct.tg3** %5, align 8
  %97 = getelementptr inbounds %struct.tg3, %struct.tg3* %96, i32 0, i32 6
  %98 = load %struct.tg3_napi*, %struct.tg3_napi** %97, align 8
  %99 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %98, i64 0
  %100 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %100, i32 0, i32 2
  %102 = load %struct.ring_info*, %struct.ring_info** %101, align 8
  %103 = load i64, i64* %20, align 8
  %104 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %102, i64 %103
  store %struct.ring_info* %104, %struct.ring_info** %14, align 8
  %105 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %106 = load i32, i32* @mapping, align 4
  %107 = call i32 @dma_unmap_addr(%struct.ring_info* %105, i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %109 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %22, align 8
  store i64* %9, i64** %21, align 8
  br label %112

111:                                              ; preds = %91
  br label %405

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %73
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %6, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %6, align 8
  %117 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %118 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @RXD_ERR_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %190, %123
  %125 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %126 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %20, align 8
  %129 = load i64*, i64** %21, align 8
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @tg3_recycle_rx(%struct.tg3_napi* %125, %struct.tg3_rx_prodring_set* %126, i64 %127, i64 %128, i64 %130)
  br label %132

132:                                              ; preds = %339, %235, %207, %124
  %133 = load %struct.tg3*, %struct.tg3** %5, align 8
  %134 = getelementptr inbounds %struct.tg3, %struct.tg3* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %375

137:                                              ; preds = %113
  %138 = load i32*, i32** %22, align 8
  %139 = load %struct.tg3*, %struct.tg3** %5, align 8
  %140 = call i32 @TG3_RX_OFFSET(%struct.tg3* %139)
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = call i32 @prefetch(i32* %142)
  %144 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %145 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RXD_LEN_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @RXD_LEN_SHIFT, align 4
  %150 = lshr i32 %148, %149
  %151 = load i32, i32* @ETH_FCS_LEN, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %16, align 4
  %153 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %154 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RXD_FLAG_PTPSTAT_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @RXD_FLAG_PTPSTAT_PTPV1, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %168, label %160

160:                                              ; preds = %137
  %161 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %162 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @RXD_FLAG_PTPSTAT_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @RXD_FLAG_PTPSTAT_PTPV2, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %160, %137
  %169 = load i32, i32* @TG3_RX_TSTAMP_LSB, align 4
  %170 = call i32 @tr32(i32 %169)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* @TG3_RX_TSTAMP_MSB, align 4
  %172 = call i32 @tr32(i32 %171)
  %173 = shl i32 %172, 32
  %174 = load i32, i32* %23, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %23, align 4
  br label %176

176:                                              ; preds = %168, %160
  %177 = load i32, i32* %16, align 4
  %178 = load %struct.tg3*, %struct.tg3** %5, align 8
  %179 = call i32 @TG3_RX_COPY_THRESH(%struct.tg3* %178)
  %180 = icmp ugt i32 %177, %179
  br i1 %180, label %181, label %218

181:                                              ; preds = %176
  %182 = load %struct.tg3*, %struct.tg3** %5, align 8
  %183 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %184 = load i64, i64* %19, align 8
  %185 = load i64*, i64** %21, align 8
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @tg3_alloc_rx_data(%struct.tg3* %182, %struct.tg3_rx_prodring_set* %183, i64 %184, i64 %186, i32* %25)
  store i32 %187, i32* %24, align 4
  %188 = load i32, i32* %24, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %124

191:                                              ; preds = %181
  %192 = load %struct.tg3*, %struct.tg3** %5, align 8
  %193 = getelementptr inbounds %struct.tg3, %struct.tg3* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %198 = call i32 @pci_unmap_single(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = call i32 (...) @smp_wmb()
  %200 = load %struct.ring_info*, %struct.ring_info** %14, align 8
  %201 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %200, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load i32, i32* %25, align 4
  %204 = call %struct.sk_buff* @build_skb(i32* %202, i32 %203)
  store %struct.sk_buff* %204, %struct.sk_buff** %17, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %206 = icmp ne %struct.sk_buff* %205, null
  br i1 %206, label %213, label %207

207:                                              ; preds = %191
  %208 = load i32, i32* %25, align 4
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = load i32*, i32** %22, align 8
  %212 = call i32 @tg3_frag_free(i32 %210, i32* %211)
  br label %132

213:                                              ; preds = %191
  %214 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %215 = load %struct.tg3*, %struct.tg3** %5, align 8
  %216 = call i32 @TG3_RX_OFFSET(%struct.tg3* %215)
  %217 = call i32 @skb_reserve(%struct.sk_buff* %214, i32 %216)
  br label %264

218:                                              ; preds = %176
  %219 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %220 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %221 = load i64, i64* %19, align 8
  %222 = load i64, i64* %20, align 8
  %223 = load i64*, i64** %21, align 8
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @tg3_recycle_rx(%struct.tg3_napi* %219, %struct.tg3_rx_prodring_set* %220, i64 %221, i64 %222, i64 %224)
  %226 = load %struct.tg3*, %struct.tg3** %5, align 8
  %227 = getelementptr inbounds %struct.tg3, %struct.tg3* %226, i32 0, i32 7
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = load i32, i32* %16, align 4
  %230 = load i32, i32* @TG3_RAW_IP_ALIGN, align 4
  %231 = add i32 %229, %230
  %232 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__* %228, i32 %231)
  store %struct.sk_buff* %232, %struct.sk_buff** %17, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %234 = icmp eq %struct.sk_buff* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %218
  br label %132

236:                                              ; preds = %218
  %237 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %238 = load i32, i32* @TG3_RAW_IP_ALIGN, align 4
  %239 = call i32 @skb_reserve(%struct.sk_buff* %237, i32 %238)
  %240 = load %struct.tg3*, %struct.tg3** %5, align 8
  %241 = getelementptr inbounds %struct.tg3, %struct.tg3* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %246 = call i32 @pci_dma_sync_single_for_cpu(i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %22, align 8
  %251 = load %struct.tg3*, %struct.tg3** %5, align 8
  %252 = call i32 @TG3_RX_OFFSET(%struct.tg3* %251)
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %16, align 4
  %256 = call i32 @memcpy(i32 %249, i32* %254, i32 %255)
  %257 = load %struct.tg3*, %struct.tg3** %5, align 8
  %258 = getelementptr inbounds %struct.tg3, %struct.tg3* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %263 = call i32 @pci_dma_sync_single_for_device(i32 %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %236, %213
  %265 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @skb_put(%struct.sk_buff* %265, i32 %266)
  %268 = load i32, i32* %23, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load %struct.tg3*, %struct.tg3** %5, align 8
  %272 = load i32, i32* %23, align 4
  %273 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %274 = call i32 @skb_hwtstamps(%struct.sk_buff* %273)
  %275 = call i32 @tg3_hwclock_to_timestamp(%struct.tg3* %271, i32 %272, i32 %274)
  br label %276

276:                                              ; preds = %270, %264
  %277 = load %struct.tg3*, %struct.tg3** %5, align 8
  %278 = getelementptr inbounds %struct.tg3, %struct.tg3* %277, i32 0, i32 7
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %305

285:                                              ; preds = %276
  %286 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %287 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @RXD_FLAG_TCPUDP_CSUM, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %285
  %293 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %294 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @RXD_TCPCSUM_MASK, align 4
  %297 = and i32 %295, %296
  %298 = load i32, i32* @RXD_TCPCSUM_SHIFT, align 4
  %299 = ashr i32 %297, %298
  %300 = icmp eq i32 %299, 65535
  br i1 %300, label %301, label %305

301:                                              ; preds = %292
  %302 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %303 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %304 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  br label %308

305:                                              ; preds = %292, %285, %276
  %306 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %307 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %306)
  br label %308

308:                                              ; preds = %305, %301
  %309 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %310 = load %struct.tg3*, %struct.tg3** %5, align 8
  %311 = getelementptr inbounds %struct.tg3, %struct.tg3* %310, i32 0, i32 7
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %311, align 8
  %313 = call i64 @eth_type_trans(%struct.sk_buff* %309, %struct.TYPE_3__* %312)
  %314 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 0
  store i64 %313, i64* %315, align 8
  %316 = load i32, i32* %16, align 4
  %317 = load %struct.tg3*, %struct.tg3** %5, align 8
  %318 = getelementptr inbounds %struct.tg3, %struct.tg3* %317, i32 0, i32 7
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @ETH_HLEN, align 4
  %323 = add i32 %321, %322
  %324 = icmp ugt i32 %316, %323
  br i1 %324, label %325, label %342

325:                                              ; preds = %308
  %326 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %327 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* @ETH_P_8021Q, align 4
  %330 = call i64 @htons(i32 %329)
  %331 = icmp ne i64 %328, %330
  br i1 %331, label %332, label %342

332:                                              ; preds = %325
  %333 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %334 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i32, i32* @ETH_P_8021AD, align 4
  %337 = call i64 @htons(i32 %336)
  %338 = icmp ne i64 %335, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %341 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %340)
  br label %132

342:                                              ; preds = %332, %325, %308
  %343 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %344 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %343, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @RXD_FLAG_VLAN, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %342
  %350 = load %struct.tg3*, %struct.tg3** %5, align 8
  %351 = getelementptr inbounds %struct.tg3, %struct.tg3* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @RX_MODE_KEEP_VLAN_TAG, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %366, label %356

356:                                              ; preds = %349
  %357 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %358 = load i32, i32* @ETH_P_8021Q, align 4
  %359 = call i64 @htons(i32 %358)
  %360 = load %struct.tg3_rx_buffer_desc*, %struct.tg3_rx_buffer_desc** %15, align 8
  %361 = getelementptr inbounds %struct.tg3_rx_buffer_desc, %struct.tg3_rx_buffer_desc* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @RXD_VLAN_MASK, align 4
  %364 = and i32 %362, %363
  %365 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %357, i64 %359, i32 %364)
  br label %366

366:                                              ; preds = %356, %349, %342
  %367 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %368 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %367, i32 0, i32 2
  %369 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %370 = call i32 @napi_gro_receive(i32* %368, %struct.sk_buff* %369)
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* %4, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %4, align 4
  br label %375

375:                                              ; preds = %366, %132
  %376 = load i64*, i64** %21, align 8
  %377 = load i64, i64* %376, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %376, align 8
  %379 = load i64, i64* %7, align 8
  %380 = load %struct.tg3*, %struct.tg3** %5, align 8
  %381 = getelementptr inbounds %struct.tg3, %struct.tg3* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = icmp uge i64 %379, %382
  %384 = zext i1 %383 to i32
  %385 = call i64 @unlikely(i32 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %404

387:                                              ; preds = %375
  %388 = load i64, i64* %8, align 8
  %389 = load %struct.tg3*, %struct.tg3** %5, align 8
  %390 = getelementptr inbounds %struct.tg3, %struct.tg3* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = and i64 %388, %391
  %393 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %394 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %393, i32 0, i32 0
  store i64 %392, i64* %394, align 8
  %395 = load i32, i32* @TG3_RX_STD_PROD_IDX_REG, align 4
  %396 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %397 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @tw32_rx_mbox(i32 %395, i64 %398)
  %400 = load i64, i64* @RXD_OPAQUE_RING_STD, align 8
  %401 = xor i64 %400, -1
  %402 = load i64, i64* %6, align 8
  %403 = and i64 %402, %401
  store i64 %403, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %404

404:                                              ; preds = %387, %375
  br label %405

405:                                              ; preds = %404, %111
  %406 = load i64, i64* %10, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %10, align 8
  %408 = load %struct.tg3*, %struct.tg3** %5, align 8
  %409 = getelementptr inbounds %struct.tg3, %struct.tg3* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* %10, align 8
  %412 = and i64 %411, %410
  store i64 %412, i64* %10, align 8
  %413 = load i64, i64* %10, align 8
  %414 = load i64, i64* %11, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %422

416:                                              ; preds = %405
  %417 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %418 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %417, i32 0, i32 1
  %419 = load i64*, i64** %418, align 8
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %11, align 8
  %421 = call i32 (...) @rmb()
  br label %422

422:                                              ; preds = %416, %405
  br label %45

423:                                              ; preds = %52
  %424 = load i64, i64* %10, align 8
  %425 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %426 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  %427 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %428 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load i64, i64* %10, align 8
  %431 = call i32 @tw32_rx_mbox(i32 %429, i64 %430)
  %432 = load %struct.tg3*, %struct.tg3** %5, align 8
  %433 = load i32, i32* @ENABLE_RSS, align 4
  %434 = call i32 @tg3_flag(%struct.tg3* %432, i32 %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %474, label %436

436:                                              ; preds = %423
  %437 = call i32 (...) @wmb()
  %438 = load i64, i64* %6, align 8
  %439 = load i64, i64* @RXD_OPAQUE_RING_STD, align 8
  %440 = and i64 %438, %439
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %455

442:                                              ; preds = %436
  %443 = load i64, i64* %8, align 8
  %444 = load %struct.tg3*, %struct.tg3** %5, align 8
  %445 = getelementptr inbounds %struct.tg3, %struct.tg3* %444, i32 0, i32 2
  %446 = load i64, i64* %445, align 8
  %447 = and i64 %443, %446
  %448 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %449 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %448, i32 0, i32 0
  store i64 %447, i64* %449, align 8
  %450 = load i32, i32* @TG3_RX_STD_PROD_IDX_REG, align 4
  %451 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %452 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = call i32 @tw32_rx_mbox(i32 %450, i64 %453)
  br label %455

455:                                              ; preds = %442, %436
  %456 = load i64, i64* %6, align 8
  %457 = load i64, i64* @RXD_OPAQUE_RING_JUMBO, align 8
  %458 = and i64 %456, %457
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %473

460:                                              ; preds = %455
  %461 = load i64, i64* %9, align 8
  %462 = load %struct.tg3*, %struct.tg3** %5, align 8
  %463 = getelementptr inbounds %struct.tg3, %struct.tg3* %462, i32 0, i32 4
  %464 = load i64, i64* %463, align 8
  %465 = and i64 %461, %464
  %466 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %467 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %466, i32 0, i32 1
  store i64 %465, i64* %467, align 8
  %468 = load i32, i32* @TG3_RX_JMB_PROD_IDX_REG, align 4
  %469 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %470 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %469, i32 0, i32 1
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @tw32_rx_mbox(i32 %468, i64 %471)
  br label %473

473:                                              ; preds = %460, %455
  br label %510

474:                                              ; preds = %423
  %475 = load i64, i64* %6, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %509

477:                                              ; preds = %474
  %478 = call i32 (...) @smp_wmb()
  %479 = load i64, i64* %8, align 8
  %480 = load %struct.tg3*, %struct.tg3** %5, align 8
  %481 = getelementptr inbounds %struct.tg3, %struct.tg3* %480, i32 0, i32 2
  %482 = load i64, i64* %481, align 8
  %483 = and i64 %479, %482
  %484 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %485 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %484, i32 0, i32 0
  store i64 %483, i64* %485, align 8
  %486 = load i64, i64* %9, align 8
  %487 = load %struct.tg3*, %struct.tg3** %5, align 8
  %488 = getelementptr inbounds %struct.tg3, %struct.tg3* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = and i64 %486, %489
  %491 = load %struct.tg3_rx_prodring_set*, %struct.tg3_rx_prodring_set** %13, align 8
  %492 = getelementptr inbounds %struct.tg3_rx_prodring_set, %struct.tg3_rx_prodring_set* %491, i32 0, i32 1
  store i64 %490, i64* %492, align 8
  %493 = load %struct.tg3_napi*, %struct.tg3_napi** %3, align 8
  %494 = load %struct.tg3*, %struct.tg3** %5, align 8
  %495 = getelementptr inbounds %struct.tg3, %struct.tg3* %494, i32 0, i32 6
  %496 = load %struct.tg3_napi*, %struct.tg3_napi** %495, align 8
  %497 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %496, i64 1
  %498 = icmp ne %struct.tg3_napi* %493, %497
  br i1 %498, label %499, label %508

499:                                              ; preds = %477
  %500 = load %struct.tg3*, %struct.tg3** %5, align 8
  %501 = getelementptr inbounds %struct.tg3, %struct.tg3* %500, i32 0, i32 5
  store i32 1, i32* %501, align 8
  %502 = load %struct.tg3*, %struct.tg3** %5, align 8
  %503 = getelementptr inbounds %struct.tg3, %struct.tg3* %502, i32 0, i32 6
  %504 = load %struct.tg3_napi*, %struct.tg3_napi** %503, align 8
  %505 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %504, i64 1
  %506 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %505, i32 0, i32 2
  %507 = call i32 @napi_schedule(i32* %506)
  br label %508

508:                                              ; preds = %499, %477
  br label %509

509:                                              ; preds = %508, %474
  br label %510

510:                                              ; preds = %509, %473
  %511 = load i32, i32* %12, align 4
  ret i32 %511
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_unmap_addr(%struct.ring_info*, i32) #1

declare dso_local i32 @tg3_recycle_rx(%struct.tg3_napi*, %struct.tg3_rx_prodring_set*, i64, i64, i64) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @TG3_RX_OFFSET(%struct.tg3*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @TG3_RX_COPY_THRESH(%struct.tg3*) #1

declare dso_local i32 @tg3_alloc_rx_data(%struct.tg3*, %struct.tg3_rx_prodring_set*, i64, i64, i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @tg3_frag_free(i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @tg3_hwclock_to_timestamp(%struct.tg3*, i32, i32) #1

declare dso_local i32 @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_3__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tw32_rx_mbox(i32, i64) #1

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
