; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { %struct.pch_gbe_tx_ring* }
%struct.pch_gbe_tx_ring = type { i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"Return : BUSY  next_to use : 0x%08x  next_to clean : 0x%08x\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @pch_gbe_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca %struct.pch_gbe_tx_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.pch_gbe_adapter* %9, %struct.pch_gbe_adapter** %6, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %11, align 8
  store %struct.pch_gbe_tx_ring* %12, %struct.pch_gbe_tx_ring** %7, align 8
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %14 = call i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i32 @netif_stop_queue(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @netdev_dbg(%struct.net_device* %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %34 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @pch_gbe_tx_queue(%struct.pch_gbe_adapter* %33, %struct.pch_gbe_tx_ring* %34, %struct.sk_buff* %35)
  %37 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @pch_gbe_tx_queue(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
