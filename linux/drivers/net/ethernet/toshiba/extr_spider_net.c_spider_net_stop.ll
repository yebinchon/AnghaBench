; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.spider_net_card = type { i32, i32, i32, i32, i32 }

@SPIDER_NET_GDTDMACCNTR = common dso_local global i32 0, align 4
@SPIDER_NET_DMA_TX_FEND_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spider_net_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %4)
  store %struct.spider_net_card* %5, %struct.spider_net_card** %3, align 8
  %6 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %7 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %6, i32 0, i32 4
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 3
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 2
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %20 = call i32 @spider_net_disable_interrupts(%struct.spider_net_card* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.net_device* %24)
  %26 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %27 = load i32, i32* @SPIDER_NET_GDTDMACCNTR, align 4
  %28 = load i32, i32* @SPIDER_NET_DMA_TX_FEND_VALUE, align 4
  %29 = call i32 @spider_net_write_reg(%struct.spider_net_card* %26, i32 %27, i32 %28)
  %30 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %31 = call i32 @spider_net_disable_rxdmac(%struct.spider_net_card* %30)
  %32 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %33 = call i32 @spider_net_release_tx_chain(%struct.spider_net_card* %32, i32 1)
  %34 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %35 = call i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card* %34)
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %37 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %38 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %37, i32 0, i32 1
  %39 = call i32 @spider_net_free_chain(%struct.spider_net_card* %36, i32* %38)
  %40 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %41 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %42 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %41, i32 0, i32 0
  %43 = call i32 @spider_net_free_chain(%struct.spider_net_card* %40, i32* %42)
  ret i32 0
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spider_net_disable_interrupts(%struct.spider_net_card*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_disable_rxdmac(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_release_tx_chain(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_free_rx_chain_contents(%struct.spider_net_card*) #1

declare dso_local i32 @spider_net_free_chain(%struct.spider_net_card*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
