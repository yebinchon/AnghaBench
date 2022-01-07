; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_cleanup_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_cleanup_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { %struct.net_device* }
%struct.net_device = type { i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@IXGBE_RXDADV_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbevf_cleanup_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_cleanup_headers(%struct.ixgbevf_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %5, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = call i64 @IS_ERR(%struct.sk_buff* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %39

13:                                               ; preds = %3
  %14 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %15 = load i32, i32* @IXGBE_RXDADV_ERR_FRAME_ERR_MASK, align 4
  %16 = call i32 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %14, i32 %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_RXALL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %30)
  store i32 1, i32* %4, align 4
  br label %39

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i64 @eth_skb_pad(%struct.sk_buff* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %29, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
