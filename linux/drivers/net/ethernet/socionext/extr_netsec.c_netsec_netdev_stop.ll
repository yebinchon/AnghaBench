; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netsec_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NETSEC_REG_INTEN_CLR = common dso_local global i32 0, align 4
@NETSEC_RING_TX = common dso_local global i32 0, align 4
@NETSEC_RING_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netsec_netdev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_netdev_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.netsec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.netsec_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.netsec_priv* %6, %struct.netsec_priv** %4, align 8
  %7 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %8 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @netif_stop_queue(%struct.TYPE_2__* %9)
  %11 = call i32 (...) @dma_wmb()
  %12 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %13 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %12, i32 0, i32 2
  %14 = call i32 @napi_disable(i32* %13)
  %15 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %16 = load i32, i32* @NETSEC_REG_INTEN_CLR, align 4
  %17 = call i32 @netsec_write(%struct.netsec_priv* %15, i32 %16, i32 -1)
  %18 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %19 = call i32 @netsec_stop_gmac(%struct.netsec_priv* %18)
  %20 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %21 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.netsec_priv* %25)
  %27 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %28 = load i32, i32* @NETSEC_RING_TX, align 4
  %29 = call i32 @netsec_uninit_pkt_dring(%struct.netsec_priv* %27, i32 %28)
  %30 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %31 = load i32, i32* @NETSEC_RING_RX, align 4
  %32 = call i32 @netsec_uninit_pkt_dring(%struct.netsec_priv* %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_stop(i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phy_disconnect(i32 %39)
  %41 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %42 = call i32 @netsec_reset_hardware(%struct.netsec_priv* %41, i32 0)
  store i32 %42, i32* %3, align 4
  %43 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %44 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_put_sync(i32 %45)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.netsec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_2__*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netsec_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_stop_gmac(%struct.netsec_priv*) #1

declare dso_local i32 @free_irq(i32, %struct.netsec_priv*) #1

declare dso_local i32 @netsec_uninit_pkt_dring(%struct.netsec_priv*, i32) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @netsec_reset_hardware(%struct.netsec_priv*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
