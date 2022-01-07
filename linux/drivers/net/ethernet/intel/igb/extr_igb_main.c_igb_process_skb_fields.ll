; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { %struct.net_device*, i32, i32, i32 }
%struct.net_device = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@E1000_RXDADV_STAT_TS = common dso_local global i32 0, align 4
@E1000_RXDADV_STAT_TSIP = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_LB = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_process_skb_fields(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %10 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %7, align 8
  %12 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %13 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @igb_rx_hash(%struct.igb_ring* %12, %union.e1000_adv_rx_desc* %13, %struct.sk_buff* %14)
  %16 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %17 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @igb_rx_checksum(%struct.igb_ring* %16, %union.e1000_adv_rx_desc* %17, %struct.sk_buff* %18)
  %20 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %21 = load i32, i32* @E1000_RXDADV_STAT_TS, align 4
  %22 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %26 = load i32, i32* @E1000_RXDADV_STAT_TSIP, align 4
  %27 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %31 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @igb_ptp_rx_rgtstamp(i32 %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %29, %24, %3
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %35
  %43 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %44 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %45 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %49 = load i32, i32* @E1000_RXDEXT_STATERR_LB, align 4
  %50 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i32, i32* @IGB_RING_FLAG_RX_LB_VLAN_BSWAP, align 4
  %54 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %55 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %54, i32 0, i32 2
  %56 = call i64 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %60 = bitcast %union.e1000_adv_rx_desc* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be16_to_cpu(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %72

65:                                               ; preds = %52, %47
  %66 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %67 = bitcast %union.e1000_adv_rx_desc* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32, i32* @ETH_P_8021Q, align 4
  %75 = call i32 @htons(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %73, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %42, %35
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %81 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @skb_record_rx_queue(%struct.sk_buff* %79, i32 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %86 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %85, i32 0, i32 0
  %87 = load %struct.net_device*, %struct.net_device** %86, align 8
  %88 = call i32 @eth_type_trans(%struct.sk_buff* %84, %struct.net_device* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  ret void
}

declare dso_local i32 @igb_rx_hash(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @igb_rx_checksum(%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i32 @igb_ptp_rx_rgtstamp(i32, %struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
