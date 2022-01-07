; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@__AT_DOWN = common dso_local global i32 0, align 4
@SPEED_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atl1e_down(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  %4 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %4, i32 0, i32 5
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load i32, i32* @__AT_DOWN, align 4
  %8 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %8, i32 0, i32 4
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %13, i32 0, i32 3
  %15 = call i32 @atl1e_reset_hw(i32* %14)
  %16 = call i32 @msleep(i32 1)
  %17 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %17, i32 0, i32 2
  %19 = call i32 @napi_disable(i32* %18)
  %20 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %21 = call i32 @atl1e_del_timer(%struct.atl1e_adapter* %20)
  %22 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %23 = call i32 @atl1e_irq_disable(%struct.atl1e_adapter* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netif_carrier_off(%struct.net_device* %24)
  %26 = load i32, i32* @SPEED_0, align 4
  %27 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %32 = call i32 @atl1e_clean_tx_ring(%struct.atl1e_adapter* %31)
  %33 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %34 = call i32 @atl1e_clean_rx_ring(%struct.atl1e_adapter* %33)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @atl1e_reset_hw(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @atl1e_del_timer(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_irq_disable(%struct.atl1e_adapter*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @atl1e_clean_tx_ring(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_clean_rx_ring(%struct.atl1e_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
