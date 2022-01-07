; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_rx_eth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_rx_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32, i32* }
%struct.sge_rspq = type { i64 }
%struct.sk_buff = type { i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.cpl_rx_pkt = type { i64, i64, i32, i64, i32, i64 }
%struct.port_info = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SGE_PSTAT_RX_CSUM_GOOD = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SGE_PSTAT_VLANEX = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_rspq*, %struct.sk_buff*, i32, i32)* @rx_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_eth(%struct.adapter* %0, %struct.sge_rspq* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpl_rx_pkt*, align 8
  %12 = alloca %struct.sge_qset*, align 8
  %13 = alloca %struct.port_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.cpl_rx_pkt*
  store %struct.cpl_rx_pkt* %20, %struct.cpl_rx_pkt** %11, align 8
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %22 = call %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq* %21)
  store %struct.sge_qset* %22, %struct.sge_qset** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 48, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @skb_pull(%struct.sk_buff* %23, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %34 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @eth_type_trans(%struct.sk_buff* %29, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call %struct.port_info* @netdev_priv(%struct.TYPE_6__* %43)
  store %struct.port_info* %44, %struct.port_info** %13, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %5
  %54 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %55 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %60 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @htons(i32 65535)
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %66 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %71 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SGE_PSTAT_RX_CSUM_GOOD, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %83

80:                                               ; preds = %64, %58, %53, %5
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %86 = load %struct.adapter*, %struct.adapter** %6, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.sge_qset*, %struct.sge_qset** %88, align 8
  %90 = load %struct.port_info*, %struct.port_info** %13, align 8
  %91 = getelementptr inbounds %struct.port_info, %struct.port_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %89, i64 %92
  %94 = ptrtoint %struct.sge_qset* %85 to i64
  %95 = ptrtoint %struct.sge_qset* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 16
  %98 = trunc i64 %97 to i32
  %99 = call i32 @skb_record_rx_queue(%struct.sk_buff* %84, i32 %98)
  %100 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %101 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %83
  %105 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %106 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @SGE_PSTAT_VLANEX, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load i32, i32* @ETH_P_8021Q, align 4
  %114 = call i64 @htons(i32 %113)
  %115 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %116 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ntohs(i32 %117)
  %119 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %112, i64 %114, i32 %118)
  br label %120

120:                                              ; preds = %104, %83
  %121 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %122 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %130 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %129, i32 0, i32 0
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = call i32 @napi_gro_receive(i32* %130, %struct.sk_buff* %131)
  br label %147

133:                                              ; preds = %125
  %134 = load %struct.port_info*, %struct.port_info** %13, align 8
  %135 = getelementptr inbounds %struct.port_info, %struct.port_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load %struct.port_info*, %struct.port_info** %13, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = call i32 @cxgb3_process_iscsi_prov_pack(%struct.port_info* %141, %struct.sk_buff* %142)
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = call i32 @netif_receive_skb(%struct.sk_buff* %145)
  br label %147

147:                                              ; preds = %144, %128
  br label %151

148:                                              ; preds = %120
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = call i32 @netif_rx(%struct.sk_buff* %149)
  br label %151

151:                                              ; preds = %148, %147
  ret void
}

declare dso_local %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.TYPE_6__*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cxgb3_process_iscsi_prov_pack(%struct.port_info*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
