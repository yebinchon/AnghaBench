; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_RXD_STAT_VP = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IXGBE_RXDADV_STAT_SECP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbevf_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_process_skb_fields(%struct.ixgbevf_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %10 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i32 @ixgbevf_rx_hash(%struct.ixgbevf_ring* %9, %union.ixgbe_adv_rx_desc* %10, %struct.sk_buff* %11)
  %13 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %14 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @ixgbevf_rx_checksum(%struct.ixgbevf_ring* %13, %union.ixgbe_adv_rx_desc* %14, %struct.sk_buff* %15)
  %17 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %18 = load i32, i32* @IXGBE_RXD_STAT_VP, align 4
  %19 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %23 = bitcast %union.ixgbe_adv_rx_desc* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64* @netdev_priv(i32 %30)
  store i64* %31, i64** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @VLAN_VID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i64*, i64** %8, align 8
  %36 = call i64 @test_bit(i32 %34, i64* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i32, i32* @ETH_P_8021Q, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %39, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %21
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %47 = load i32, i32* @IXGBE_RXDADV_STAT_SECP, align 4
  %48 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %52 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @ixgbevf_ipsec_rx(%struct.ixgbevf_ring* %51, %union.ixgbe_adv_rx_desc* %52, %struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eth_type_trans(%struct.sk_buff* %56, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @ixgbevf_rx_hash(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_rx_checksum(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64* @netdev_priv(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ixgbevf_ipsec_rx(%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
