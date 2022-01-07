; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i32, %struct.TYPE_4__*, %struct.tx_ring }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tx_ring = type { i32 }

@NUM_TCB = common dso_local global i32 0, align 4
@FMP_ADAPTER_FAIL_SEND_MASK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @et131x_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.et131x_adapter*, align 8
  %7 = alloca %struct.tx_ring*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.et131x_adapter* %9, %struct.et131x_adapter** %6, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 2
  store %struct.tx_ring* %11, %struct.tx_ring** %7, align 8
  %12 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %13 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NUM_TCB, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_queue_stopped(%struct.net_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netif_trans_update(%struct.net_device* %26)
  %28 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %29 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NUM_TCB, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FMP_ADAPTER_FAIL_SEND_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_carrier_ok(%struct.net_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %34
  br label %54

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %49 = call i64 @send_packet(%struct.sk_buff* %47, %struct.et131x_adapter* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %51, %45, %33
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  %57 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %54, %52
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @send_packet(%struct.sk_buff*, %struct.et131x_adapter*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
