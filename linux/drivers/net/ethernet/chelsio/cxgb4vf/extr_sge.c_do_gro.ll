; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_do_gro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_do_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_eth_rxq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.adapter* }
%struct.adapter = type { %struct.sge }
%struct.sge = type { i64 }
%struct.pkt_gl = type { i64 }
%struct.cpl_rx_pkt = type { i32, i64 }
%struct.port_info = type { i32 }
%struct.sk_buff = type { i32, i32, i64, i32, i64 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@GRO_HELD = common dso_local global i32 0, align 4
@GRO_MERGED = common dso_local global i32 0, align 4
@GRO_MERGED_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_eth_rxq*, %struct.pkt_gl*, %struct.cpl_rx_pkt*)* @do_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_gro(%struct.sge_eth_rxq* %0, %struct.pkt_gl* %1, %struct.cpl_rx_pkt* %2) #0 {
  %4 = alloca %struct.sge_eth_rxq*, align 8
  %5 = alloca %struct.pkt_gl*, align 8
  %6 = alloca %struct.cpl_rx_pkt*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.sge_eth_rxq* %0, %struct.sge_eth_rxq** %4, align 8
  store %struct.pkt_gl* %1, %struct.pkt_gl** %5, align 8
  store %struct.cpl_rx_pkt* %2, %struct.cpl_rx_pkt** %6, align 8
  %12 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %13 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.sge* %17, %struct.sge** %8, align 8
  %18 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %19 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call %struct.sk_buff* @napi_get_frags(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %30 = call i32 @t4vf_pktgl_free(%struct.pkt_gl* %29)
  %31 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %32 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %142

36:                                               ; preds = %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %39 = load %struct.sge*, %struct.sge** %8, align 8
  %40 = getelementptr inbounds %struct.sge, %struct.sge* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @copy_frags(%struct.sk_buff* %37, %struct.pkt_gl* %38, i64 %41)
  %43 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %44 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sge*, %struct.sge** %8, align 8
  %47 = getelementptr inbounds %struct.sge, %struct.sge* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %71 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @skb_record_rx_queue(%struct.sk_buff* %69, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.port_info* @netdev_priv(i32 %77)
  store %struct.port_info* %78, %struct.port_info** %9, align 8
  %79 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %6, align 8
  %80 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %36
  %84 = load %struct.port_info*, %struct.port_info** %9, align 8
  %85 = getelementptr inbounds %struct.port_info, %struct.port_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %83
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = load i32, i32* @ETH_P_8021Q, align 4
  %91 = call i32 @cpu_to_be16(i32 %90)
  %92 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %6, align 8
  %93 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @be16_to_cpu(i32 %94)
  %96 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %89, i32 %91, i32 %95)
  %97 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %98 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %88, %83, %36
  %103 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %104 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @napi_gro_frags(i32* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @GRO_HELD, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %112 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %131

116:                                              ; preds = %102
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @GRO_MERGED, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @GRO_MERGED_FREE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116
  %125 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %126 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %120
  br label %131

131:                                              ; preds = %130, %110
  %132 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %133 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %138 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %131, %28
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @t4vf_pktgl_free(%struct.pkt_gl*) #1

declare dso_local i32 @copy_frags(%struct.sk_buff*, %struct.pkt_gl*, i64) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @napi_gro_frags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
