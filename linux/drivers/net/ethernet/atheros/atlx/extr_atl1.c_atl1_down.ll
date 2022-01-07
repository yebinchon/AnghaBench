; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32, i32, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.net_device = type { i32 }

@SPEED_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_down(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %4 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %4, i32 0, i32 8
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %7, i32 0, i32 7
  %9 = call i32 @napi_disable(i32* %8)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %12, i32 0, i32 6
  %14 = call i32 @del_timer_sync(i32* %13)
  %15 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %18 = call i32 @atlx_irq_disable(%struct.atl1_adapter* %17)
  %19 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %19, i32 0, i32 5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.net_device* %24)
  %26 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @pci_disable_msi(%struct.TYPE_6__* %28)
  %30 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %30, i32 0, i32 4
  %32 = call i32 @atl1_reset_hw(i32* %31)
  %33 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @SPEED_0, align 4
  %39 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %41, i32 0, i32 1
  store i32 -1, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netif_carrier_off(%struct.net_device* %43)
  %45 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %46 = call i32 @atl1_clean_tx_ring(%struct.atl1_adapter* %45)
  %47 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %48 = call i32 @atl1_clean_rx_ring(%struct.atl1_adapter* %47)
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @atlx_irq_disable(%struct.atl1_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_6__*) #1

declare dso_local i32 @atl1_reset_hw(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @atl1_clean_tx_ring(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_clean_rx_ring(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
