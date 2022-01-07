; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mcp251x_priv = type { i32, i32, %struct.sk_buff*, i64, %struct.spi_device* }
%struct.spi_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hard_xmit called while tx busy\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mcp251x_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp251x_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mcp251x_priv*, align 8
  %7 = alloca %struct.spi_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.mcp251x_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mcp251x_priv* %9, %struct.mcp251x_priv** %6, align 8
  %10 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %10, i32 0, i32 4
  %12 = load %struct.spi_device*, %struct.spi_device** %11, align 8
  store %struct.spi_device* %12, %struct.spi_device** %7, align 8
  %13 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %13, i32 0, i32 2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %2
  %23 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call i32 @dev_warn(i32* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @can_dropped_invalid_skb(%struct.net_device* %28, %struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netif_stop_queue(%struct.net_device* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %38, i32 0, i32 2
  store %struct.sk_buff* %37, %struct.sk_buff** %39, align 8
  %40 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mcp251x_priv*, %struct.mcp251x_priv** %6, align 8
  %44 = getelementptr inbounds %struct.mcp251x_priv, %struct.mcp251x_priv* %43, i32 0, i32 0
  %45 = call i32 @queue_work(i32 %42, i32* %44)
  %46 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %34, %32, %22
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.mcp251x_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
