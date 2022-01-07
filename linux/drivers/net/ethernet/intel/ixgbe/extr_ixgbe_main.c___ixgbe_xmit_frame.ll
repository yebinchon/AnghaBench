; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c___ixgbe_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_ring** }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@__IXGBE_TX_DISABLED = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.ixgbe_ring*)* @__ixgbe_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ixgbe_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ixgbe_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ixgbe_ring*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.ixgbe_ring* %2, %struct.ixgbe_ring** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i64 @skb_put_padto(%struct.sk_buff* %12, i32 17)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %19 = icmp ne %struct.ixgbe_ring* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  br label %30

22:                                               ; preds = %17
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 0
  %25 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %25, i64 %27
  %29 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %28, align 8
  br label %30

30:                                               ; preds = %22, %20
  %31 = phi %struct.ixgbe_ring* [ %21, %20 ], [ %29, %22 ]
  store %struct.ixgbe_ring* %31, %struct.ixgbe_ring** %9, align 8
  %32 = load i32, i32* @__IXGBE_TX_DISABLED, align 4
  %33 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %33, i32 0, i32 0
  %35 = call i32 @test_bit(i32 %32, i32* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %39, i32* %4, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %44 = call i32 @ixgbe_xmit_frame_ring(%struct.sk_buff* %41, %struct.ixgbe_adapter* %42, %struct.ixgbe_ring* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %38, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_xmit_frame_ring(%struct.sk_buff*, %struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
