; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_tso_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_tso_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nx_host_tx_ring = type { i64, i32, %struct.TYPE_5__*, %struct.cmd_desc_type0* }
%struct.TYPE_5__ = type { i32* }
%struct.cmd_desc_type0 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.vlan_ethhdr = type { i64, i8*, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@TX_ETHER_PKT = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@FLAGS_VLAN_TAGGED = common dso_local global i32 0, align 4
@FLAGS_VLAN_OOB = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@TX_TCP_LSO6 = common dso_local global i64 0, align 8
@TX_TCP_LSO = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TX_TCP_PKT = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@TX_UDP_PKT = common dso_local global i64 0, align 8
@TX_TCPV6_PKT = common dso_local global i64 0, align 8
@TX_UDPV6_PKT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nx_host_tx_ring*, %struct.cmd_desc_type0*, %struct.sk_buff*)* @netxen_tso_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_tso_check(%struct.net_device* %0, %struct.nx_host_tx_ring* %1, %struct.cmd_desc_type0* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nx_host_tx_ring*, align 8
  %7 = alloca %struct.cmd_desc_type0*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.cmd_desc_type0*, align 8
  %21 = alloca %struct.vlan_ethhdr*, align 8
  %22 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nx_host_tx_ring* %1, %struct.nx_host_tx_ring** %6, align 8
  store %struct.cmd_desc_type0* %2, %struct.cmd_desc_type0** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %23 = load i64, i64* @TX_ETHER_PKT, align 8
  store i64 %23, i64* %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @ETH_P_8021Q, align 4
  %29 = call i64 @cpu_to_be16(i32 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %35, %struct.vlan_ethhdr** %21, align 8
  %36 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %37 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load i32, i32* @FLAGS_VLAN_TAGGED, align 4
  store i32 %39, i32* %11, align 4
  br label %52

40:                                               ; preds = %4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @FLAGS_VLAN_OOB, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @netxen_set_tx_vlan_tci(%struct.cmd_desc_type0* %48, i32 %49)
  store i32 1, i32* %19, align 4
  br label %51

51:                                               ; preds = %44, %40
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NETIF_F_TSO, align 4
  %57 = load i32, i32* @NETIF_F_TSO6, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %111

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @skb_transport_offset(%struct.sk_buff* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = call i32 @tcp_hdrlen(%struct.sk_buff* %70)
  %72 = add nsw i32 %69, %71
  store i32 %72, i32* %17, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @cpu_to_le16(i64 %76)
  %78 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %79 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %82 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %67
  %86 = load i32, i32* @VLAN_HLEN, align 4
  %87 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %88 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @VLAN_HLEN, align 4
  %92 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %93 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @VLAN_HLEN, align 4
  %95 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %96 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @FLAGS_VLAN_TAGGED, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %85, %67
  %101 = load i64, i64* %10, align 8
  %102 = load i32, i32* @ETH_P_IPV6, align 4
  %103 = call i64 @cpu_to_be16(i32 %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* @TX_TCP_LSO6, align 8
  br label %109

107:                                              ; preds = %100
  %108 = load i64, i64* @TX_TCP_LSO, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  store i64 %110, i64* %9, align 8
  store i32 1, i32* %18, align 4
  br label %166

111:                                              ; preds = %61, %52
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %165

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* @ETH_P_IP, align 4
  %120 = call i64 @cpu_to_be16(i32 %119)
  %121 = icmp eq i64 %118, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %117
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call %struct.TYPE_8__* @ip_hdr(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %22, align 8
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* @IPPROTO_TCP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i64, i64* @TX_TCP_PKT, align 8
  store i64 %131, i64* %9, align 8
  br label %139

132:                                              ; preds = %122
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* @IPPROTO_UDP, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i64, i64* @TX_UDP_PKT, align 8
  store i64 %137, i64* %9, align 8
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %130
  br label %164

140:                                              ; preds = %117
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* @ETH_P_IPV6, align 4
  %143 = call i64 @cpu_to_be16(i32 %142)
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = call %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff* %146)
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %22, align 8
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* @IPPROTO_TCP, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i64, i64* @TX_TCPV6_PKT, align 8
  store i64 %154, i64* %9, align 8
  br label %162

155:                                              ; preds = %145
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* @IPPROTO_UDP, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i64, i64* @TX_UDPV6_PKT, align 8
  store i64 %160, i64* %9, align 8
  br label %161

161:                                              ; preds = %159, %155
  br label %162

162:                                              ; preds = %161, %153
  br label %163

163:                                              ; preds = %162, %140
  br label %164

164:                                              ; preds = %163, %139
  br label %165

165:                                              ; preds = %164, %111
  br label %166

166:                                              ; preds = %165, %109
  %167 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %168 = call i32 @skb_transport_offset(%struct.sk_buff* %167)
  %169 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %170 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %174 = call i32 @skb_network_offset(%struct.sk_buff* %173)
  %175 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %176 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %7, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @netxen_set_tx_flags_opcode(%struct.cmd_desc_type0* %179, i32 %180, i64 %181)
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %166
  br label %285

186:                                              ; preds = %166
  %187 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %188 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 2, i32* %15, align 4
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %240

192:                                              ; preds = %186
  %193 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %194 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %193, i32 0, i32 3
  %195 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %194, align 8
  %196 = load i64, i64* %13, align 8
  %197 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %195, i64 %196
  store %struct.cmd_desc_type0* %197, %struct.cmd_desc_type0** %20, align 8
  %198 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %199 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %198, i32 0, i32 2
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i64, i64* %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32* null, i32** %203, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sub nsw i32 16, %204
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* @VLAN_HLEN, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i32 @min(i32 %205, i32 %208)
  store i32 %209, i32* %16, align 4
  %210 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %20, align 8
  %211 = bitcast %struct.cmd_desc_type0* %210 to i8*
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  %213 = bitcast i8* %212 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %213, %struct.vlan_ethhdr** %21, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %216 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %214, %struct.vlan_ethhdr* %215, i32 12)
  %217 = load i32, i32* @ETH_P_8021Q, align 4
  %218 = call i8* @htons(i32 %217)
  %219 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %220 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %219, i32 0, i32 2
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %12, align 4
  %222 = call i8* @htons(i32 %221)
  %223 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %224 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %226 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %21, align 8
  %227 = bitcast %struct.vlan_ethhdr* %226 to i8*
  %228 = getelementptr inbounds i8, i8* %227, i64 16
  %229 = load i32, i32* %16, align 4
  %230 = sub nsw i32 %229, 16
  %231 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %225, i32 12, i8* %228, i32 %230)
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* @VLAN_HLEN, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %235 = load i64, i64* %13, align 8
  %236 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %237 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @get_next_index(i64 %235, i32 %238)
  store i64 %239, i64* %13, align 8
  br label %240

240:                                              ; preds = %192, %186
  br label %241

241:                                              ; preds = %245, %240
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %17, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %280

245:                                              ; preds = %241
  %246 = load i32, i32* %15, align 4
  %247 = sub nsw i32 16, %246
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %14, align 4
  %250 = sub nsw i32 %248, %249
  %251 = call i32 @min(i32 %247, i32 %250)
  store i32 %251, i32* %16, align 4
  %252 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %253 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %252, i32 0, i32 3
  %254 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %253, align 8
  %255 = load i64, i64* %13, align 8
  %256 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %254, i64 %255
  store %struct.cmd_desc_type0* %256, %struct.cmd_desc_type0** %20, align 8
  %257 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %258 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %257, i32 0, i32 2
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = load i64, i64* %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32* null, i32** %262, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %20, align 8
  %266 = bitcast %struct.cmd_desc_type0* %265 to i8*
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %263, i32 %264, i8* %269, i32 %270)
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %275 = load i64, i64* %13, align 8
  %276 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %277 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = call i64 @get_next_index(i64 %275, i32 %278)
  store i64 %279, i64* %13, align 8
  br label %241

280:                                              ; preds = %241
  %281 = load i64, i64* %13, align 8
  %282 = load %struct.nx_host_tx_ring*, %struct.nx_host_tx_ring** %6, align 8
  %283 = getelementptr inbounds %struct.nx_host_tx_ring, %struct.nx_host_tx_ring* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = call i32 (...) @barrier()
  br label %285

285:                                              ; preds = %280, %185
  ret void
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @netxen_set_tx_vlan_tci(%struct.cmd_desc_type0*, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local %struct.TYPE_8__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @netxen_set_tx_flags_opcode(%struct.cmd_desc_type0*, i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.vlan_ethhdr*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
