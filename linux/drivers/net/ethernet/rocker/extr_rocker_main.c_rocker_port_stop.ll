; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rocker_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rocker_port_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rocker_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %4)
  store %struct.rocker_port* %5, %struct.rocker_port** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %9 = call i32 @rocker_port_set_enable(%struct.rocker_port* %8, i32 0)
  %10 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %11 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %10, i32 0, i32 1
  %12 = call i32 @napi_disable(i32* %11)
  %13 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %14 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %13, i32 0, i32 0
  %15 = call i32 @napi_disable(i32* %14)
  %16 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %17 = call i32 @rocker_world_port_stop(%struct.rocker_port* %16)
  %18 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %19 = call i32 @rocker_msix_rx_vector(%struct.rocker_port* %18)
  %20 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.rocker_port* %20)
  %22 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %23 = call i32 @rocker_msix_tx_vector(%struct.rocker_port* %22)
  %24 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.rocker_port* %24)
  %26 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %27 = call i32 @rocker_port_dma_rings_fini(%struct.rocker_port* %26)
  ret i32 0
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @rocker_port_set_enable(%struct.rocker_port*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @rocker_world_port_stop(%struct.rocker_port*) #1

declare dso_local i32 @free_irq(i32, %struct.rocker_port*) #1

declare dso_local i32 @rocker_msix_rx_vector(%struct.rocker_port*) #1

declare dso_local i32 @rocker_msix_tx_vector(%struct.rocker_port*) #1

declare dso_local i32 @rocker_port_dma_rings_fini(%struct.rocker_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
