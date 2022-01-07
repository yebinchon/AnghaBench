; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { %struct.TYPE_2__, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32* }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_free_tx_resources(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %4 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %8 = call i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter* %7)
  %9 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @vfree(i32* %12)
  %14 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32* null, i32** %16, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32* %18, i32 %22, i32* %26, i32 %30)
  %32 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
