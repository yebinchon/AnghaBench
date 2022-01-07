; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_rx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_rx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.ice_32b_rx_flex_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ice_32b_rx_flex_desc_nic = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@ICE_RXDID_FLEX_NIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_ring*, %union.ice_32b_rx_flex_desc*, %struct.sk_buff*, i32)* @ice_rx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_rx_hash(%struct.ice_ring* %0, %union.ice_32b_rx_flex_desc* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.ice_ring*, align 8
  %6 = alloca %union.ice_32b_rx_flex_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_32b_rx_flex_desc_nic*, align 8
  %10 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %5, align 8
  store %union.ice_32b_rx_flex_desc* %1, %union.ice_32b_rx_flex_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %12 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NETIF_F_RXHASH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %40

20:                                               ; preds = %4
  %21 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %6, align 8
  %22 = bitcast %union.ice_32b_rx_flex_desc* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICE_RXDID_FLEX_NIC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %40

28:                                               ; preds = %20
  %29 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %6, align 8
  %30 = bitcast %union.ice_32b_rx_flex_desc* %29 to %struct.ice_32b_rx_flex_desc_nic*
  store %struct.ice_32b_rx_flex_desc_nic* %30, %struct.ice_32b_rx_flex_desc_nic** %9, align 8
  %31 = load %struct.ice_32b_rx_flex_desc_nic*, %struct.ice_32b_rx_flex_desc_nic** %9, align 8
  %32 = getelementptr inbounds %struct.ice_32b_rx_flex_desc_nic, %struct.ice_32b_rx_flex_desc_nic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ice_ptype_to_htype(i32 %37)
  %39 = call i32 @skb_set_hash(%struct.sk_buff* %35, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %28, %27, %19
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ice_ptype_to_htype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
