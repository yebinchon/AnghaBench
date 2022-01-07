; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { %struct.fec_enet_priv_tx_q** }
%struct.fec_enet_priv_tx_q = type { i32 }
%struct.netdev_queue = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fec_enet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call zeroext i16 @skb_get_queue_mapping(%struct.sk_buff* %14)
  store i16 %15, i16* %8, align 2
  %16 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %17 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %16, i32 0, i32 0
  %18 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %17, align 8
  %19 = load i16, i16* %8, align 2
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %18, i64 %20
  %22 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %21, align 8
  store %struct.fec_enet_priv_tx_q* %22, %struct.fec_enet_priv_tx_q** %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i16, i16* %8, align 2
  %25 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %23, i16 zeroext %24)
  store %struct.netdev_queue* %25, %struct.netdev_queue** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @skb_is_gso(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @fec_enet_txq_submit_tso(%struct.fec_enet_priv_tx_q* %30, %struct.sk_buff* %31, %struct.net_device* %32)
  store i32 %33, i32* %11, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @fec_enet_txq_submit_skb(%struct.fec_enet_priv_tx_q* %35, %struct.sk_buff* %36, %struct.net_device* %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %39
  %45 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %46 = call i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %9, align 8
  %49 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %54 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %42
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local zeroext i16 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i16 zeroext) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @fec_enet_txq_submit_tso(%struct.fec_enet_priv_tx_q*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @fec_enet_txq_submit_skb(%struct.fec_enet_priv_tx_q*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @fec_enet_get_free_txdesc_num(%struct.fec_enet_priv_tx_q*) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
