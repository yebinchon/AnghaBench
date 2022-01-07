; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_arp_reduce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_arp_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.vxlan_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.arphdr = type { i64, i64, i64, i64, i32 }
%struct.neighbour = type { i32, i32 }
%struct.vxlan_fdb = type { i32 }
%union.vxlan_addr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ARPHRD_IEEE802 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i64 0, align 8
@VXLAN_F_L3MISS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, i32)* @arp_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_reduce(%struct.net_device* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxlan_dev*, align 8
  %8 = alloca %struct.arphdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.neighbour*, align 8
  %14 = alloca %struct.vxlan_fdb*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %union.vxlan_addr, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %17)
  store %struct.vxlan_dev* %18, %struct.vxlan_dev** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_NOARP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %204

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @arp_hdr_len(%struct.net_device* %28)
  %30 = call i32 @pskb_may_pull(%struct.sk_buff* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %204

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %39)
  store %struct.arphdr* %40, %struct.arphdr** %8, align 8
  %41 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %42 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ARPHRD_ETHER, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %49 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ARPHRD_IEEE802, align 4
  %52 = call i64 @htons(i32 %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %81, label %54

54:                                               ; preds = %47, %38
  %55 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %56 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @ETH_P_IP, align 4
  %59 = call i64 @htons(i32 %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %54
  %62 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %63 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ARPOP_REQUEST, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp ne i64 %64, %66
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %70 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %78 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %68, %61, %54, %47
  br label %204

82:                                               ; preds = %76
  %83 = load %struct.arphdr*, %struct.arphdr** %8, align 8
  %84 = bitcast %struct.arphdr* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 40
  store i32* %85, i32** %9, align 8
  %86 = load i32*, i32** %9, align 8
  store i32* %86, i32** %10, align 8
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @memcpy(i32* %11, i32* %92, i32 4)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %9, align 8
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 %98
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @memcpy(i32* %12, i32* %101, i32 4)
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @ipv4_is_loopback(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %82
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @ipv4_is_multicast(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %82
  br label %204

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = call %struct.neighbour* @neigh_lookup(i32* @arp_tbl, i32* %12, %struct.net_device* %112)
  store %struct.neighbour* %113, %struct.neighbour** %13, align 8
  %114 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %115 = icmp ne %struct.neighbour* %114, null
  br i1 %115, label %116, label %185

116:                                              ; preds = %111
  %117 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %118 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NUD_CONNECTED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %125 = call i32 @neigh_release(%struct.neighbour* %124)
  br label %204

126:                                              ; preds = %116
  %127 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %128 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %129 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev* %127, i32 %130, i32 %131)
  store %struct.vxlan_fdb* %132, %struct.vxlan_fdb** %14, align 8
  %133 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %14, align 8
  %134 = icmp ne %struct.vxlan_fdb* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %14, align 8
  %137 = call %struct.TYPE_10__* @first_remote_rcu(%struct.vxlan_fdb* %136)
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = call i64 @vxlan_addr_any(i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %143 = call i32 @neigh_release(%struct.neighbour* %142)
  br label %204

144:                                              ; preds = %135, %126
  %145 = load i32, i32* @ARPOP_REPLY, align 4
  %146 = load i32, i32* @ETH_P_ARP, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.net_device*, %struct.net_device** %4, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %152 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %10, align 8
  %155 = call %struct.sk_buff* @arp_create(i32 %145, i32 %146, i32 %147, %struct.net_device* %148, i32 %149, i32* %150, i32 %153, i32* %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %15, align 8
  %156 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %157 = call i32 @neigh_release(%struct.neighbour* %156)
  %158 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %159 = icmp eq %struct.sk_buff* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %204

161:                                              ; preds = %144
  %162 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %163 = call i32 @skb_reset_mac_header(%struct.sk_buff* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = call i32 @skb_network_offset(%struct.sk_buff* %165)
  %167 = call i32 @__skb_pull(%struct.sk_buff* %164, i32 %166)
  %168 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @PACKET_HOST, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %175 = call i64 @netif_rx_ni(%struct.sk_buff* %174)
  %176 = load i64, i64* @NET_RX_DROP, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %161
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %178, %161
  br label %203

185:                                              ; preds = %111
  %186 = load %struct.vxlan_dev*, %struct.vxlan_dev** %7, align 8
  %187 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @VXLAN_F_L3MISS, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = bitcast %union.vxlan_addr* %16 to %struct.TYPE_9__*
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* @AF_INET, align 4
  store i32 %196, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %198, align 4
  %200 = load %struct.net_device*, %struct.net_device** %4, align 8
  %201 = call i32 @vxlan_ip_miss(%struct.net_device* %200, %union.vxlan_addr* %16)
  br label %202

202:                                              ; preds = %193, %185
  br label %203

203:                                              ; preds = %202, %184
  br label %204

204:                                              ; preds = %203, %160, %141, %123, %110, %81, %32, %25
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = call i32 @consume_skb(%struct.sk_buff* %205)
  %207 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %207
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @arp_hdr_len(%struct.net_device*) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local %struct.vxlan_fdb* @vxlan_find_mac(%struct.vxlan_dev*, i32, i32) #1

declare dso_local i64 @vxlan_addr_any(i32*) #1

declare dso_local %struct.TYPE_10__* @first_remote_rcu(%struct.vxlan_fdb*) #1

declare dso_local %struct.sk_buff* @arp_create(i32, i32, i32, %struct.net_device*, i32, i32*, i32, i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @vxlan_ip_miss(%struct.net_device*, %union.vxlan_addr*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
