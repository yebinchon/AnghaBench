; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.gemini_ethernet_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gemini_ethernet_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %4)
  store %struct.gemini_ethernet_port* %5, %struct.gemini_ethernet_port** %3, align 8
  %6 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %7 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %6, i32 0, i32 1
  %8 = call i32 @hrtimer_cancel(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @gmac_disable_tx_rx(%struct.net_device* %11)
  %13 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %14 = call i32 @gmac_stop_dma(%struct.gemini_ethernet_port* %13)
  %15 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %16 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %15, i32 0, i32 0
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @gmac_enable_irq(%struct.net_device* %18, i32 0)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @gmac_cleanup_rxq(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @gmac_cleanup_txqs(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @phy_stop(i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @free_irq(i32 %30, %struct.net_device* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @gmac_update_hw_stats(%struct.net_device* %33)
  ret i32 0
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @gmac_disable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @gmac_stop_dma(%struct.gemini_ethernet_port*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @gmac_enable_irq(%struct.net_device*, i32) #1

declare dso_local i32 @gmac_cleanup_rxq(%struct.net_device*) #1

declare dso_local i32 @gmac_cleanup_txqs(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @gmac_update_hw_stats(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
