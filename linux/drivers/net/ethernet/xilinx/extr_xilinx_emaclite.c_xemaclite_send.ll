; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_emaclite.c_xemaclite_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_local = type { i32, %struct.sk_buff* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xemaclite_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xemaclite_send(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_local*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.net_local* @netdev_priv(%struct.net_device* %10)
  store %struct.net_local* %11, %struct.net_local** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.net_local*, %struct.net_local** %6, align 8
  %17 = getelementptr inbounds %struct.net_local, %struct.net_local* %16, i32 0, i32 0
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.net_local*, %struct.net_local** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @xemaclite_send_data(%struct.net_local* %20, i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_stop_queue(%struct.net_device* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.net_local*, %struct.net_local** %6, align 8
  %33 = getelementptr inbounds %struct.net_local, %struct.net_local* %32, i32 0, i32 1
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @skb_tx_timestamp(%struct.sk_buff* %34)
  %36 = load %struct.net_local*, %struct.net_local** %6, align 8
  %37 = getelementptr inbounds %struct.net_local, %struct.net_local* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %2
  %42 = load %struct.net_local*, %struct.net_local** %6, align 8
  %43 = getelementptr inbounds %struct.net_local, %struct.net_local* %42, i32 0, i32 0
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = call i32 @skb_tx_timestamp(%struct.sk_buff* %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @dev_consume_skb_any(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %28
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @xemaclite_send_data(%struct.net_local*, i32*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
