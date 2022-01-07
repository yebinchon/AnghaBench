; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { %struct.igbvf_ring*, i32 }
%struct.igbvf_ring = type { i32 }

@__IGBVF_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @igbvf_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.igbvf_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igbvf_adapter* %9, %struct.igbvf_adapter** %6, align 8
  %10 = load i32, i32* @__IGBVF_DOWN, align 4
  %11 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %16)
  %18 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %20, i32 0, i32 0
  %22 = load %struct.igbvf_ring*, %struct.igbvf_ring** %21, align 8
  %23 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %22, i64 0
  store %struct.igbvf_ring* %23, %struct.igbvf_ring** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %27 = call i32 @igbvf_xmit_frame_ring_adv(%struct.sk_buff* %24, %struct.net_device* %25, %struct.igbvf_ring* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @igbvf_xmit_frame_ring_adv(%struct.sk_buff*, %struct.net_device*, %struct.igbvf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
