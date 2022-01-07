; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.w5100_priv = type { i32, i32, %struct.sk_buff*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @w5100_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_start_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.w5100_priv*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.w5100_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.w5100_priv* %7, %struct.w5100_priv** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @netif_stop_queue(%struct.net_device* %8)
  %10 = load %struct.w5100_priv*, %struct.w5100_priv** %5, align 8
  %11 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.w5100_priv*, %struct.w5100_priv** %5, align 8
  %18 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %17, i32 0, i32 2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = call i32 @WARN_ON(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = load %struct.w5100_priv*, %struct.w5100_priv** %5, align 8
  %23 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %22, i32 0, i32 2
  store %struct.sk_buff* %21, %struct.sk_buff** %23, align 8
  %24 = load %struct.w5100_priv*, %struct.w5100_priv** %5, align 8
  %25 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.w5100_priv*, %struct.w5100_priv** %5, align 8
  %28 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %27, i32 0, i32 0
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @w5100_tx_skb(%struct.net_device* %31, %struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %30, %16
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %35
}

declare dso_local %struct.w5100_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @WARN_ON(%struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @w5100_tx_skb(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
