; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ionic_desc_info = type { i32 }
%struct.ionic_cq_info = type { %struct.ionic_rxq_comp* }
%struct.ionic_rxq_comp = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ionic_qcq = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.ionic_rx_stats = type { i32, i32, i32, i32, i32 }

@IONIC_LIF_QUEUE_RESET = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_PKT_TYPE_MASK = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_CSUM_F_CALC = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_CSUM_F_TCP_BAD = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_CSUM_F_UDP_BAD = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_CSUM_F_IP_BAD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IONIC_RXQ_COMP_CSUM_F_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)* @ionic_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_rx_clean(%struct.ionic_queue* %0, %struct.ionic_desc_info* %1, %struct.ionic_cq_info* %2, i8* %3) #0 {
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca %struct.ionic_desc_info*, align 8
  %7 = alloca %struct.ionic_cq_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ionic_rxq_comp*, align 8
  %10 = alloca %struct.ionic_qcq*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ionic_rx_stats*, align 8
  %13 = alloca %struct.net_device*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store %struct.ionic_desc_info* %1, %struct.ionic_desc_info** %6, align 8
  store %struct.ionic_cq_info* %2, %struct.ionic_cq_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %7, align 8
  %15 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %14, i32 0, i32 0
  %16 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %15, align 8
  store %struct.ionic_rxq_comp* %16, %struct.ionic_rxq_comp** %9, align 8
  %17 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %18 = call %struct.ionic_qcq* @q_to_qcq(%struct.ionic_queue* %17)
  store %struct.ionic_qcq* %18, %struct.ionic_qcq** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.sk_buff*
  store %struct.sk_buff* %20, %struct.sk_buff** %11, align 8
  %21 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %22 = call %struct.ionic_rx_stats* @q_to_rx_stats(%struct.ionic_queue* %21)
  store %struct.ionic_rx_stats* %22, %struct.ionic_rx_stats** %12, align 8
  %23 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %24 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %13, align 8
  %28 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %29 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %34 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call i32 @ionic_rx_recycle(%struct.ionic_queue* %33, %struct.ionic_desc_info* %34, %struct.sk_buff* %35)
  br label %205

37:                                               ; preds = %4
  %38 = load i32, i32* @IONIC_LIF_QUEUE_RESET, align 4
  %39 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %40 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @test_bit(i32 %38, i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %49 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = call i32 @ionic_rx_recycle(%struct.ionic_queue* %48, %struct.ionic_desc_info* %49, %struct.sk_buff* %50)
  br label %205

52:                                               ; preds = %37
  %53 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %12, align 8
  %54 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %58 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le16_to_cpu(i32 %59)
  %61 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %12, align 8
  %62 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %68 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %69 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %7, align 8
  %70 = call i32 @ionic_rx_copybreak(%struct.ionic_queue* %67, %struct.ionic_desc_info* %68, %struct.ionic_cq_info* %69, %struct.sk_buff** %11)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %73 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @le16_to_cpu(i32 %74)
  %76 = call i32 @skb_put(%struct.sk_buff* %71, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load %struct.net_device*, %struct.net_device** %13, align 8
  %79 = call i32 @eth_type_trans(%struct.sk_buff* %77, %struct.net_device* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %84 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @skb_record_rx_queue(%struct.sk_buff* %82, i32 %85)
  %87 = load %struct.net_device*, %struct.net_device** %13, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NETIF_F_RXHASH, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %52
  %94 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %95 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IONIC_RXQ_COMP_PKT_TYPE_MASK, align 4
  %98 = and i32 %96, %97
  switch i32 %98, label %115 [
    i32 133, label %99
    i32 130, label %99
    i32 132, label %107
    i32 129, label %107
    i32 131, label %107
    i32 128, label %107
  ]

99:                                               ; preds = %93, %93
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %102 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @le32_to_cpu(i32 %103)
  %105 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %106 = call i32 @skb_set_hash(%struct.sk_buff* %100, i32 %104, i32 %105)
  br label %115

107:                                              ; preds = %93, %93, %93, %93
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %110 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %114 = call i32 @skb_set_hash(%struct.sk_buff* %108, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %93, %107, %99
  br label %116

116:                                              ; preds = %115, %52
  %117 = load %struct.net_device*, %struct.net_device** %13, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %116
  %124 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %125 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IONIC_RXQ_COMP_CSUM_F_CALC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %135 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @le16_to_cpu(i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %12, align 8
  %141 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %130, %123
  br label %150

145:                                              ; preds = %116
  %146 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %12, align 8
  %147 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %144
  %151 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %152 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @IONIC_RXQ_COMP_CSUM_F_TCP_BAD, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %150
  %158 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %159 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @IONIC_RXQ_COMP_CSUM_F_UDP_BAD, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %166 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IONIC_RXQ_COMP_CSUM_F_IP_BAD, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164, %157, %150
  %172 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %12, align 8
  %173 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %171, %164
  %177 = load %struct.net_device*, %struct.net_device** %13, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %200

183:                                              ; preds = %176
  %184 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %185 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @IONIC_RXQ_COMP_CSUM_F_VLAN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %183
  %191 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %192 = load i32, i32* @ETH_P_8021Q, align 4
  %193 = call i32 @htons(i32 %192)
  %194 = load %struct.ionic_rxq_comp*, %struct.ionic_rxq_comp** %9, align 8
  %195 = getelementptr inbounds %struct.ionic_rxq_comp, %struct.ionic_rxq_comp* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @le16_to_cpu(i32 %196)
  %198 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %191, i32 %193, i64 %197)
  br label %199

199:                                              ; preds = %190, %183
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.ionic_qcq*, %struct.ionic_qcq** %10, align 8
  %202 = getelementptr inbounds %struct.ionic_qcq, %struct.ionic_qcq* %201, i32 0, i32 0
  %203 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %204 = call i32 @napi_gro_receive(i32* %202, %struct.sk_buff* %203)
  br label %205

205:                                              ; preds = %200, %47, %32
  ret void
}

declare dso_local %struct.ionic_qcq* @q_to_qcq(%struct.ionic_queue*) #1

declare dso_local %struct.ionic_rx_stats* @q_to_rx_stats(%struct.ionic_queue*) #1

declare dso_local i32 @ionic_rx_recycle(%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ionic_rx_copybreak(%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, %struct.sk_buff**) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
