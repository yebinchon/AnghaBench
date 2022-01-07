; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_free_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_free_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.atl1_ring_header, %struct.atl1_rrd_ring, %struct.atl1_rfd_ring, %struct.atl1_tpd_ring, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.atl1_ring_header = type { i32, i32, i32 }
%struct.atl1_rrd_ring = type { i64, i32* }
%struct.atl1_rfd_ring = type { i64, i32*, i32* }
%struct.atl1_tpd_ring = type { i64, i32*, i32* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_free_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_free_ring_resources(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.atl1_tpd_ring*, align 8
  %5 = alloca %struct.atl1_rfd_ring*, align 8
  %6 = alloca %struct.atl1_rrd_ring*, align 8
  %7 = alloca %struct.atl1_ring_header*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 6
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 5
  store %struct.atl1_tpd_ring* %12, %struct.atl1_tpd_ring** %4, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 4
  store %struct.atl1_rfd_ring* %14, %struct.atl1_rfd_ring** %5, align 8
  %15 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %15, i32 0, i32 3
  store %struct.atl1_rrd_ring* %16, %struct.atl1_rrd_ring** %6, align 8
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %17, i32 0, i32 2
  store %struct.atl1_ring_header* %18, %struct.atl1_ring_header** %7, align 8
  %19 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %20 = call i32 @atl1_clean_tx_ring(%struct.atl1_adapter* %19)
  %21 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %22 = call i32 @atl1_clean_rx_ring(%struct.atl1_adapter* %21)
  %23 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %24 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %29 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %32 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.atl1_ring_header*, %struct.atl1_ring_header** %7, align 8
  %35 = getelementptr inbounds %struct.atl1_ring_header, %struct.atl1_ring_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_free_consistent(%struct.pci_dev* %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %39 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %41 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %4, align 8
  %43 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %45 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %47 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %5, align 8
  %49 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %51 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %6, align 8
  %53 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  ret void
}

declare dso_local i32 @atl1_clean_tx_ring(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_clean_rx_ring(%struct.atl1_adapter*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
