; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_free_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_free_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32*, i32, i32, %struct.TYPE_2__*, %struct.e1000_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_free_rx_resources(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %6 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %6, i32 0, i32 5
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %13 = call i32 @e1000_clean_rx_ring(%struct.e1000_ring* %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %35 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @vfree(%struct.TYPE_2__* %36)
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %38, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %43 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32* %41, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  ret void
}

declare dso_local i32 @e1000_clean_rx_ring(%struct.e1000_ring*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(%struct.TYPE_2__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
