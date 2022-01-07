; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_lro_add_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_lro_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32, i32, i32*, %struct.cpl_rx_pkt*, %struct.TYPE_10__* }
%struct.cpl_rx_pkt = type { i64, i32, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.sge_fl = type { i64, i32, %struct.TYPE_6__, i64, i32, %struct.rx_sw_desc* }
%struct.TYPE_6__ = type { i64 }
%struct.rx_sw_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, %struct.cpl_rx_pkt*, i32, i32* }
%struct.port_info = type { i64 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }

@dma_addr = common dso_local global i32 0, align 4
@SGE_PG_RSVD = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SGE_PSTAT_RX_CSUM_GOOD = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@SGE_PSTAT_VLANEX = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_qset*, %struct.sge_fl*, i32, i32)* @lro_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_add_page(%struct.adapter* %0, %struct.sge_qset* %1, %struct.sge_fl* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_qset*, align 8
  %8 = alloca %struct.sge_fl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_sw_desc*, align 8
  %12 = alloca %struct.port_info*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.cpl_rx_pkt*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %7, align 8
  store %struct.sge_fl* %2, %struct.sge_fl** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 5
  %20 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %19, align 8
  %21 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %22 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %20, i64 %23
  store %struct.rx_sw_desc* %24, %struct.rx_sw_desc** %11, align 8
  %25 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %26 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call %struct.port_info* @netdev_priv(%struct.TYPE_10__* %27)
  store %struct.port_info* %28, %struct.port_info** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %30 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %5
  %34 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %35 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %34, i32 0, i32 1
  %36 = call %struct.sk_buff* @napi_get_frags(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %13, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %42 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %5
  %44 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %45 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.adapter*, %struct.adapter** %6, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %52 = load i32, i32* @dma_addr, align 4
  %53 = call i32 @dma_unmap_addr(%struct.rx_sw_desc* %51, i32 %52)
  %54 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %55 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SGE_PG_RSVD, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %60 = call i32 @pci_dma_sync_single_for_cpu(i32 %50, i32 %53, i64 %58, i32 %59)
  %61 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %62 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %68 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %96, label %73

73:                                               ; preds = %43
  %74 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %75 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %79 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %77, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.adapter*, %struct.adapter** %6, align 8
  %85 = getelementptr inbounds %struct.adapter, %struct.adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %88 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %92 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %95 = call i32 @pci_unmap_page(i32 %86, i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %73, %43
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = icmp ne %struct.sk_buff* %97, null
  br i1 %98, label %111, label %99

99:                                               ; preds = %96
  %100 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %101 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @put_page(i64 %103)
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %109 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  br label %258

111:                                              ; preds = %96
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %15, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %117 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %165, label %122

122:                                              ; preds = %111
  store i32 34, i32* %17, align 4
  %123 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %124 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %125, align 8
  %127 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %126, i64 2
  %128 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %129 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %128, i32 0, i32 3
  store %struct.cpl_rx_pkt* %127, %struct.cpl_rx_pkt** %129, align 8
  store %struct.cpl_rx_pkt* %127, %struct.cpl_rx_pkt** %14, align 8
  %130 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %131 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %130, i32 0, i32 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %122
  %139 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %140 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %138
  %144 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %145 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @htons(i32 65535)
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %154 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @SGE_PSTAT_RX_CSUM_GOOD, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %164

160:                                              ; preds = %143, %138, %122
  %161 = load i32, i32* @CHECKSUM_NONE, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %149
  br label %169

165:                                              ; preds = %111
  %166 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %167 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %166, i32 0, i32 3
  %168 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %167, align 8
  store %struct.cpl_rx_pkt* %168, %struct.cpl_rx_pkt** %14, align 8
  br label %169

169:                                              ; preds = %165, %164
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %9, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32*, i32** %15, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %15, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %179 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @__skb_frag_set_page(i32* %177, i64 %181)
  %183 = load i32*, i32** %15, align 8
  %184 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %185 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %187, %188
  %190 = call i32 @skb_frag_off_set(i32* %183, i32 %189)
  %191 = load i32*, i32** %15, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @skb_frag_size_set(i32* %191, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %204
  store i32 %208, i32* %206, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %210 = call %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff* %209)
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %169
  br label %258

217:                                              ; preds = %169
  %218 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %219 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %220 = load %struct.adapter*, %struct.adapter** %6, align 8
  %221 = getelementptr inbounds %struct.adapter, %struct.adapter* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load %struct.sge_qset*, %struct.sge_qset** %222, align 8
  %224 = load %struct.port_info*, %struct.port_info** %12, align 8
  %225 = getelementptr inbounds %struct.port_info, %struct.port_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %223, i64 %226
  %228 = ptrtoint %struct.sge_qset* %219 to i64
  %229 = ptrtoint %struct.sge_qset* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 32
  %232 = trunc i64 %231 to i32
  %233 = call i32 @skb_record_rx_queue(%struct.sk_buff* %218, i32 %232)
  %234 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %235 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %217
  %239 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %240 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @SGE_PSTAT_VLANEX, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %247 = load i32, i32* @ETH_P_8021Q, align 4
  %248 = call i64 @htons(i32 %247)
  %249 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %250 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @ntohs(i32 %251)
  %253 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %246, i64 %248, i32 %252)
  br label %254

254:                                              ; preds = %238, %217
  %255 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %256 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %255, i32 0, i32 1
  %257 = call i32 @napi_gro_frags(i32* %256)
  br label %258

258:                                              ; preds = %254, %216, %110
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.TYPE_10__*) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.rx_sw_desc*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local %struct.TYPE_9__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__skb_frag_set_page(i32*, i64) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @napi_gro_frags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
