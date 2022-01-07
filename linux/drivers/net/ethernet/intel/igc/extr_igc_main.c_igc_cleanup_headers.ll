; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_cleanup_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_cleanup_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { %struct.net_device* }
%struct.net_device = type { i32 }
%union.igc_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@IGC_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igc_ring*, %union.igc_adv_rx_desc*, %struct.sk_buff*)* @igc_cleanup_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_cleanup_headers(%struct.igc_ring* %0, %union.igc_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_ring*, align 8
  %6 = alloca %union.igc_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.igc_ring* %0, %struct.igc_ring** %5, align 8
  store %union.igc_adv_rx_desc* %1, %union.igc_adv_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %union.igc_adv_rx_desc*, %union.igc_adv_rx_desc** %6, align 8
  %10 = load i32, i32* @IGC_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %11 = call i32 @igc_test_staterr(%union.igc_adv_rx_desc* %9, i32 %10)
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %16 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NETIF_F_RXALL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %25)
  store i32 1, i32* %4, align 4
  br label %34

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i64 @eth_skb_pad(%struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @igc_test_staterr(%union.igc_adv_rx_desc*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
