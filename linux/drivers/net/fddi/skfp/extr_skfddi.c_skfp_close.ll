; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_TX_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @skfp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skfp_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.s_smc* @netdev_priv(%struct.net_device* %5)
  store %struct.s_smc* %6, %struct.s_smc** %3, align 8
  %7 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %8 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %7, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %4, align 8
  %9 = call i32 (...) @CLI_FBI()
  %10 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %11 = call i32 @smt_reset_defaults(%struct.s_smc* %10, i32 1)
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = call i32 @card_stop(%struct.s_smc* %12)
  %14 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %15 = call i32 @mac_drv_clear_tx_queue(%struct.s_smc* %14)
  %16 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %17 = call i32 @mac_drv_clear_rx_queue(%struct.s_smc* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.net_device* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @skb_queue_purge(i32* %26)
  %28 = load i32, i32* @MAX_TX_QUEUE_LEN, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret i32 0
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @CLI_FBI(...) #1

declare dso_local i32 @smt_reset_defaults(%struct.s_smc*, i32) #1

declare dso_local i32 @card_stop(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_clear_tx_queue(%struct.s_smc*) #1

declare dso_local i32 @mac_drv_clear_rx_queue(%struct.s_smc*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
