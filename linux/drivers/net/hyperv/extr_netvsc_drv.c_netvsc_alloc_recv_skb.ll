; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_alloc_recv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_alloc_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.netvsc_channel = type { %struct.TYPE_3__, %struct.napi_struct }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32, %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_pkt_8021q_info* }
%struct.ndis_tcp_ip_checksum_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.ndis_pkt_8021q_info = type { i32, i32, i64 }
%struct.napi_struct = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.netvsc_channel*)* @netvsc_alloc_recv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netvsc_alloc_recv_skb(%struct.net_device* %0, %struct.netvsc_channel* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netvsc_channel*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.ndis_pkt_8021q_info*, align 8
  %8 = alloca %struct.ndis_tcp_ip_checksum_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netvsc_channel* %1, %struct.netvsc_channel** %5, align 8
  %12 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %13 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %12, i32 0, i32 1
  store %struct.napi_struct* %13, %struct.napi_struct** %6, align 8
  %14 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %15 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 5
  %17 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %16, align 8
  store %struct.ndis_pkt_8021q_info* %17, %struct.ndis_pkt_8021q_info** %7, align 8
  %18 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %19 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %20, align 8
  store %struct.ndis_tcp_ip_checksum_info* %21, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %22 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %23 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %24 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct* %22, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %3, align 8
  br label %151

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %59, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %36 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %42 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %43 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %51 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @skb_put_data(%struct.sk_buff* %41, i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i64 @eth_type_trans(%struct.sk_buff* %63, %struct.net_device* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %68)
  %70 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %71 = icmp ne %struct.ndis_tcp_ip_checksum_info* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %62
  %73 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %74 = getelementptr inbounds %struct.ndis_tcp_ip_checksum_info, %struct.ndis_tcp_ip_checksum_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %80 = getelementptr inbounds %struct.ndis_tcp_ip_checksum_info, %struct.ndis_tcp_ip_checksum_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETH_P_IP, align 4
  %89 = call i64 @htons(i32 %88)
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i32 @netvsc_comp_ipcsum(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %84, %78, %72, %62
  %95 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %96 = icmp ne %struct.ndis_tcp_ip_checksum_info* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %94
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %106 = getelementptr inbounds %struct.ndis_tcp_ip_checksum_info, %struct.ndis_tcp_ip_checksum_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.ndis_tcp_ip_checksum_info*, %struct.ndis_tcp_ip_checksum_info** %8, align 8
  %112 = getelementptr inbounds %struct.ndis_tcp_ip_checksum_info, %struct.ndis_tcp_ip_checksum_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110, %104
  %117 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %97, %94
  %122 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %7, align 8
  %123 = icmp ne %struct.ndis_pkt_8021q_info* %122, null
  br i1 %123, label %124, label %149

124:                                              ; preds = %121
  %125 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %7, align 8
  %126 = getelementptr inbounds %struct.ndis_pkt_8021q_info, %struct.ndis_pkt_8021q_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %7, align 8
  %129 = getelementptr inbounds %struct.ndis_pkt_8021q_info, %struct.ndis_pkt_8021q_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = or i32 %127, %132
  %134 = load %struct.ndis_pkt_8021q_info*, %struct.ndis_pkt_8021q_info** %7, align 8
  %135 = getelementptr inbounds %struct.ndis_pkt_8021q_info, %struct.ndis_pkt_8021q_info* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = load i32, i32* @VLAN_CFI_MASK, align 4
  br label %141

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = or i32 %133, %142
  store i32 %143, i32* %11, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = load i32, i32* @ETH_P_8021Q, align 4
  %146 = call i64 @htons(i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %144, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %121
  %150 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %150, %struct.sk_buff** %3, align 8
  br label %151

151:                                              ; preds = %149, %30
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %152
}

declare dso_local %struct.sk_buff* @napi_alloc_skb(%struct.napi_struct*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @netvsc_comp_ipcsum(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
