; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.bnx2 = type { i64, %struct.TYPE_3__*, %struct.bnx2_napi* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_tx_ring_info }
%struct.bnx2_tx_ring_info = type { i64, %struct.bnx2_sw_tx_bd*, i32, i32, i32, %struct.bnx2_tx_bd* }
%struct.bnx2_sw_tx_bd = type { i32, %struct.sk_buff*, i32 }
%struct.bnx2_tx_bd = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_BD_FLAGS_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@TX_BD_FLAGS_VLAN_TAG = common dso_local global i32 0, align 4
@TX_BD_FLAGS_SW_LSO = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@TX_BD_FLAGS_SW_FLAGS = common dso_local global i32 0, align 4
@TX_BD_FLAGS_TCP6_OFF0_MSK = common dso_local global i32 0, align 4
@TX_BD_FLAGS_TCP6_OFF0_SHL = common dso_local global i32 0, align 4
@TX_BD_FLAGS_TCP6_OFF4_SHL = common dso_local global i32 0, align 4
@TX_BD_TCP6_OFF2_SHL = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@TX_BD_FLAGS_START = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_BD_FLAGS_END = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bnx2_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bnx2_tx_bd*, align 8
  %9 = alloca %struct.bnx2_sw_tx_bd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bnx2_napi*, align 8
  %18 = alloca %struct.bnx2_tx_ring_info*, align 8
  %19 = alloca %struct.netdev_queue*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.iphdr*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.bnx2* @netdev_priv(%struct.net_device* %24)
  store %struct.bnx2* %25, %struct.bnx2** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 2
  %30 = load %struct.bnx2_napi*, %struct.bnx2_napi** %29, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %30, i64 %32
  store %struct.bnx2_napi* %33, %struct.bnx2_napi** %17, align 8
  %34 = load %struct.bnx2_napi*, %struct.bnx2_napi** %17, align 8
  %35 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %34, i32 0, i32 0
  store %struct.bnx2_tx_ring_info* %35, %struct.bnx2_tx_ring_info** %18, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %36, i32 %37)
  store %struct.netdev_queue* %38, %struct.netdev_queue** %19, align 8
  %39 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %40 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %41 = call i64 @bnx2_tx_avail(%struct.bnx2* %39, %struct.bnx2_tx_ring_info* %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = icmp slt i64 %41, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %2
  %52 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %53 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %52)
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %56, i32* %3, align 4
  br label %445

57:                                               ; preds = %2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @skb_headlen(%struct.sk_buff* %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %61 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i64 @BNX2_TX_RING_IDX(i64 %63)
  store i64 %64, i64* %15, align 8
  store i32 0, i32* %11, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @TX_BD_FLAGS_TCP_UDP_CKSUM, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* @TX_BD_FLAGS_VLAN_TAG, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %80)
  %82 = shl i32 %81, 16
  %83 = or i32 %79, %82
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %78, %74
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %175

92:                                               ; preds = %86
  %93 = load i32, i32* @TX_BD_FLAGS_SW_LSO, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i32 @tcp_optlen(%struct.sk_buff* %96)
  store i32 %97, i32* %20, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %92
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @skb_transport_offset(%struct.sk_buff* %106)
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, 4
  %110 = load i32, i32* @ETH_HLEN, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %22, align 4
  %114 = load i32, i32* %20, align 4
  %115 = ashr i32 %114, 2
  %116 = shl i32 %115, 8
  %117 = load i32, i32* @TX_BD_FLAGS_SW_FLAGS, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i64 @likely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %105
  %127 = load i32, i32* @TX_BD_FLAGS_TCP6_OFF0_MSK, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %151

131:                                              ; preds = %105
  %132 = load i32, i32* %22, align 4
  %133 = ashr i32 %132, 3
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %22, align 4
  %135 = and i32 %134, 3
  %136 = load i32, i32* @TX_BD_FLAGS_TCP6_OFF0_SHL, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %22, align 4
  %139 = and i32 %138, 16
  %140 = load i32, i32* @TX_BD_FLAGS_TCP6_OFF4_SHL, align 4
  %141 = shl i32 %139, %140
  %142 = or i32 %137, %141
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %22, align 4
  %146 = and i32 %145, 12
  %147 = load i32, i32* @TX_BD_TCP6_OFF2_SHL, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %131, %126
  br label %174

152:                                              ; preds = %92
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %153)
  store %struct.iphdr* %154, %struct.iphdr** %21, align 8
  %155 = load i32, i32* %20, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %160, 5
  br i1 %161, label %162, label %173

162:                                              ; preds = %157, %152
  %163 = load %struct.iphdr*, %struct.iphdr** %21, align 8
  %164 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 5
  %167 = load i32, i32* %20, align 4
  %168 = ashr i32 %167, 2
  %169 = add nsw i32 %166, %168
  %170 = shl i32 %169, 8
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %162, %157
  br label %174

174:                                              ; preds = %173, %151
  br label %176

175:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %176

176:                                              ; preds = %175, %174
  %177 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %178 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %177, i32 0, i32 1
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %186 = call i64 @dma_map_single(i32* %180, i32 %183, i32 %184, i32 %185)
  store i64 %186, i64* %7, align 8
  %187 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %188 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %187, i32 0, i32 1
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i64, i64* %7, align 8
  %192 = call i64 @dma_mapping_error(i32* %190, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %176
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %195)
  %197 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %197, i32* %3, align 4
  br label %445

198:                                              ; preds = %176
  %199 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %200 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %199, i32 0, i32 1
  %201 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %200, align 8
  %202 = load i64, i64* %15, align 8
  %203 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %201, i64 %202
  store %struct.bnx2_sw_tx_bd* %203, %struct.bnx2_sw_tx_bd** %9, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %205 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %206 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %205, i32 0, i32 1
  store %struct.sk_buff* %204, %struct.sk_buff** %206, align 8
  %207 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %208 = load i64, i64* %7, align 8
  %209 = load i64, i64* %7, align 8
  %210 = call i32 @dma_unmap_addr_set(%struct.bnx2_sw_tx_bd* %207, i64 %208, i64 %209)
  %211 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %212 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %211, i32 0, i32 5
  %213 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %212, align 8
  %214 = load i64, i64* %15, align 8
  %215 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %213, i64 %214
  store %struct.bnx2_tx_bd* %215, %struct.bnx2_tx_bd** %8, align 8
  %216 = load i64, i64* %7, align 8
  %217 = trunc i64 %216 to i32
  %218 = ashr i32 %217, 32
  %219 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %220 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  %221 = load i64, i64* %7, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %224 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %13, align 4
  %227 = shl i32 %226, 16
  %228 = or i32 %225, %227
  %229 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %230 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @TX_BD_FLAGS_START, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %235 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 4
  %236 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %237 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %236)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %243 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %245 = call i32 @skb_is_gso(%struct.sk_buff* %244)
  %246 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %247 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %314, %198
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %12, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %317

252:                                              ; preds = %248
  %253 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %254 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %253)
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32* %259, i32** %23, align 8
  %260 = load i64, i64* %14, align 8
  %261 = call i64 @BNX2_NEXT_TX_BD(i64 %260)
  store i64 %261, i64* %14, align 8
  %262 = load i64, i64* %14, align 8
  %263 = call i64 @BNX2_TX_RING_IDX(i64 %262)
  store i64 %263, i64* %15, align 8
  %264 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %265 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %264, i32 0, i32 5
  %266 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %265, align 8
  %267 = load i64, i64* %15, align 8
  %268 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %266, i64 %267
  store %struct.bnx2_tx_bd* %268, %struct.bnx2_tx_bd** %8, align 8
  %269 = load i32*, i32** %23, align 8
  %270 = call i32 @skb_frag_size(i32* %269)
  store i32 %270, i32* %10, align 4
  %271 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %272 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %271, i32 0, i32 1
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 0
  %275 = load i32*, i32** %23, align 8
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @DMA_TO_DEVICE, align 4
  %278 = call i64 @skb_frag_dma_map(i32* %274, i32* %275, i32 0, i32 %276, i32 %277)
  store i64 %278, i64* %7, align 8
  %279 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %280 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %279, i32 0, i32 1
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i64, i64* %7, align 8
  %284 = call i64 @dma_mapping_error(i32* %282, i64 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %252
  br label %382

287:                                              ; preds = %252
  %288 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %289 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %288, i32 0, i32 1
  %290 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %289, align 8
  %291 = load i64, i64* %15, align 8
  %292 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %290, i64 %291
  %293 = load i64, i64* %7, align 8
  %294 = load i64, i64* %7, align 8
  %295 = call i32 @dma_unmap_addr_set(%struct.bnx2_sw_tx_bd* %292, i64 %293, i64 %294)
  %296 = load i64, i64* %7, align 8
  %297 = trunc i64 %296 to i32
  %298 = ashr i32 %297, 32
  %299 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %300 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 4
  %301 = load i64, i64* %7, align 8
  %302 = trunc i64 %301 to i32
  %303 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %304 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %13, align 4
  %307 = shl i32 %306, 16
  %308 = or i32 %305, %307
  %309 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %310 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %313 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %287
  %315 = load i32, i32* %16, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %16, align 4
  br label %248

317:                                              ; preds = %248
  %318 = load i32, i32* @TX_BD_FLAGS_END, align 4
  %319 = load %struct.bnx2_tx_bd*, %struct.bnx2_tx_bd** %8, align 8
  %320 = getelementptr inbounds %struct.bnx2_tx_bd, %struct.bnx2_tx_bd* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = call i32 (...) @wmb()
  %324 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %325 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %326 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %324, i64 %327)
  %329 = load i64, i64* %14, align 8
  %330 = call i64 @BNX2_NEXT_TX_BD(i64 %329)
  store i64 %330, i64* %14, align 8
  %331 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %332 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %335 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %333
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %335, align 8
  %340 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %341 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %342 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = load i64, i64* %14, align 8
  %345 = call i32 @BNX2_WR16(%struct.bnx2* %340, i32 %343, i64 %344)
  %346 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %347 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %348 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %351 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @BNX2_WR(%struct.bnx2* %346, i32 %349, i32 %352)
  %354 = load i64, i64* %14, align 8
  %355 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %356 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %355, i32 0, i32 0
  store i64 %354, i64* %356, align 8
  %357 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %358 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %359 = call i64 @bnx2_tx_avail(%struct.bnx2* %357, %struct.bnx2_tx_ring_info* %358)
  %360 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %361 = icmp sle i64 %359, %360
  %362 = zext i1 %361 to i32
  %363 = call i64 @unlikely(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %380

365:                                              ; preds = %317
  %366 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %367 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %366)
  %368 = call i32 (...) @smp_mb()
  %369 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %370 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %371 = call i64 @bnx2_tx_avail(%struct.bnx2* %369, %struct.bnx2_tx_ring_info* %370)
  %372 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %373 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp sgt i64 %371, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %365
  %377 = load %struct.netdev_queue*, %struct.netdev_queue** %19, align 8
  %378 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %377)
  br label %379

379:                                              ; preds = %376, %365
  br label %380

380:                                              ; preds = %379, %317
  %381 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %381, i32* %3, align 4
  br label %445

382:                                              ; preds = %286
  %383 = load i32, i32* %16, align 4
  store i32 %383, i32* %12, align 4
  %384 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %385 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  store i64 %386, i64* %14, align 8
  %387 = load i64, i64* %14, align 8
  %388 = call i64 @BNX2_TX_RING_IDX(i64 %387)
  store i64 %388, i64* %15, align 8
  %389 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %390 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %389, i32 0, i32 1
  %391 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %390, align 8
  %392 = load i64, i64* %15, align 8
  %393 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %391, i64 %392
  store %struct.bnx2_sw_tx_bd* %393, %struct.bnx2_sw_tx_bd** %9, align 8
  %394 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %395 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %394, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %395, align 8
  %396 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %397 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %396, i32 0, i32 1
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  %400 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %401 = load i64, i64* %7, align 8
  %402 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %400, i64 %401)
  %403 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %404 = call i32 @skb_headlen(%struct.sk_buff* %403)
  %405 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %406 = call i32 @dma_unmap_single(i32* %399, i32 %402, i32 %404, i32 %405)
  store i32 0, i32* %16, align 4
  br label %407

407:                                              ; preds = %438, %382
  %408 = load i32, i32* %16, align 4
  %409 = load i32, i32* %12, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %441

411:                                              ; preds = %407
  %412 = load i64, i64* %14, align 8
  %413 = call i64 @BNX2_NEXT_TX_BD(i64 %412)
  store i64 %413, i64* %14, align 8
  %414 = load i64, i64* %14, align 8
  %415 = call i64 @BNX2_TX_RING_IDX(i64 %414)
  store i64 %415, i64* %15, align 8
  %416 = load %struct.bnx2_tx_ring_info*, %struct.bnx2_tx_ring_info** %18, align 8
  %417 = getelementptr inbounds %struct.bnx2_tx_ring_info, %struct.bnx2_tx_ring_info* %416, i32 0, i32 1
  %418 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %417, align 8
  %419 = load i64, i64* %15, align 8
  %420 = getelementptr inbounds %struct.bnx2_sw_tx_bd, %struct.bnx2_sw_tx_bd* %418, i64 %419
  store %struct.bnx2_sw_tx_bd* %420, %struct.bnx2_sw_tx_bd** %9, align 8
  %421 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %422 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %421, i32 0, i32 1
  %423 = load %struct.TYPE_3__*, %struct.TYPE_3__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 0
  %425 = load %struct.bnx2_sw_tx_bd*, %struct.bnx2_sw_tx_bd** %9, align 8
  %426 = load i64, i64* %7, align 8
  %427 = call i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd* %425, i64 %426)
  %428 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %429 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %428)
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 3
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %16, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = call i32 @skb_frag_size(i32* %434)
  %436 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %437 = call i32 @dma_unmap_page(i32* %424, i32 %427, i32 %435, i32 %436)
  br label %438

438:                                              ; preds = %411
  %439 = load i32, i32* %16, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %16, align 4
  br label %407

441:                                              ; preds = %407
  %442 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %443 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %442)
  %444 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %444, i32* %3, align 4
  br label %445

445:                                              ; preds = %441, %380, %194, %51
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bnx2_tx_avail(%struct.bnx2*, %struct.bnx2_tx_ring_info*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_TX_RING_IDX(i64) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @tcp_optlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.bnx2_sw_tx_bd*, i64, i64) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @BNX2_NEXT_TX_BD(i64) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i64) #1

declare dso_local i32 @BNX2_WR16(%struct.bnx2*, i32, i64) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bnx2_sw_tx_bd*, i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
