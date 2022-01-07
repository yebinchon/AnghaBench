; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.TYPE_2__*, i32, i64, i64, i32, i32, %struct.e1000_hw, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { i32 }

@__IGBVF_DOWN = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@E1000_TXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igbvf_down(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 7
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %10, i32 0, i32 6
  store %struct.e1000_hw* %11, %struct.e1000_hw** %4, align 8
  %12 = load i32, i32* @__IGBVF_DOWN, align 4
  %13 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %13, i32 0, i32 5
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = call i32 @RXDCTL(i32 0)
  %17 = call i32 @er32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = call i32 @RXDCTL(i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = call i32 @ew32(i32 %18, i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netif_carrier_off(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = call i32 @TXDCTL(i32 0)
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = call i32 @TXDCTL(i32 0)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @E1000_TXDCTL_QUEUE_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @ew32(i32 %30, i32 %34)
  %36 = call i32 (...) @e1e_flush()
  %37 = call i32 @msleep(i32 10)
  %38 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @napi_disable(i32* %41)
  %43 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %44 = call i32 @igbvf_irq_disable(%struct.igbvf_adapter* %43)
  %45 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %45, i32 0, i32 4
  %47 = call i32 @del_timer_sync(i32* %46)
  %48 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %49 = call i32 @igbvf_update_stats(%struct.igbvf_adapter* %48)
  %50 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %55 = call i32 @igbvf_reset(%struct.igbvf_adapter* %54)
  %56 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @igbvf_clean_tx_ring(i32 %58)
  %60 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = call i32 @igbvf_clean_rx_ring(%struct.TYPE_2__* %62)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @RXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @igbvf_irq_disable(%struct.igbvf_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @igbvf_update_stats(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_reset(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_clean_tx_ring(i32) #1

declare dso_local i32 @igbvf_clean_rx_ring(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
