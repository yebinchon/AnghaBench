; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pci_dev*, %struct.pch_gbe_rx_ring*, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.pci_dev = type { i64 }
%struct.pch_gbe_rx_ring = type { i32*, i64, i64 }
%struct.net_device = type { i32 }

@pci_channel_io_normal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_down(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pch_gbe_rx_ring*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 7
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 1
  %14 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %13, align 8
  store %struct.pch_gbe_rx_ring* %14, %struct.pch_gbe_rx_ring** %5, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 6
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %18, i32 0, i32 5
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %22 = call i32 @pch_gbe_irq_disable(%struct.pch_gbe_adapter* %21)
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %24 = call i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter* %23)
  %25 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %25, i32 0, i32 4
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_carrier_off(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netif_stop_queue(%struct.net_device* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %1
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @pci_channel_io_normal, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %49 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %48)
  br label %50

50:                                               ; preds = %47, %41, %1
  %51 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %52 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pch_gbe_clean_tx_ring(%struct.pch_gbe_adapter* %51, i32 %54)
  %56 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %57 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %57, i32 0, i32 1
  %59 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %58, align 8
  %60 = call i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter* %56, %struct.pch_gbe_rx_ring* %59)
  %61 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %61, i32 0, i32 0
  %63 = load %struct.pci_dev*, %struct.pci_dev** %62, align 8
  %64 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pci_free_consistent(%struct.pci_dev* %63, i64 %66, i32* %69, i64 %72)
  %74 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %79 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pch_gbe_irq_disable(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_clean_tx_ring(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
