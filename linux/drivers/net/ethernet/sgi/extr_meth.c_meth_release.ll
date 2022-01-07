; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.meth_private = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Stopping queue\0A\00", align 1
@METH_DMA_TX_EN = common dso_local global i32 0, align 4
@METH_DMA_TX_INT_EN = common dso_local global i32 0, align 4
@METH_DMA_RX_EN = common dso_local global i32 0, align 4
@METH_DMA_RX_INT_EN = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @meth_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_release(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.meth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.meth_private* @netdev_priv(%struct.net_device* %4)
  store %struct.meth_private* %5, %struct.meth_private** %3, align 8
  %6 = call i32 @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_stop_queue(%struct.net_device* %7)
  %9 = load i32, i32* @METH_DMA_TX_EN, align 4
  %10 = load i32, i32* @METH_DMA_TX_INT_EN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @METH_DMA_RX_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @METH_DMA_RX_INT_EN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %18 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %22 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.net_device* %30)
  %32 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %33 = call i32 @meth_free_tx_ring(%struct.meth_private* %32)
  %34 = load %struct.meth_private*, %struct.meth_private** %3, align 8
  %35 = call i32 @meth_free_rx_ring(%struct.meth_private* %34)
  ret i32 0
}

declare dso_local %struct.meth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @meth_free_tx_ring(%struct.meth_private*) #1

declare dso_local i32 @meth_free_rx_ring(%struct.meth_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
