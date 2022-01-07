; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_rings_free_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_rings_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_4__*, %struct.emac_ring_header }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.emac_ring_header = type { i64, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_rx_tx_rings_free_all(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca %struct.emac_ring_header*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 1
  store %struct.emac_ring_header* %6, %struct.emac_ring_header** %3, align 8
  %7 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %14 = call i32 @emac_tx_q_bufs_free(%struct.emac_adapter* %13)
  %15 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %16 = call i32 @emac_rx_q_bufs_free(%struct.emac_adapter* %15)
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %19 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %22 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %25 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dma_free_coherent(%struct.device* %17, i64 %20, i32* %23, i64 %26)
  %28 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %29 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %31 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %33 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.emac_ring_header*, %struct.emac_ring_header** %3, align 8
  %35 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local i32 @emac_tx_q_bufs_free(%struct.emac_adapter*) #1

declare dso_local i32 @emac_rx_q_bufs_free(%struct.emac_adapter*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
