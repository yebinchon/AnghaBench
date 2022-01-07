; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sge_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_sge.c_sge_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32*, %struct.TYPE_4__, i64, %struct.adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.freelQ = type { i32 }
%struct.sk_buff = type { i64*, i64, i32 }
%struct.cpl_rx_pkt = type { i64, i32, i32, i64 }
%struct.sge_port_stats = type { i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.freelQ*, i32)* @sge_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_rx(%struct.sge* %0, %struct.freelQ* %1, i32 %2) #0 {
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.freelQ*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cpl_rx_pkt*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.sge_port_stats*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.sge* %0, %struct.sge** %4, align 8
  store %struct.freelQ* %1, %struct.freelQ** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sge*, %struct.sge** %4, align 8
  %13 = getelementptr inbounds %struct.sge, %struct.sge* %12, i32 0, i32 3
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %9, align 8
  %15 = load %struct.adapter*, %struct.adapter** %9, align 8
  %16 = load %struct.freelQ*, %struct.freelQ** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = load %struct.sge*, %struct.sge** %4, align 8
  %20 = getelementptr inbounds %struct.sge, %struct.sge* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = call %struct.sk_buff* @get_packet(%struct.adapter* %15, %struct.freelQ* %16, i64 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.sge*, %struct.sge** %4, align 8
  %32 = getelementptr inbounds %struct.sge, %struct.sge* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  br label %144

36:                                               ; preds = %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = bitcast i64* %39 to %struct.cpl_rx_pkt*
  store %struct.cpl_rx_pkt* %40, %struct.cpl_rx_pkt** %8, align 8
  %41 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %42 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.adapter*, %struct.adapter** %9, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  br label %144

52:                                               ; preds = %36
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = call i32 @__skb_pull(%struct.sk_buff* %53, i32 24)
  %55 = load %struct.sge*, %struct.sge** %4, align 8
  %56 = getelementptr inbounds %struct.sge, %struct.sge* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %59 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.sge_port_stats* @this_cpu_ptr(i32 %62)
  store %struct.sge_port_stats* %63, %struct.sge_port_stats** %10, align 8
  %64 = load %struct.adapter*, %struct.adapter** %9, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %68 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.net_device*, %struct.net_device** %71, align 8
  store %struct.net_device* %72, %struct.net_device** %11, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load %struct.net_device*, %struct.net_device** %11, align 8
  %75 = call i64 @eth_type_trans(%struct.sk_buff* %73, %struct.net_device* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %52
  %85 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %86 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 65535
  br i1 %88, label %89, label %120

89:                                               ; preds = %84
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @ETH_P_IP, align 4
  %94 = call i64 @htons(i32 %93)
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 9
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @IPPROTO_TCP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 9
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @IPPROTO_UDP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %104, %96
  %113 = load %struct.sge_port_stats*, %struct.sge_port_stats** %10, align 8
  %114 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %123

120:                                              ; preds = %104, %89, %84, %52
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %125 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.sge_port_stats*, %struct.sge_port_stats** %10, align 8
  %130 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = load i32, i32* @ETH_P_8021Q, align 4
  %135 = call i64 @htons(i32 %134)
  %136 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %137 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ntohs(i32 %138)
  %140 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %133, i64 %135, i32 %139)
  br label %141

141:                                              ; preds = %128, %123
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = call i32 @netif_receive_skb(%struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %141, %49, %30
  ret void
}

declare dso_local %struct.sk_buff* @get_packet(%struct.adapter*, %struct.freelQ*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sge_port_stats* @this_cpu_ptr(i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
