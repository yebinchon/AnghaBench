; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.net_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.netfront_info = type { %struct.netfront_queue*, i32 }
%struct.netfront_queue = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.netfront_stats = type { i32, i32, i64 }
%struct.xen_netif_tx_request = type { i32, i64 }
%struct.page = type { i32 }
%struct.xen_netif_extra_info = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i64 }

@XEN_NETIF_MAX_TX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"xennet: skb->len = %u, too big for wire format\0A\00", align 1
@MAX_XEN_SKB_FRAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"xennet: skb rides the rocket: %d slots, %d bytes\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@XEN_NETTXF_csum_blank = common dso_local global i32 0, align 4
@XEN_NETTXF_data_validated = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@XEN_NETTXF_extra_info = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@XEN_NETIF_GSO_TYPE_TCPV6 = common dso_local global i32 0, align 4
@XEN_NETIF_GSO_TYPE_TCPV4 = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xennet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netfront_info*, align 8
  %7 = alloca %struct.netfront_stats*, align 8
  %8 = alloca %struct.xen_netif_tx_request*, align 8
  %9 = alloca %struct.xen_netif_tx_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.netfront_queue*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.xen_netif_extra_info*, align 8
  %22 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %23)
  store %struct.netfront_info* %24, %struct.netfront_info** %6, align 8
  %25 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %26 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.netfront_stats* @this_cpu_ptr(i32 %27)
  store %struct.netfront_stats* %28, %struct.netfront_stats** %7, align 8
  store %struct.netfront_queue* null, %struct.netfront_queue** %17, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ult i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %348

35:                                               ; preds = %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %36)
  store i64 %37, i64* %19, align 8
  %38 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  %39 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %38, i32 0, i32 0
  %40 = load %struct.netfront_queue*, %struct.netfront_queue** %39, align 8
  %41 = load i64, i64* %19, align 8
  %42 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %40, i64 %41
  store %struct.netfront_queue* %42, %struct.netfront_queue** %17, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @XEN_NETIF_MAX_TX_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %35
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @net_alert_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %348

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @xennet_count_skb_slots(%struct.sk_buff* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MAX_XEN_SKB_FRAGS, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp sgt i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %56
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i64 @skb_linearize(%struct.sk_buff* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %348

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.page* @virt_to_page(i32 %80)
  store %struct.page* %81, %struct.page** %13, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @offset_in_page(i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub i32 %86, %87
  %89 = load i32, i32* @ETH_HLEN, align 4
  %90 = icmp ult i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %77
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %95, i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %20, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %348

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @dev_consume_skb_any(%struct.sk_buff* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %104, %struct.sk_buff** %4, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.page* @virt_to_page(i32 %107)
  store %struct.page* %108, %struct.page** %13, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @offset_in_page(i32 %111)
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %101, %77
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @skb_headlen(%struct.sk_buff* %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %117 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %116, i32 0, i32 0
  %118 = load i64, i64* %16, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i32 @netif_carrier_ok(%struct.net_device* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %113
  %124 = load i32, i32* %12, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @xennet_can_sg(%struct.net_device* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126, %123
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = call i32 @netif_skb_features(%struct.sk_buff* %132)
  %134 = call i64 @netif_needs_gso(%struct.sk_buff* %131, i32 %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %130, %126, %113
  %137 = phi i1 [ true, %126 ], [ true, %113 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %143 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %142, i32 0, i32 0
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  br label %348

146:                                              ; preds = %136
  %147 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = load %struct.page*, %struct.page** %13, align 8
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call %struct.xen_netif_tx_request* @xennet_make_first_txreq(%struct.netfront_queue* %147, %struct.sk_buff* %148, %struct.page* %149, i32 %150, i32 %151)
  store %struct.xen_netif_tx_request* %152, %struct.xen_netif_tx_request** %8, align 8
  store %struct.xen_netif_tx_request* %152, %struct.xen_netif_tx_request** %9, align 8
  %153 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %154 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = zext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %146
  %164 = load %struct.page*, %struct.page** %13, align 8
  %165 = getelementptr inbounds %struct.page, %struct.page* %164, i32 1
  store %struct.page* %165, %struct.page** %13, align 8
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %163, %146
  %167 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %168 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = zext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %15, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %166
  %180 = load i32, i32* @XEN_NETTXF_csum_blank, align 4
  %181 = load i32, i32* @XEN_NETTXF_data_validated, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %184 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %200

187:                                              ; preds = %166
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = load i32, i32* @XEN_NETTXF_data_validated, align 4
  %195 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %196 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %187
  br label %200

200:                                              ; preds = %199, %179
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %201)
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %259

206:                                              ; preds = %200
  %207 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %208 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %207, i32 0, i32 3
  %209 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %210 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = call i64 @RING_GET_REQUEST(%struct.TYPE_11__* %208, i32 %212)
  %215 = inttoptr i64 %214 to %struct.xen_netif_extra_info*
  store %struct.xen_netif_extra_info* %215, %struct.xen_netif_extra_info** %21, align 8
  %216 = load i32, i32* @XEN_NETTXF_extra_info, align 4
  %217 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %218 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %221)
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %226 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 3
  store i64 %224, i64* %228, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %229)
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %206
  %237 = load i32, i32* @XEN_NETIF_GSO_TYPE_TCPV6, align 4
  br label %240

238:                                              ; preds = %206
  %239 = load i32, i32* @XEN_NETIF_GSO_TYPE_TCPV4, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %243 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  store i32 %241, i32* %245, align 8
  %246 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %247 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  store i64 0, i64* %249, align 8
  %250 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %251 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %255 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %256 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 8
  %257 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %21, align 8
  %258 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %257, i32 0, i32 0
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %240, %200
  %260 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %261 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = load %struct.page*, %struct.page** %13, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %15, align 4
  %266 = call %struct.xen_netif_tx_request* @xennet_make_txreqs(%struct.netfront_queue* %260, %struct.xen_netif_tx_request* %261, %struct.sk_buff* %262, %struct.page* %263, i32 %264, i32 %265)
  store %struct.xen_netif_tx_request* %266, %struct.xen_netif_tx_request** %8, align 8
  store i32 0, i32* %10, align 4
  br label %267

267:                                              ; preds = %292, %259
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %270 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %269)
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ult i32 %268, %272
  br i1 %273, label %274, label %295

274:                                              ; preds = %267
  %275 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %276 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %275)
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32* %281, i32** %22, align 8
  %282 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %283 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %8, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = load i32*, i32** %22, align 8
  %286 = call %struct.page* @skb_frag_page(i32* %285)
  %287 = load i32*, i32** %22, align 8
  %288 = call i32 @skb_frag_off(i32* %287)
  %289 = load i32*, i32** %22, align 8
  %290 = call i32 @skb_frag_size(i32* %289)
  %291 = call %struct.xen_netif_tx_request* @xennet_make_txreqs(%struct.netfront_queue* %282, %struct.xen_netif_tx_request* %283, %struct.sk_buff* %284, %struct.page* %286, i32 %288, i32 %290)
  store %struct.xen_netif_tx_request* %291, %struct.xen_netif_tx_request** %8, align 8
  br label %292

292:                                              ; preds = %274
  %293 = load i32, i32* %10, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %10, align 4
  br label %267

295:                                              ; preds = %267
  %296 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %297 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.xen_netif_tx_request*, %struct.xen_netif_tx_request** %9, align 8
  %300 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %299, i32 0, i32 1
  store i64 %298, i64* %300, align 8
  %301 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %302 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %301, i32 0, i32 3
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_11__* %302, i32 %303)
  %305 = load i32, i32* %11, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %295
  %308 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %309 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @notify_remote_via_irq(i32 %310)
  br label %312

312:                                              ; preds = %307, %295
  %313 = load %struct.netfront_stats*, %struct.netfront_stats** %7, align 8
  %314 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %313, i32 0, i32 0
  %315 = call i32 @u64_stats_update_begin(i32* %314)
  %316 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %317 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.netfront_stats*, %struct.netfront_stats** %7, align 8
  %320 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, %318
  store i64 %322, i64* %320, align 8
  %323 = load %struct.netfront_stats*, %struct.netfront_stats** %7, align 8
  %324 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 4
  %327 = load %struct.netfront_stats*, %struct.netfront_stats** %7, align 8
  %328 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %327, i32 0, i32 0
  %329 = call i32 @u64_stats_update_end(i32* %328)
  %330 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %331 = call i32 @xennet_tx_buf_gc(%struct.netfront_queue* %330)
  %332 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %333 = call i32 @netfront_tx_slot_available(%struct.netfront_queue* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %342, label %335

335:                                              ; preds = %312
  %336 = load %struct.net_device*, %struct.net_device** %5, align 8
  %337 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %338 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @netdev_get_tx_queue(%struct.net_device* %336, i32 %339)
  %341 = call i32 @netif_tx_stop_queue(i32 %340)
  br label %342

342:                                              ; preds = %335, %312
  %343 = load %struct.netfront_queue*, %struct.netfront_queue** %17, align 8
  %344 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %343, i32 0, i32 0
  %345 = load i64, i64* %16, align 8
  %346 = call i32 @spin_unlock_irqrestore(i32* %344, i64 %345)
  %347 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %347, i32* %3, align 4
  br label %357

348:                                              ; preds = %141, %100, %75, %51, %34
  %349 = load %struct.net_device*, %struct.net_device** %5, align 8
  %350 = getelementptr inbounds %struct.net_device, %struct.net_device* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 4
  %354 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %355 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %354)
  %356 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %356, i32* %3, align 4
  br label %357

357:                                              ; preds = %348, %342
  %358 = load i32, i32* %3, align 4
  ret i32 %358
}

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netfront_stats* @this_cpu_ptr(i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_alert_ratelimited(i8*, i64) #1

declare dso_local i32 @xennet_count_skb_slots(%struct.sk_buff*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32, i64) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @xennet_can_sg(%struct.net_device*) #1

declare dso_local i64 @netif_needs_gso(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.xen_netif_tx_request* @xennet_make_first_txreq(%struct.netfront_queue*, %struct.sk_buff*, %struct.page*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @RING_GET_REQUEST(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.xen_netif_tx_request* @xennet_make_txreqs(%struct.netfront_queue*, %struct.xen_netif_tx_request*, %struct.sk_buff*, %struct.page*, i32, i32) #1

declare dso_local %struct.page* @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @xennet_tx_buf_gc(%struct.netfront_queue*) #1

declare dso_local i32 @netfront_tx_slot_available(%struct.netfront_queue*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
