; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32, %struct.TYPE_6__*, %struct.net_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i64 }

@IXGBE_FLAG_RX_HWTSTAMP_ENABLED = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_VP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IXGBE_RXDADV_STAT_SECP = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_process_skb_fields(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %7, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @ixgbe_update_rsc_stats(%struct.ixgbe_ring* %20, %struct.sk_buff* %21)
  %23 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %24 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @ixgbe_rx_hash(%struct.ixgbe_ring* %23, %union.ixgbe_adv_rx_desc* %24, %struct.sk_buff* %25)
  %27 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %28 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @ixgbe_rx_checksum(%struct.ixgbe_ring* %27, %union.ixgbe_adv_rx_desc* %28, %struct.sk_buff* %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IXGBE_FLAG_RX_HWTSTAMP_ENABLED, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %38 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @ixgbe_ptp_rx_hwtstamp(%struct.ixgbe_ring* %37, %union.ixgbe_adv_rx_desc* %38, %struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %36, %3
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %50 = load i32, i32* @IXGBE_RXD_STAT_VP, align 4
  %51 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %55 = bitcast %union.ixgbe_adv_rx_desc* %54 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @ETH_P_8021Q, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %60, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %48, %41
  %66 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %67 = load i32, i32* @IXGBE_RXDADV_STAT_SECP, align 4
  %68 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %72 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = call i32 @ixgbe_ipsec_rx(%struct.ixgbe_ring* %71, %union.ixgbe_adv_rx_desc* %72, %struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = call i64 @netif_is_ixgbe(%struct.net_device* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %82 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @skb_record_rx_queue(%struct.sk_buff* %80, i32 %83)
  br label %94

85:                                               ; preds = %75
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = call i32 @netdev_priv(%struct.net_device* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ETH_HLEN, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @macvlan_count_rx(i32 %87, i64 %92, i32 1, i32 0)
  br label %94

94:                                               ; preds = %85, %79
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load %struct.net_device*, %struct.net_device** %7, align 8
  %97 = call i32 @eth_type_trans(%struct.sk_buff* %95, %struct.net_device* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret void
}

declare dso_local i32 @ixgbe_update_rsc_stats(%struct.ixgbe_ring*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_hash(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbe_rx_checksum(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_ptp_rx_hwtstamp(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ixgbe_ipsec_rx(%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @netif_is_ixgbe(%struct.net_device*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @macvlan_count_rx(i32, i64, i32, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
