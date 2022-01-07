; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_t1_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i64, i64, i32 }
%struct.net_device = type { i64, i64, i64, %struct.adapter* }
%struct.adapter = type { %struct.sge* }
%struct.sge = type { %struct.sk_buff**, i32* }
%struct.sge_port_stats = type { i32, i32, i32, i32 }
%struct.cpl_tx_pkt = type { i32, i32, i64, i32, i8*, i32 }
%struct.cpl_tx_pkt_lso = type { i32, i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@ETH_P_CPL5 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CPL_ETH_II = common dso_local global i32 0, align 4
@CPL_ETH_II_VLAN = common dso_local global i32 0, align 4
@CPL_TX_PKT_LSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"packet size %d hdr %d mtu%d\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to do udp checksum\0A\00", align 1
@ETH_P_ARP = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@CPL_TX_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge*, align 8
  %8 = alloca %struct.sge_port_stats*, align 8
  %9 = alloca %struct.cpl_tx_pkt*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cpl_tx_pkt_lso*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 3
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.sge*, %struct.sge** %18, align 8
  store %struct.sge* %19, %struct.sge** %7, align 8
  %20 = load %struct.sge*, %struct.sge** %7, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sge_port_stats* @this_cpu_ptr(i32 %27)
  store %struct.sge_port_stats* %28, %struct.sge_port_stats** %8, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @ETH_P_CPL5, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = icmp eq i8* %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %285

37:                                               ; preds = %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i64 @skb_headroom(%struct.sk_buff* %38)
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETH_HLEN, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp slt i64 %39, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %37
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %50, i32 48)
  store %struct.sk_buff* %51, %struct.sk_buff** %4, align 8
  %52 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %53 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  %61 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %308

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %63
  %70 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %71 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i64 @skb_network_offset(%struct.sk_buff* %74)
  %76 = load i64, i64* @ETH_HLEN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @CPL_ETH_II, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @CPL_ETH_II_VLAN, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %12, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = call %struct.cpl_tx_pkt_lso* @skb_push(%struct.sk_buff* %84, i32 48)
  store %struct.cpl_tx_pkt_lso* %85, %struct.cpl_tx_pkt_lso** %13, align 8
  %86 = load i32, i32* @CPL_TX_PKT_LSO, align 4
  %87 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %88 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %90 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %92 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %93)
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %98 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %99)
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %104 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @MK_ETH_TYPE_MSS(i32 %105, i64 %109)
  %111 = call i8* @htons(i32 %110)
  %112 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %113 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %116, 48
  %118 = call i32 @htonl(i64 %117)
  %119 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %120 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %122 = bitcast %struct.cpl_tx_pkt_lso* %121 to %struct.cpl_tx_pkt*
  store %struct.cpl_tx_pkt* %122, %struct.cpl_tx_pkt** %9, align 8
  br label %260

123:                                              ; preds = %63
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ETH_HLEN, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @eth_hdr_len(i32 %138)
  %140 = add nsw i64 %135, %139
  %141 = icmp sgt i64 %132, %140
  br label %142

142:                                              ; preds = %129, %123
  %143 = phi i1 [ true, %123 ], [ %141, %129 ]
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @eth_hdr_len(i32 %154)
  %156 = load %struct.net_device*, %struct.net_device** %5, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %151, i64 %155, i64 %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %160)
  %162 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %162, i32* %3, align 4
  br label %308

163:                                              ; preds = %142
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %163
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %170)
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IPPROTO_UDP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = call i32 @skb_checksum_help(%struct.sk_buff* %177)
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.net_device*, %struct.net_device** %5, align 8
  %183 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %182, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %184)
  %186 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %186, i32* %3, align 4
  br label %308

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %169, %163
  %189 = load %struct.adapter*, %struct.adapter** %6, align 8
  %190 = getelementptr inbounds %struct.adapter, %struct.adapter* %189, i32 0, i32 0
  %191 = load %struct.sge*, %struct.sge** %190, align 8
  %192 = getelementptr inbounds %struct.sge, %struct.sge* %191, i32 0, i32 0
  %193 = load %struct.sk_buff**, %struct.sk_buff*** %192, align 8
  %194 = load %struct.net_device*, %struct.net_device** %5, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %193, i64 %196
  %198 = load %struct.sk_buff*, %struct.sk_buff** %197, align 8
  %199 = icmp ne %struct.sk_buff* %198, null
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %233

204:                                              ; preds = %188
  %205 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load i32, i32* @ETH_P_ARP, align 4
  %209 = call i8* @htons(i32 %208)
  %210 = icmp eq i8* %207, %209
  br i1 %210, label %211, label %232

211:                                              ; preds = %204
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call %struct.TYPE_8__* @arp_hdr(%struct.sk_buff* %212)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @ARPOP_REQUEST, align 4
  %217 = call i8* @htons(i32 %216)
  %218 = icmp eq i8* %215, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %211
  %220 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %221 = load %struct.adapter*, %struct.adapter** %6, align 8
  %222 = getelementptr inbounds %struct.adapter, %struct.adapter* %221, i32 0, i32 0
  %223 = load %struct.sge*, %struct.sge** %222, align 8
  %224 = getelementptr inbounds %struct.sge, %struct.sge* %223, i32 0, i32 0
  %225 = load %struct.sk_buff**, %struct.sk_buff*** %224, align 8
  %226 = load %struct.net_device*, %struct.net_device** %5, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %225, i64 %228
  store %struct.sk_buff* %220, %struct.sk_buff** %229, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %231 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %230)
  store %struct.sk_buff* %231, %struct.sk_buff** %4, align 8
  br label %232

232:                                              ; preds = %219, %211, %204
  br label %233

233:                                              ; preds = %232, %188
  %234 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %235 = call %struct.cpl_tx_pkt* @__skb_push(%struct.sk_buff* %234, i32 40)
  store %struct.cpl_tx_pkt* %235, %struct.cpl_tx_pkt** %9, align 8
  %236 = load i32, i32* @CPL_TX_PKT, align 4
  %237 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %238 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %237, i32 0, i32 5
  store i32 %236, i32* %238, align 8
  %239 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %240 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 0, i32 1
  %248 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %249 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %257 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %233, %82
  %261 = load %struct.net_device*, %struct.net_device** %5, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %265 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %264, i32 0, i32 2
  store i64 %263, i64* %265, align 8
  %266 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %267 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %260
  %270 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %271 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %270, i32 0, i32 3
  store i32 1, i32* %271, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %273 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %272)
  %274 = call i8* @htons(i32 %273)
  %275 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %276 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %275, i32 0, i32 4
  store i8* %274, i8** %276, align 8
  %277 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %278 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  br label %284

281:                                              ; preds = %260
  %282 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %283 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %282, i32 0, i32 3
  store i32 0, i32* %283, align 8
  br label %284

284:                                              ; preds = %281, %269
  br label %285

285:                                              ; preds = %284, %36
  %286 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %287 = load %struct.adapter*, %struct.adapter** %6, align 8
  %288 = load %struct.net_device*, %struct.net_device** %5, align 8
  %289 = call i32 @t1_sge_tx(%struct.sk_buff* %286, %struct.adapter* %287, i32 0, %struct.net_device* %288)
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @NETDEV_TX_OK, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %285
  %294 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %296 = icmp ne %struct.sk_buff* %294, %295
  br label %297

297:                                              ; preds = %293, %285
  %298 = phi i1 [ false, %285 ], [ %296, %293 ]
  %299 = zext i1 %298 to i32
  %300 = call i64 @unlikely(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %297
  %303 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %304 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %303)
  %305 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %305, i32* %11, align 4
  br label %306

306:                                              ; preds = %302, %297
  %307 = load i32, i32* %11, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %306, %181, %147, %60
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local %struct.sge_port_stats* @this_cpu_ptr(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.cpl_tx_pkt_lso* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @MK_ETH_TYPE_MSS(i32, i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @eth_hdr_len(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @arp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local %struct.cpl_tx_pkt* @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @t1_sge_tx(%struct.sk_buff*, %struct.adapter*, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
