; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_enable_rx_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_enable_rx_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"enable_rx_tx\0A\00", align 1
@MAC_RX_ENABLE = common dso_local global i32 0, align 4
@MAC_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @au1000_enable_rx_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1000_enable_rx_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %5)
  store %struct.au1000_private* %6, %struct.au1000_private** %3, align 8
  %7 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %8 = load i32, i32* @hw, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_dbg(%struct.au1000_private* %7, i32 %8, %struct.net_device* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %12 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @readl(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MAC_RX_ENABLE, align 4
  %17 = load i32, i32* @MAC_TX_ENABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %23 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @writel(i32 %21, i32* %25)
  %27 = call i32 (...) @wmb()
  %28 = call i32 @mdelay(i32 10)
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.au1000_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
