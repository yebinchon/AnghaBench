; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_lro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_rx_buffer = type { i32 }
%struct.netxen_adapter = type { i32, i32, %struct.TYPE_3__, %struct.netxen_recv_context, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.netxen_recv_context = type { %struct.nx_host_rds_ring* }
%struct.nx_host_rds_ring = type { i32, %struct.netxen_rx_buffer* }
%struct.net_device = type { i32 }
%struct.nx_host_sds_ring = type { i32 }
%struct.sk_buff = type { i64, i64, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4
@TCP_TS_HDR_SIZE = common dso_local global i64 0, align 8
@TCP_HDR_SIZE = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@NETXEN_FW_MSS_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netxen_rx_buffer* (%struct.netxen_adapter*, %struct.nx_host_sds_ring*, i32, i32, i32)* @netxen_process_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netxen_rx_buffer* @netxen_process_lro(%struct.netxen_adapter* %0, %struct.nx_host_sds_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.netxen_rx_buffer*, align 8
  %7 = alloca %struct.netxen_adapter*, align 8
  %8 = alloca %struct.nx_host_sds_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.netxen_recv_context*, align 8
  %14 = alloca %struct.netxen_rx_buffer*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.nx_host_rds_ring*, align 8
  %17 = alloca %struct.iphdr*, align 8
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %7, align 8
  store %struct.nx_host_sds_ring* %1, %struct.nx_host_sds_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %29, i32 0, i32 4
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %12, align 8
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 3
  store %struct.netxen_recv_context* %33, %struct.netxen_recv_context** %13, align 8
  store i64 0, i64* %28, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %6, align 8
  br label %206

43:                                               ; preds = %5
  %44 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %13, align 8
  %45 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %44, i32 0, i32 0
  %46 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %46, i64 %48
  store %struct.nx_host_rds_ring* %49, %struct.nx_host_rds_ring** %16, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @netxen_get_lro_sts_refhandle(i32 %50)
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %16, align 8
  %54 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %6, align 8
  br label %206

61:                                               ; preds = %43
  %62 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %16, align 8
  %63 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %62, i32 0, i32 1
  %64 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %63, align 8
  %65 = load i32, i32* %23, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %64, i64 %66
  store %struct.netxen_rx_buffer* %67, %struct.netxen_rx_buffer** %14, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @netxen_get_lro_sts_timestamp(i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @netxen_get_lro_sts_length(i32 %70)
  store i64 %71, i64* %24, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @netxen_get_lro_sts_l2_hdr_offset(i32 %72)
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @netxen_get_lro_sts_l4_hdr_offset(i32 %74)
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @netxen_get_lro_sts_push_flag(i32 %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @netxen_get_lro_sts_seq_number(i32 %78)
  store i32 %79, i32* %27, align 4
  %80 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %81 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %16, align 8
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %84 = call %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter* %80, %struct.nx_host_rds_ring* %81, i32 %82, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %15, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %61
  %88 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %14, align 8
  store %struct.netxen_rx_buffer* %88, %struct.netxen_rx_buffer** %6, align 8
  br label %206

89:                                               ; preds = %61
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* @TCP_TS_HDR_SIZE, align 8
  %96 = add nsw i64 %94, %95
  store i64 %96, i64* %26, align 8
  br label %102

97:                                               ; preds = %89
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @TCP_HDR_SIZE, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %26, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %104 = load i64, i64* %24, align 8
  %105 = load i64, i64* %26, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @skb_put(%struct.sk_buff* %103, i64 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @skb_pull(%struct.sk_buff* %108, i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %112 = load %struct.net_device*, %struct.net_device** %12, align 8
  %113 = call i32 @eth_type_trans(%struct.sk_buff* %111, %struct.net_device* %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* @ETH_P_8021Q, align 8
  %120 = call i32 @htons(i64 %119)
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %102
  %123 = load i64, i64* @VLAN_HLEN, align 8
  store i64 %123, i64* %28, align 8
  br label %124

124:                                              ; preds = %122, %102
  %125 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %28, align 8
  %129 = add nsw i64 %127, %128
  %130 = inttoptr i64 %129 to %struct.iphdr*
  store %struct.iphdr* %130, %struct.iphdr** %17, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %28, align 8
  %135 = add nsw i64 %133, %134
  %136 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %137 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %135, %140
  %142 = inttoptr i64 %141 to %struct.tcphdr*
  store %struct.tcphdr* %142, %struct.tcphdr** %18, align 8
  %143 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 2
  %147 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %148 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 2
  %151 = add nsw i32 %146, %150
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %24, align 8
  %154 = add nsw i64 %152, %153
  store i64 %154, i64* %25, align 8
  %155 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %156 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %155, i32 0, i32 2
  %157 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %158 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %25, align 8
  %161 = call i32 @htons(i64 %160)
  %162 = call i32 @csum_replace2(i32* %156, i32 %159, i32 %161)
  %163 = load i64, i64* %25, align 8
  %164 = call i32 @htons(i64 %163)
  %165 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %166 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %19, align 4
  %168 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %169 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %27, align 4
  %171 = call i32 @htonl(i32 %170)
  %172 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %173 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %25, align 8
  %177 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %178 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NETXEN_FW_MSS_CAP, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %124
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @netxen_get_lro_sts_mss(i32 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %187 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %186)
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %124
  %190 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %191 = call i32 @netif_receive_skb(%struct.sk_buff* %190)
  %192 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %193 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load i64, i64* %25, align 8
  %198 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %199 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %202, %197
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %200, align 8
  %205 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %14, align 8
  store %struct.netxen_rx_buffer* %205, %struct.netxen_rx_buffer** %6, align 8
  br label %206

206:                                              ; preds = %189, %87, %60, %42
  %207 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %6, align 8
  ret %struct.netxen_rx_buffer* %207
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netxen_get_lro_sts_refhandle(i32) #1

declare dso_local i32 @netxen_get_lro_sts_timestamp(i32) #1

declare dso_local i64 @netxen_get_lro_sts_length(i32) #1

declare dso_local i32 @netxen_get_lro_sts_l2_hdr_offset(i32) #1

declare dso_local i32 @netxen_get_lro_sts_l4_hdr_offset(i32) #1

declare dso_local i32 @netxen_get_lro_sts_push_flag(i32) #1

declare dso_local i32 @netxen_get_lro_sts_seq_number(i32) #1

declare dso_local %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter*, %struct.nx_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @csum_replace2(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @netxen_get_lro_sts_mss(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
