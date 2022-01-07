; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_rx_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, %struct.bnx2_napi*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2_napi = type { i32, %struct.bnx2_rx_ring_info }
%struct.bnx2_rx_ring_info = type { i64, i64, i64, i32, i32, i32, i32, %struct.bnx2_sw_bd* }
%struct.bnx2_sw_bd = type { i32* }
%struct.l2_fhdr = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i32 }

@mapping = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i32 0, align 4
@BNX2_RX_COPY_THRESH = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@L2_FHDR_STATUS_SPLIT = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_BAD_CRC = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_PHY_DECODE = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_ALIGNMENT = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_TOO_SHORT = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_GIANT_FRAME = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@L2_FHDR_STATUS_L2_VLAN_TAG = common dso_local global i32 0, align 4
@BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@L2_FHDR_STATUS_TCP_SEGMENT = common dso_local global i32 0, align 4
@L2_FHDR_STATUS_UDP_DATAGRAM = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_TCP_XSUM = common dso_local global i32 0, align 4
@L2_FHDR_ERRORS_UDP_XSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@L2_FHDR_STATUS_USE_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_napi*, i32)* @bnx2_rx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_rx_int(%struct.bnx2* %0, %struct.bnx2_napi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2*, align 8
  %6 = alloca %struct.bnx2_napi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2_rx_ring_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.l2_fhdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bnx2_sw_bd*, align 8
  %21 = alloca %struct.bnx2_sw_bd*, align 8
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %5, align 8
  store %struct.bnx2_napi* %1, %struct.bnx2_napi** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %27, i32 0, i32 1
  store %struct.bnx2_rx_ring_info* %28, %struct.bnx2_rx_ring_info** %8, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %4, align 4
  br label %395

33:                                               ; preds = %3
  %34 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %35 = call i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %34)
  store i64 %35, i64* %9, align 8
  %36 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %37 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %40 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = call i32 (...) @rmb()
  br label %43

43:                                               ; preds = %360, %33
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %361

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @BNX2_RX_RING_IDX(i64 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i64 @BNX2_RX_RING_IDX(i64 %50)
  store i64 %51, i64* %13, align 8
  %52 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %53 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %52, i32 0, i32 7
  %54 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %54, i64 %55
  store %struct.bnx2_sw_bd* %56, %struct.bnx2_sw_bd** %20, align 8
  %57 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %20, align 8
  %58 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %24, align 8
  %60 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %20, align 8
  %61 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = call %struct.l2_fhdr* @get_l2_fhdr(i32* %62)
  store %struct.l2_fhdr* %63, %struct.l2_fhdr** %14, align 8
  %64 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %65 = call i32 @prefetch(%struct.l2_fhdr* %64)
  %66 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %20, align 8
  %67 = load i32, i32* @mapping, align 4
  %68 = call i32 @dma_unmap_addr(%struct.bnx2_sw_bd* %66, i32 %67)
  store i32 %68, i32* %23, align 4
  %69 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %70 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* @BNX2_RX_OFFSET, align 4
  %75 = load i32, i32* @BNX2_RX_COPY_THRESH, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %78 = call i32 @dma_sync_single_for_cpu(i32* %72, i32 %73, i32 %76, i32 %77)
  %79 = load i64, i64* %10, align 8
  %80 = call i64 @BNX2_NEXT_RX_BD(i64 %79)
  %81 = call i64 @BNX2_RX_RING_IDX(i64 %80)
  store i64 %81, i64* %25, align 8
  %82 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %83 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %82, i32 0, i32 7
  %84 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %83, align 8
  %85 = load i64, i64* %25, align 8
  %86 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %84, i64 %85
  store %struct.bnx2_sw_bd* %86, %struct.bnx2_sw_bd** %21, align 8
  %87 = load %struct.bnx2_sw_bd*, %struct.bnx2_sw_bd** %21, align 8
  %88 = getelementptr inbounds %struct.bnx2_sw_bd, %struct.bnx2_sw_bd* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call %struct.l2_fhdr* @get_l2_fhdr(i32* %89)
  %91 = call i32 @prefetch(%struct.l2_fhdr* %90)
  %92 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %93 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %17, align 4
  %95 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %96 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @L2_FHDR_STATUS_SPLIT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %47
  %103 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %104 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %18, align 4
  store i32 1, i32* %16, align 4
  br label %117

106:                                              ; preds = %47
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %109 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ugt i32 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %114 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %18, align 4
  store i32 1, i32* %16, align 4
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116, %102
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* @L2_FHDR_ERRORS_BAD_CRC, align 4
  %120 = load i32, i32* @L2_FHDR_ERRORS_PHY_DECODE, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @L2_FHDR_ERRORS_ALIGNMENT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @L2_FHDR_ERRORS_TOO_SHORT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @L2_FHDR_ERRORS_GIANT_FRAME, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %118, %127
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %152

131:                                              ; preds = %117
  %132 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %133 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %134 = load i32*, i32** %24, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @bnx2_reuse_rx_data(%struct.bnx2* %132, %struct.bnx2_rx_ring_info* %133, i32* %134, i64 %135, i64 %136)
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %131
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = sub i32 %141, %142
  %144 = call i32 @PAGE_ALIGN(i32 %143)
  %145 = load i32, i32* @PAGE_SHIFT, align 4
  %146 = ashr i32 %144, %145
  store i32 %146, i32* %26, align 4
  %147 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %148 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %149 = load i32, i32* %26, align 4
  %150 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %147, %struct.bnx2_rx_ring_info* %148, i32* null, i32 %149)
  br label %151

151:                                              ; preds = %140, %131
  br label %343

152:                                              ; preds = %117
  %153 = load i32, i32* %17, align 4
  %154 = sub i32 %153, 4
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %157 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ule i32 %155, %158
  br i1 %159, label %160, label %200

160:                                              ; preds = %152
  %161 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %162 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %161, i32 0, i32 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = add i32 %164, 6
  %166 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_5__* %163, i32 %165)
  store %struct.sk_buff* %166, %struct.sk_buff** %22, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %168 = icmp ne %struct.sk_buff* %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %160
  %170 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %171 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %172 = load i32*, i32** %24, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i32 @bnx2_reuse_rx_data(%struct.bnx2* %170, %struct.bnx2_rx_ring_info* %171, i32* %172, i64 %173, i64 %174)
  br label %343

176:                                              ; preds = %160
  %177 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %181 = bitcast %struct.l2_fhdr* %180 to i32*
  %182 = load i32, i32* @BNX2_RX_OFFSET, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = getelementptr inbounds i32, i32* %184, i64 -6
  %186 = load i32, i32* %17, align 4
  %187 = add i32 %186, 6
  %188 = call i32 @memcpy(i32 %179, i32* %185, i32 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %190 = call i32 @skb_reserve(%struct.sk_buff* %189, i32 6)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @skb_put(%struct.sk_buff* %191, i32 %192)
  %194 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %195 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %196 = load i32*, i32** %24, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @bnx2_reuse_rx_data(%struct.bnx2* %194, %struct.bnx2_rx_ring_info* %195, i32* %196, i64 %197, i64 %198)
  br label %216

200:                                              ; preds = %152
  %201 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %202 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %23, align 4
  %207 = load i64, i64* %11, align 8
  %208 = shl i64 %207, 16
  %209 = load i64, i64* %13, align 8
  %210 = or i64 %208, %209
  %211 = call %struct.sk_buff* @bnx2_rx_skb(%struct.bnx2* %201, %struct.bnx2_rx_ring_info* %202, i32* %203, i32 %204, i32 %205, i32 %206, i64 %210)
  store %struct.sk_buff* %211, %struct.sk_buff** %22, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %213 = icmp ne %struct.sk_buff* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %200
  br label %343

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %176
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* @L2_FHDR_STATUS_L2_VLAN_TAG, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %216
  %222 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %223 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %221
  %229 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %230 = load i32, i32* @ETH_P_8021Q, align 4
  %231 = call i64 @htons(i32 %230)
  %232 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %233 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %229, i64 %231, i32 %234)
  br label %236

236:                                              ; preds = %228, %221, %216
  %237 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %238 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %239 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %238, i32 0, i32 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = call i64 @eth_type_trans(%struct.sk_buff* %237, %struct.TYPE_5__* %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* %17, align 4
  %245 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %246 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %245, i32 0, i32 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ETH_HLEN, align 4
  %251 = add i32 %249, %250
  %252 = icmp ugt i32 %244, %251
  br i1 %252, label %253, label %269

253:                                              ; preds = %236
  %254 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i64 @htons(i32 33024)
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %261 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* @ETH_P_8021AD, align 4
  %264 = call i64 @htons(i32 %263)
  %265 = icmp ne i64 %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %268 = call i32 @dev_kfree_skb(%struct.sk_buff* %267)
  br label %343

269:                                              ; preds = %259, %253, %236
  %270 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %271 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %270)
  %272 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %273 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %272, i32 0, i32 4
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %302

280:                                              ; preds = %269
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* @L2_FHDR_STATUS_TCP_SEGMENT, align 4
  %283 = load i32, i32* @L2_FHDR_STATUS_UDP_DATAGRAM, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %280
  %288 = load i32, i32* %19, align 4
  %289 = load i32, i32* @L2_FHDR_ERRORS_TCP_XSUM, align 4
  %290 = load i32, i32* @L2_FHDR_ERRORS_UDP_XSUM, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %288, %291
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = call i64 @likely(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %287
  %298 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %299 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %300 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %297, %287
  br label %302

302:                                              ; preds = %301, %280, %269
  %303 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %304 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %303, i32 0, i32 4
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @NETIF_F_RXHASH, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %302
  %312 = load i32, i32* %19, align 4
  %313 = load i32, i32* @L2_FHDR_STATUS_USE_RXHASH, align 4
  %314 = and i32 %312, %313
  %315 = load i32, i32* @L2_FHDR_STATUS_USE_RXHASH, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %311
  %318 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %319 = load %struct.l2_fhdr*, %struct.l2_fhdr** %14, align 8
  %320 = getelementptr inbounds %struct.l2_fhdr, %struct.l2_fhdr* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %323 = call i32 @skb_set_hash(%struct.sk_buff* %318, i32 %321, i32 %322)
  br label %324

324:                                              ; preds = %317, %311, %302
  %325 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %326 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %327 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %328 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %327, i32 0, i32 3
  %329 = load %struct.bnx2_napi*, %struct.bnx2_napi** %328, align 8
  %330 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %329, i64 0
  %331 = ptrtoint %struct.bnx2_napi* %326 to i64
  %332 = ptrtoint %struct.bnx2_napi* %330 to i64
  %333 = sub i64 %331, %332
  %334 = sdiv exact i64 %333, 56
  %335 = trunc i64 %334 to i32
  %336 = call i32 @skb_record_rx_queue(%struct.sk_buff* %325, i32 %335)
  %337 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %338 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %337, i32 0, i32 0
  %339 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %340 = call i32 @napi_gro_receive(i32* %338, %struct.sk_buff* %339)
  %341 = load i32, i32* %15, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %15, align 4
  br label %343

343:                                              ; preds = %324, %266, %214, %169, %151
  %344 = load i64, i64* %10, align 8
  %345 = call i64 @BNX2_NEXT_RX_BD(i64 %344)
  store i64 %345, i64* %10, align 8
  %346 = load i64, i64* %12, align 8
  %347 = call i64 @BNX2_NEXT_RX_BD(i64 %346)
  store i64 %347, i64* %12, align 8
  %348 = load i32, i32* %15, align 4
  %349 = load i32, i32* %7, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %343
  br label %361

352:                                              ; preds = %343
  %353 = load i64, i64* %10, align 8
  %354 = load i64, i64* %9, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %352
  %357 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %358 = call i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi* %357)
  store i64 %358, i64* %9, align 8
  %359 = call i32 (...) @rmb()
  br label %360

360:                                              ; preds = %356, %352
  br label %43

361:                                              ; preds = %351, %43
  %362 = load i64, i64* %10, align 8
  %363 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %364 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %363, i32 0, i32 0
  store i64 %362, i64* %364, align 8
  %365 = load i64, i64* %12, align 8
  %366 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %367 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  %368 = load i32, i32* %16, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %361
  %371 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %372 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %373 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %372, i32 0, i32 6
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %376 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %375, i32 0, i32 2
  %377 = load i64, i64* %376, align 8
  %378 = call i32 @BNX2_WR16(%struct.bnx2* %371, i32 %374, i64 %377)
  br label %379

379:                                              ; preds = %370, %361
  %380 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %381 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %382 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = load i64, i64* %12, align 8
  %385 = call i32 @BNX2_WR16(%struct.bnx2* %380, i32 %383, i64 %384)
  %386 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %387 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %388 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 4
  %390 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %8, align 8
  %391 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @BNX2_WR(%struct.bnx2* %386, i32 %389, i32 %392)
  %394 = load i32, i32* %15, align 4
  store i32 %394, i32* %4, align 4
  br label %395

395:                                              ; preds = %379, %31
  %396 = load i32, i32* %4, align 4
  ret i32 %396
}

declare dso_local i64 @bnx2_get_hw_rx_cons(%struct.bnx2_napi*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @BNX2_RX_RING_IDX(i64) #1

declare dso_local %struct.l2_fhdr* @get_l2_fhdr(i32*) #1

declare dso_local i32 @prefetch(%struct.l2_fhdr*) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_bd*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i64 @BNX2_NEXT_RX_BD(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnx2_reuse_rx_data(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i64, i64) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @bnx2_rx_skb(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BNX2_WR16(%struct.bnx2*, i32, i64) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
