; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.pci_dev*, %struct.atl1_rrd_ring, %struct.atl1_rfd_ring }
%struct.pci_dev = type { i32 }
%struct.atl1_rrd_ring = type { i32, i64 }
%struct.atl1_rfd_ring = type { i32, i64, i32, i64, %struct.atl1_buffer*, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i32*, i64, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_clean_rx_ring(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.atl1_rfd_ring*, align 8
  %4 = alloca %struct.atl1_rrd_ring*, align 8
  %5 = alloca %struct.atl1_buffer*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %9 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %9, i32 0, i32 2
  store %struct.atl1_rfd_ring* %10, %struct.atl1_rfd_ring** %3, align 8
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 1
  store %struct.atl1_rrd_ring* %12, %struct.atl1_rrd_ring** %4, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %58, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %19 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %24 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %23, i32 0, i32 5
  %25 = load %struct.atl1_buffer*, %struct.atl1_buffer** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %25, i64 %27
  store %struct.atl1_buffer* %28, %struct.atl1_buffer** %5, align 8
  %29 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %22
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %42 = call i32 @pci_unmap_page(%struct.pci_dev* %34, i64 %37, i32 %40, i32 %41)
  %43 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %33, %22
  %46 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dev_kfree_skb(i32* %53)
  %55 = load %struct.atl1_buffer*, %struct.atl1_buffer** %5, align 8
  %56 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %16

61:                                               ; preds = %16
  %62 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %63 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = mul i64 24, %65
  store i64 %66, i64* %7, align 8
  %67 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %68 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %67, i32 0, i32 5
  %69 = load %struct.atl1_buffer*, %struct.atl1_buffer** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @memset(%struct.atl1_buffer* %69, i32 0, i64 %70)
  %72 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %73 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %72, i32 0, i32 4
  %74 = load %struct.atl1_buffer*, %struct.atl1_buffer** %73, align 8
  %75 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %76 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @memset(%struct.atl1_buffer* %74, i32 0, i64 %77)
  %79 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %80 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %3, align 8
  %82 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %81, i32 0, i32 2
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %4, align 8
  %85 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %4, align 8
  %87 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %86, i32 0, i32 0
  %88 = call i32 @atomic_set(i32* %87, i32 0)
  ret void
}

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @memset(%struct.atl1_buffer*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
